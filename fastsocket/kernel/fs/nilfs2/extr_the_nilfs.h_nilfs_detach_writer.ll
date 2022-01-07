; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.h_nilfs_detach_writer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.h_nilfs_detach_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, %struct.nilfs_sb_info* }
%struct.nilfs_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.the_nilfs*, %struct.nilfs_sb_info*)* @nilfs_detach_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_detach_writer(%struct.the_nilfs* %0, %struct.nilfs_sb_info* %1) #0 {
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.nilfs_sb_info*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %3, align 8
  store %struct.nilfs_sb_info* %1, %struct.nilfs_sb_info** %4, align 8
  %5 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %6 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %5, i32 0, i32 0
  %7 = call i32 @down_write(i32* %6)
  %8 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %4, align 8
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %10 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %9, i32 0, i32 1
  %11 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %10, align 8
  %12 = icmp eq %struct.nilfs_sb_info* %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %15 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %14, i32 0, i32 1
  store %struct.nilfs_sb_info* null, %struct.nilfs_sb_info** %15, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 0
  %19 = call i32 @up_write(i32* %18)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
