; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_start_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_start_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.reada_machine_work = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@reada_start_machine_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*)* @reada_start_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reada_start_machine(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.reada_machine_work*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %4 = load i32, i32* @GFP_NOFS, align 4
  %5 = call %struct.reada_machine_work* @kzalloc(i32 16, i32 %4)
  store %struct.reada_machine_work* %5, %struct.reada_machine_work** %3, align 8
  %6 = load %struct.reada_machine_work*, %struct.reada_machine_work** %3, align 8
  %7 = icmp ne %struct.reada_machine_work* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (...) @BUG()
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* @reada_start_machine_worker, align 4
  %12 = load %struct.reada_machine_work*, %struct.reada_machine_work** %3, align 8
  %13 = getelementptr inbounds %struct.reada_machine_work, %struct.reada_machine_work* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %16 = load %struct.reada_machine_work*, %struct.reada_machine_work** %3, align 8
  %17 = getelementptr inbounds %struct.reada_machine_work, %struct.reada_machine_work* %16, i32 0, i32 1
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %17, align 8
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = load %struct.reada_machine_work*, %struct.reada_machine_work** %3, align 8
  %21 = getelementptr inbounds %struct.reada_machine_work, %struct.reada_machine_work* %20, i32 0, i32 0
  %22 = call i32 @btrfs_queue_worker(i32* %19, %struct.TYPE_2__* %21)
  ret void
}

declare dso_local %struct.reada_machine_work* @kzalloc(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @btrfs_queue_worker(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
