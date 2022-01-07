; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_timevar_accumulate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_timevar.c_timevar_accumulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timevar_time_def = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timevar_time_def*, %struct.timevar_time_def*, %struct.timevar_time_def*)* @timevar_accumulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timevar_accumulate(%struct.timevar_time_def* %0, %struct.timevar_time_def* %1, %struct.timevar_time_def* %2) #0 {
  %4 = alloca %struct.timevar_time_def*, align 8
  %5 = alloca %struct.timevar_time_def*, align 8
  %6 = alloca %struct.timevar_time_def*, align 8
  store %struct.timevar_time_def* %0, %struct.timevar_time_def** %4, align 8
  store %struct.timevar_time_def* %1, %struct.timevar_time_def** %5, align 8
  store %struct.timevar_time_def* %2, %struct.timevar_time_def** %6, align 8
  %7 = load %struct.timevar_time_def*, %struct.timevar_time_def** %6, align 8
  %8 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.timevar_time_def*, %struct.timevar_time_def** %5, align 8
  %11 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.timevar_time_def*, %struct.timevar_time_def** %4, align 8
  %15 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.timevar_time_def*, %struct.timevar_time_def** %6, align 8
  %19 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.timevar_time_def*, %struct.timevar_time_def** %5, align 8
  %22 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load %struct.timevar_time_def*, %struct.timevar_time_def** %4, align 8
  %26 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.timevar_time_def*, %struct.timevar_time_def** %6, align 8
  %30 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.timevar_time_def*, %struct.timevar_time_def** %5, align 8
  %33 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load %struct.timevar_time_def*, %struct.timevar_time_def** %4, align 8
  %37 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.timevar_time_def*, %struct.timevar_time_def** %6, align 8
  %41 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.timevar_time_def*, %struct.timevar_time_def** %5, align 8
  %44 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load %struct.timevar_time_def*, %struct.timevar_time_def** %4, align 8
  %48 = getelementptr inbounds %struct.timevar_time_def, %struct.timevar_time_def* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
