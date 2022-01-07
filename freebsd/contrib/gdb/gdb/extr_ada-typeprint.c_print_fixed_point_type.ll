; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_fixed_point_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_fixed_point_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"delta ??\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"delta %g\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" <'small = %g>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*)* @print_fixed_point_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_fixed_point_type(%struct.type* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = call double @ada_delta(%struct.type* %7)
  store double %8, double* %5, align 8
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = call double @ada_fixed_to_float(%struct.type* %9, double 1.000000e+00)
  store double %10, double* %6, align 8
  %11 = load double, double* %5, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %15 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %18 = load double, double* %5, align 8
  %19 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %18)
  %20 = load double, double* %5, align 8
  %21 = load double, double* %6, align 8
  %22 = fcmp une double %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %25 = load double, double* %6, align 8
  %26 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %25)
  br label %27

27:                                               ; preds = %23, %16
  br label %28

28:                                               ; preds = %27, %13
  ret void
}

declare dso_local double @ada_delta(%struct.type*) #1

declare dso_local double @ada_fixed_to_float(%struct.type*, double) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
