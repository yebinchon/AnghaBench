; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_wait_for_tasks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_wait_for_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i64, i32, i32, i32, %struct.task_desc**, i32, i32, i32 }
%struct.task_desc = type { i64, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*)* @wait_for_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_tasks(%struct.perf_sched* %0) #0 {
  %2 = alloca %struct.perf_sched*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %2, align 8
  %8 = call i32 (...) @get_nsecs()
  %9 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %10 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 8
  %11 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %12 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %14 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %13, i32 0, i32 7
  %15 = call i32 @pthread_mutex_unlock(i32* %14)
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %37, %1
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %19 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %24 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %23, i32 0, i32 5
  %25 = load %struct.task_desc**, %struct.task_desc*** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %25, i64 %26
  %28 = load %struct.task_desc*, %struct.task_desc** %27, align 8
  store %struct.task_desc* %28, %struct.task_desc** %5, align 8
  %29 = load %struct.task_desc*, %struct.task_desc** %5, align 8
  %30 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %29, i32 0, i32 4
  %31 = call i64 @sem_wait(i32* %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @BUG_ON(i64 %32)
  %34 = load %struct.task_desc*, %struct.task_desc** %5, align 8
  %35 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %34, i32 0, i32 4
  %36 = call i32 @sem_init(i32* %35, i32 0, i32 0)
  br label %37

37:                                               ; preds = %22
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %42 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %41, i32 0, i32 7
  %43 = call i64 @pthread_mutex_lock(i32* %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @BUG_ON(i64 %44)
  %46 = call i32 (...) @get_cpu_usage_nsec_parent()
  store i32 %46, i32* %3, align 4
  %47 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %48 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %47, i32 0, i32 6
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %82, %40
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %53 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %50
  %57 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %58 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %57, i32 0, i32 5
  %59 = load %struct.task_desc**, %struct.task_desc*** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %59, i64 %60
  %62 = load %struct.task_desc*, %struct.task_desc** %61, align 8
  store %struct.task_desc* %62, %struct.task_desc** %5, align 8
  %63 = load %struct.task_desc*, %struct.task_desc** %5, align 8
  %64 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %63, i32 0, i32 3
  %65 = call i64 @sem_wait(i32* %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @BUG_ON(i64 %66)
  %68 = load %struct.task_desc*, %struct.task_desc** %5, align 8
  %69 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %68, i32 0, i32 3
  %70 = call i32 @sem_init(i32* %69, i32 0, i32 0)
  %71 = load %struct.task_desc*, %struct.task_desc** %5, align 8
  %72 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %75 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.task_desc*, %struct.task_desc** %5, align 8
  %81 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %56
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %50

85:                                               ; preds = %50
  %86 = call i32 (...) @get_cpu_usage_nsec_parent()
  store i32 %86, i32* %4, align 4
  %87 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %88 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %93 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %96 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %99 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %100, 9
  %102 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %103 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %101, %104
  %106 = sdiv i32 %105, 10
  %107 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %108 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %3, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %113 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %115 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %97
  %119 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %120 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %123 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %118, %97
  %125 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %126 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %127, 9
  %129 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %130 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %128, %131
  %133 = sdiv i32 %132, 10
  %134 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %135 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %137 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %136, i32 0, i32 6
  %138 = call i64 @pthread_mutex_lock(i32* %137)
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @BUG_ON(i64 %139)
  store i64 0, i64* %6, align 8
  br label %141

141:                                              ; preds = %159, %124
  %142 = load i64, i64* %6, align 8
  %143 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %144 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %149 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %148, i32 0, i32 5
  %150 = load %struct.task_desc**, %struct.task_desc*** %149, align 8
  %151 = load i64, i64* %6, align 8
  %152 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %150, i64 %151
  %153 = load %struct.task_desc*, %struct.task_desc** %152, align 8
  store %struct.task_desc* %153, %struct.task_desc** %5, align 8
  %154 = load %struct.task_desc*, %struct.task_desc** %5, align 8
  %155 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %154, i32 0, i32 1
  %156 = call i32 @sem_init(i32* %155, i32 0, i32 0)
  %157 = load %struct.task_desc*, %struct.task_desc** %5, align 8
  %158 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %147
  %160 = load i64, i64* %6, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %6, align 8
  br label %141

162:                                              ; preds = %141
  ret void
}

declare dso_local i32 @get_nsecs(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @sem_wait(i32*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @get_cpu_usage_nsec_parent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
