; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_check_cpu_itimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_check_cpu_itimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cpu_itimer = type { i64, i64, i32, i32 }

@cputime_zero = common dso_local global i32 0, align 4
@onecputick = common dso_local global i64 0, align 8
@cputime_one_jiffy = common dso_local global i32 0, align 4
@SIGPROF = common dso_local global i32 0, align 4
@ITIMER_PROF = common dso_local global i32 0, align 4
@ITIMER_VIRTUAL = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.cpu_itimer*, i32*, i32, i32)* @check_cpu_itimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cpu_itimer(%struct.task_struct* %0, %struct.cpu_itimer* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.cpu_itimer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.cpu_itimer* %1, %struct.cpu_itimer** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %12 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @cputime_zero, align 4
  %15 = call i64 @cputime_eq(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %119

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %21 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @cputime_ge(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %93

25:                                               ; preds = %18
  %26 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %27 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @cputime_zero, align 4
  %30 = call i64 @cputime_eq(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %25
  %33 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %34 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %37 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cputime_add(i32 %35, i32 %38)
  %40 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %41 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %43 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %46 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %50 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @onecputick, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %32
  %55 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %56 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @cputime_one_jiffy, align 4
  %59 = call i32 @cputime_sub(i32 %57, i32 %58)
  %60 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %61 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* @onecputick, align 8
  %63 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %64 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %54, %32
  br label %72

68:                                               ; preds = %25
  %69 = load i32, i32* @cputime_zero, align 4
  %70 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %71 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SIGPROF, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @ITIMER_PROF, align 4
  br label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @ITIMER_VIRTUAL, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %83 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @trace_itimer_expire(i32 %81, i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @SEND_SIG_PRIV, align 4
  %91 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %92 = call i32 @__group_send_sig_info(i32 %89, i32 %90, %struct.task_struct* %91)
  br label %93

93:                                               ; preds = %80, %18
  %94 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %95 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @cputime_zero, align 4
  %98 = call i64 @cputime_eq(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %93
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @cputime_zero, align 4
  %104 = call i64 @cputime_eq(i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %100
  %107 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %108 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @cputime_lt(i32 %109, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106, %100
  %115 = load %struct.cpu_itimer*, %struct.cpu_itimer** %7, align 8
  %116 = getelementptr inbounds %struct.cpu_itimer, %struct.cpu_itimer* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %17, %114, %106, %93
  ret void
}

declare dso_local i64 @cputime_eq(i32, i32) #1

declare dso_local i64 @cputime_ge(i32, i32) #1

declare dso_local i32 @cputime_add(i32, i32) #1

declare dso_local i32 @cputime_sub(i32, i32) #1

declare dso_local i32 @trace_itimer_expire(i32, i32, i32) #1

declare dso_local i32 @__group_send_sig_info(i32, i32, %struct.task_struct*) #1

declare dso_local i64 @cputime_lt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
