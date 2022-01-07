; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_timevar_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_timevar_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timevar_def = type { i32, i32, i32 }

@timevars = common dso_local global %struct.timevar_def* null, align 8
@timevar_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timevar_start(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timevar_def*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.timevar_def*, %struct.timevar_def** @timevars, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %4, i64 %5
  store %struct.timevar_def* %6, %struct.timevar_def** %3, align 8
  %7 = load i32, i32* @timevar_enable, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.timevar_def*, %struct.timevar_def** %3, align 8
  %12 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.timevar_def*, %struct.timevar_def** %3, align 8
  %14 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load %struct.timevar_def*, %struct.timevar_def** %3, align 8
  %21 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.timevar_def*, %struct.timevar_def** %3, align 8
  %23 = getelementptr inbounds %struct.timevar_def, %struct.timevar_def* %22, i32 0, i32 2
  %24 = call i32 @get_time(i32* %23)
  br label %25

25:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @get_time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
