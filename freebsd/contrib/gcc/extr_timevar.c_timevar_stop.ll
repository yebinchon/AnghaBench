; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_timevar_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_timevar_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timevar_def = type { i32, i32, i32 }
%struct.timevar_time_def = type { i32 }

@timevars = common dso_local global %struct.timevar_def* null, align 8
@timevar_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timevar_stop(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timevar_def*, align 8
  %4 = alloca %struct.timevar_time_def, align 4
  store i64 %0, i64* %2, align 8
  %5 = load %struct.timevar_def*, %struct.timevar_def** @timevars, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %5, i64 %6
  store %struct.timevar_def* %7, %struct.timevar_def** %3, align 8
  %8 = load i32, i32* @timevar_enable, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.timevar_def*, %struct.timevar_def** %3, align 8
  %13 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = call i32 @get_time(%struct.timevar_time_def* %4)
  %17 = load %struct.timevar_def*, %struct.timevar_def** %3, align 8
  %18 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %17, i32 0, i32 1
  %19 = load %struct.timevar_def*, %struct.timevar_def** %3, align 8
  %20 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %19, i32 0, i32 0
  %21 = call i32 @timevar_accumulate(i32* %18, i32* %20, %struct.timevar_time_def* %4)
  br label %22

22:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @get_time(%struct.timevar_time_def*) #1

declare dso_local i32 @timevar_accumulate(i32*, i32*, %struct.timevar_time_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
