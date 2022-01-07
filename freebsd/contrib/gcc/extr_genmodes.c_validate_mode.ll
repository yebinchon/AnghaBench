; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genmodes.c_validate_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genmodes.c_validate_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_data = type { i32 }

@precision = common dso_local global i32 0, align 4
@bytesize = common dso_local global i32 0, align 4
@component = common dso_local global i32 0, align 4
@ncomponents = common dso_local global i32 0, align 4
@format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mode_data*, i32, i32, i32, i32, i32)* @validate_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_mode(%struct.mode_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mode_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mode_data* %0, %struct.mode_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %14 = load i32, i32* @precision, align 4
  %15 = call i32 @validate_field(%struct.mode_data* %13, i32 %14)
  %16 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %17 = load i32, i32* @bytesize, align 4
  %18 = call i32 @validate_field(%struct.mode_data* %16, i32 %17)
  %19 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %20 = load i32, i32* @component, align 4
  %21 = call i32 @validate_field(%struct.mode_data* %19, i32 %20)
  %22 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %23 = load i32, i32* @ncomponents, align 4
  %24 = call i32 @validate_field(%struct.mode_data* %22, i32 %23)
  %25 = load %struct.mode_data*, %struct.mode_data** %7, align 8
  %26 = load i32, i32* @format, align 4
  %27 = call i32 @validate_field(%struct.mode_data* %25, i32 %26)
  ret void
}

declare dso_local i32 @validate_field(%struct.mode_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
