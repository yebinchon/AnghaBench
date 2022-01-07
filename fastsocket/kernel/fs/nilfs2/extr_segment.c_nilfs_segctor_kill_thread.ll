; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_kill_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_kill_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32*, i32, i32, i32 }

@NILFS_SEGCTOR_QUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*)* @nilfs_segctor_kill_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_kill_thread(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  %3 = load i32, i32* @NILFS_SEGCTOR_QUIT, align 4
  %4 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %5 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %10 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %15 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %14, i32 0, i32 3
  %16 = call i32 @wake_up(i32* %15)
  %17 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %18 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %21 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %24 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @wait_event(i32 %22, i32 %27)
  %29 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %30 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  br label %8

32:                                               ; preds = %8
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
