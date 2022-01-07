; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_get_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timevar_time_def = type { i32, i8*, i8*, i32 }

@timevar_ggc_mem_total = common dso_local global i32 0, align 4
@timevar_enable = common dso_local global i32 0, align 4
@RUSAGE_SELF = common dso_local global i32 0, align 4
@clocks_to_msec = common dso_local global i32 0, align 4
@ticks_to_msec = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timevar_time_def*)* @get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_time(%struct.timevar_time_def* %0) #0 {
  %2 = alloca %struct.timevar_time_def*, align 8
  store %struct.timevar_time_def* %0, %struct.timevar_time_def** %2, align 8
  %3 = load %struct.timevar_time_def*, %struct.timevar_time_def** %2, align 8
  %4 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.timevar_time_def*, %struct.timevar_time_def** %2, align 8
  %6 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %5, i32 0, i32 1
  store i8* null, i8** %6, align 8
  %7 = load %struct.timevar_time_def*, %struct.timevar_time_def** %2, align 8
  %8 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %7, i32 0, i32 2
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* @timevar_ggc_mem_total, align 4
  %10 = load %struct.timevar_time_def*, %struct.timevar_time_def** %2, align 8
  %11 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @timevar_enable, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
