; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmconvert.c_dlmconvert_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmconvert.c_dlmconvert_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32, i32, i32 }
%struct.dlm_lock = type { i32 }

@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_NOTQUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlmconvert_master(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca %struct.dlm_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %15 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %18 = call i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource* %17)
  %19 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %20 = call i32 @__dlm_lockres_reserve_ast(%struct.dlm_lock_resource* %19)
  %21 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %28 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @__dlmconvert_master(%struct.dlm_ctxt* %26, %struct.dlm_lock_resource* %27, %struct.dlm_lock* %28, i32 %29, i32 %30, i32* %11, i32* %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %35 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %42 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %41, i32 0, i32 0
  %43 = call i32 @wake_up(i32* %42)
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @DLM_NORMAL, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %5
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @DLM_NOTQUEUED, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dlm_error(i32 %52)
  br label %54

54:                                               ; preds = %51, %47, %5
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %59 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %60 = call i32 @dlm_queue_ast(%struct.dlm_ctxt* %58, %struct.dlm_lock* %59)
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %63 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %64 = call i32 @dlm_lockres_release_ast(%struct.dlm_ctxt* %62, %struct.dlm_lock_resource* %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %70 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %71 = call i32 @dlm_kick_thread(%struct.dlm_ctxt* %69, %struct.dlm_lock_resource* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %13, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource*) #1

declare dso_local i32 @__dlm_lockres_reserve_ast(%struct.dlm_lock_resource*) #1

declare dso_local i32 @__dlmconvert_master(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32, i32, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i32 @dlm_queue_ast(%struct.dlm_ctxt*, %struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_release_ast(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_kick_thread(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
