; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_vax_float_print_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_vax_float_print_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"DEBUG_STRING_F\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"DEBUG_STRING_D\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DEBUG_STRING_G\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid VAX floating-point type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_vax_float_print_function(%struct.type* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %4 = load %struct.type*, %struct.type** %3, align 8
  %5 = call i32 @ada_vax_float_type_suffix(%struct.type* %4)
  switch i32 %5, label %12 [
    i32 70, label %6
    i32 68, label %8
    i32 71, label %10
  ]

6:                                                ; preds = %1
  %7 = call %struct.value* @get_var_value(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.value* %7, %struct.value** %2, align 8
  br label %14

8:                                                ; preds = %1
  %9 = call %struct.value* @get_var_value(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.value* %9, %struct.value** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = call %struct.value* @get_var_value(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.value* %11, %struct.value** %2, align 8
  br label %14

12:                                               ; preds = %1
  %13 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %14

14:                                               ; preds = %6, %8, %10, %12
  %15 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %15
}

declare dso_local i32 @ada_vax_float_type_suffix(%struct.type*) #1

declare dso_local %struct.value* @get_var_value(i8*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
