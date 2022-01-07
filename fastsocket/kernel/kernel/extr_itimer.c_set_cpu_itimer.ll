; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_set_cpu_itimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_set_cpu_itimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.cpu_itimer* }
%struct.cpu_itimer = type { i8*, i8*, i8*, i8* }
%struct.itimerval = type { i32, i32 }

@cputime_zero = common dso_local global i32 0, align 4
@cputime_one_jiffy = common dso_local global i32 0, align 4
@CPUCLOCK_VIRT = common dso_local global i32 0, align 4
@ITIMER_VIRTUAL = common dso_local global i32 0, align 4
@ITIMER_PROF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.itimerval*, %struct.itimerval*)* @set_cpu_itimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpu_itimer(%struct.task_struct* %0, i32 %1, %struct.itimerval* %2, %struct.itimerval* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.itimerval*, align 8
  %8 = alloca %struct.itimerval*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cpu_itimer*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.itimerval* %2, %struct.itimerval** %7, align 8
  store %struct.itimerval* %3, %struct.itimerval** %8, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.cpu_itimer*, %struct.cpu_itimer** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %20, i64 %22
  store %struct.cpu_itimer* %23, %struct.cpu_itimer** %15, align 8
  %24 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %25 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %24, i32 0, i32 1
  %26 = call i8* @timeval_to_cputime(i32* %25)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %28 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %27, i32 0, i32 1
  %29 = call i32 @timeval_to_ns(i32* %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %31 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %30, i32 0, i32 0
  %32 = call i8* @timeval_to_cputime(i32* %31)
  store i8* %32, i8** %12, align 8
  %33 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %34 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %33, i32 0, i32 0
  %35 = call i32 @timeval_to_ns(i32* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i8* @cputime_sub_ns(i8* %36, i32 %37)
  %39 = load %struct.cpu_itimer*, %struct.cpu_itimer** %15, align 8
  %40 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i8* @cputime_sub_ns(i8* %41, i32 %42)
  %44 = load %struct.cpu_itimer*, %struct.cpu_itimer** %15, align 8
  %45 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.cpu_itimer*, %struct.cpu_itimer** %15, align 8
  %52 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %9, align 8
  %54 = load %struct.cpu_itimer*, %struct.cpu_itimer** %15, align 8
  %55 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* @cputime_zero, align 4
  %59 = call i32 @cputime_eq(i8* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %4
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @cputime_zero, align 4
  %64 = call i32 @cputime_eq(i8* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %61, %4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @cputime_zero, align 4
  %69 = call i64 @cputime_gt(i8* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* @cputime_one_jiffy, align 4
  %74 = call i8* @cputime_add(i8* %72, i32 %73)
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @set_process_cpu_timer(%struct.task_struct* %76, i32 %77, i8** %10, i8** %9)
  br label %79

79:                                               ; preds = %75, %61
  %80 = load i8*, i8** %10, align 8
  %81 = load %struct.cpu_itimer*, %struct.cpu_itimer** %15, align 8
  %82 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load %struct.cpu_itimer*, %struct.cpu_itimer** %15, align 8
  %85 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @CPUCLOCK_VIRT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @ITIMER_VIRTUAL, align 4
  br label %93

91:                                               ; preds = %79
  %92 = load i32, i32* @ITIMER_PROF, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.itimerval*, %struct.itimerval** %7, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @trace_itimer_state(i32 %94, %struct.itimerval* %95, i8* %96)
  %98 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %99 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_irq(i32* %101)
  %103 = load %struct.itimerval*, %struct.itimerval** %8, align 8
  %104 = icmp ne %struct.itimerval* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %93
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.itimerval*, %struct.itimerval** %8, align 8
  %108 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %107, i32 0, i32 1
  %109 = call i32 @cputime_to_timeval(i8* %106, i32* %108)
  %110 = load i8*, i8** %11, align 8
  %111 = load %struct.itimerval*, %struct.itimerval** %8, align 8
  %112 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %111, i32 0, i32 0
  %113 = call i32 @cputime_to_timeval(i8* %110, i32* %112)
  br label %114

114:                                              ; preds = %105, %93
  ret void
}

declare dso_local i8* @timeval_to_cputime(i32*) #1

declare dso_local i32 @timeval_to_ns(i32*) #1

declare dso_local i8* @cputime_sub_ns(i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cputime_eq(i8*, i32) #1

declare dso_local i64 @cputime_gt(i8*, i32) #1

declare dso_local i8* @cputime_add(i8*, i32) #1

declare dso_local i32 @set_process_cpu_timer(%struct.task_struct*, i32, i8**, i8**) #1

declare dso_local i32 @trace_itimer_state(i32, %struct.itimerval*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cputime_to_timeval(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
