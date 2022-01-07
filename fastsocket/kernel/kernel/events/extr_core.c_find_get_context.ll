; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_find_get_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_find_get_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i32, i32 }
%struct.pmu = type { i32, i32 }
%struct.task_struct = type { i32, i32, i64* }
%struct.perf_cpu_context = type { %struct.perf_event_context }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event_context* (%struct.pmu*, %struct.task_struct*, i32)* @find_get_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event_context* @find_get_context(%struct.pmu* %0, %struct.task_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.pmu*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event_context*, align 8
  %9 = alloca %struct.perf_cpu_context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = icmp ne %struct.task_struct* %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %3
  %16 = call i64 (...) @perf_paranoid_cpu()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.perf_event_context* @ERR_PTR(i32 %24)
  store %struct.perf_event_context* %25, %struct.perf_event_context** %4, align 8
  br label %149

26:                                               ; preds = %18, %15
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @cpu_online(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.perf_event_context* @ERR_PTR(i32 %32)
  store %struct.perf_event_context* %33, %struct.perf_event_context** %4, align 8
  br label %149

34:                                               ; preds = %26
  %35 = load %struct.pmu*, %struct.pmu** %5, align 8
  %36 = getelementptr inbounds %struct.pmu, %struct.pmu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.perf_cpu_context* @per_cpu_ptr(i32 %37, i32 %38)
  store %struct.perf_cpu_context* %39, %struct.perf_cpu_context** %9, align 8
  %40 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %9, align 8
  %41 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %40, i32 0, i32 0
  store %struct.perf_event_context* %41, %struct.perf_event_context** %8, align 8
  %42 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %43 = call i32 @get_ctx(%struct.perf_event_context* %42)
  %44 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %45 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  store %struct.perf_event_context* %48, %struct.perf_event_context** %4, align 8
  br label %149

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.pmu*, %struct.pmu** %5, align 8
  %53 = getelementptr inbounds %struct.pmu, %struct.pmu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %146

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %141, %58
  %60 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.perf_event_context* @perf_lock_task_context(%struct.task_struct* %60, i32 %61, i64* %10)
  store %struct.perf_event_context* %62, %struct.perf_event_context** %8, align 8
  %63 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %64 = icmp ne %struct.perf_event_context* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %67 = call i32 @unclone_ctx(%struct.perf_event_context* %66)
  %68 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %69 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %73 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %72, i32 0, i32 1
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %144

76:                                               ; preds = %59
  %77 = load %struct.pmu*, %struct.pmu** %5, align 8
  %78 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %79 = call %struct.perf_event_context* @alloc_perf_context(%struct.pmu* %77, %struct.task_struct* %78)
  store %struct.perf_event_context* %79, %struct.perf_event_context** %8, align 8
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  %82 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %83 = icmp ne %struct.perf_event_context* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  br label %146

85:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  %86 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 1
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PF_EXITING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @ESRCH, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %12, align 4
  br label %127

98:                                               ; preds = %85
  %99 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %100 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %126

110:                                              ; preds = %98
  %111 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %112 = call i32 @get_ctx(%struct.perf_event_context* %111)
  %113 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %114 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %118 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %117, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %125 = call i32 @rcu_assign_pointer(i64 %123, %struct.perf_event_context* %124)
  br label %126

126:                                              ; preds = %110, %107
  br label %127

127:                                              ; preds = %126, %95
  %128 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %129 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %128, i32 0, i32 1
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  %136 = call i32 @put_ctx(%struct.perf_event_context* %135)
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @EAGAIN, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %59

142:                                              ; preds = %134
  br label %146

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %65
  %145 = load %struct.perf_event_context*, %struct.perf_event_context** %8, align 8
  store %struct.perf_event_context* %145, %struct.perf_event_context** %4, align 8
  br label %149

146:                                              ; preds = %142, %84, %57
  %147 = load i32, i32* %12, align 4
  %148 = call %struct.perf_event_context* @ERR_PTR(i32 %147)
  store %struct.perf_event_context* %148, %struct.perf_event_context** %4, align 8
  br label %149

149:                                              ; preds = %146, %144, %34, %30, %22
  %150 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  ret %struct.perf_event_context* %150
}

declare dso_local i64 @perf_paranoid_cpu(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.perf_event_context* @ERR_PTR(i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local %struct.perf_cpu_context* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @get_ctx(%struct.perf_event_context*) #1

declare dso_local %struct.perf_event_context* @perf_lock_task_context(%struct.task_struct*, i32, i64*) #1

declare dso_local i32 @unclone_ctx(%struct.perf_event_context*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.perf_event_context* @alloc_perf_context(%struct.pmu*, %struct.task_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.perf_event_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @put_ctx(%struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
