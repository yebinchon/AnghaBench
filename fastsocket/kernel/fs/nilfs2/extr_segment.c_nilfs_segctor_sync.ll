; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, i32, i64 }
%struct.nilfs_segctor_wait_request = type { i32, i32, i32, i64 }

@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sc_info*)* @nilfs_segctor_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_sync(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  %3 = alloca %struct.nilfs_segctor_wait_request, align 8
  %4 = alloca i32, align 4
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %6 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 1
  %9 = call i32 @init_wait(i32* %8)
  %10 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 2
  %12 = call i32 @atomic_set(i32* %11, i32 0)
  %13 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %14 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 3
  store i64 %16, i64* %17, align 8
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %19 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %18, i32 0, i32 2
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 1
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @init_waitqueue_entry(i32* %21, i32 %22)
  %24 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %25 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 1
  %27 = call i32 @add_wait_queue(i32* %25, i32* %26)
  %28 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %29 = call i32 @set_current_state(i32 %28)
  %30 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %31 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %30, i32 0, i32 1
  %32 = call i32 @wake_up(i32* %31)
  br label %33

33:                                               ; preds = %44, %1
  %34 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 2
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @current, align 4
  %42 = call i32 @signal_pending(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (...) @schedule()
  br label %33

46:                                               ; preds = %40
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %37
  %50 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %51 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.nilfs_segctor_wait_request, %struct.nilfs_segctor_wait_request* %3, i32 0, i32 1
  %53 = call i32 @finish_wait(i32* %51, i32* %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @init_wait(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
