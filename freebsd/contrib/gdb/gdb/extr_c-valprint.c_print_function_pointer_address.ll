; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-valprint.c_print_function_pointer_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-valprint.c_print_function_pointer_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@current_target = common dso_local global i32 0, align 4
@addressprint = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@demangle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.ui_file*)* @print_function_pointer_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_function_pointer_address(i64 %0, %struct.ui_file* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %6 = load i32, i32* @current_gdbarch, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @gdbarch_convert_from_func_ptr_addr(i32 %6, i64 %7, i32* @current_target)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* @addressprint, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %17 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %16)
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %20 = call i32 @print_address_numeric(i64 %18, i32 1, %struct.ui_file* %19)
  %21 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %22 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %21)
  br label %23

23:                                               ; preds = %15, %11, %2
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %26 = load i32, i32* @demangle, align 4
  %27 = call i32 @print_address_demangle(i64 %24, %struct.ui_file* %25, i32 %26)
  ret void
}

declare dso_local i64 @gdbarch_convert_from_func_ptr_addr(i32, i64, i32*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @print_address_numeric(i64, i32, %struct.ui_file*) #1

declare dso_local i32 @print_address_demangle(i64, %struct.ui_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
