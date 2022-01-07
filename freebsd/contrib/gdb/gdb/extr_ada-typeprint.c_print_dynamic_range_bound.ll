; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_dynamic_range_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_dynamic_range_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@print_dynamic_range_bound.name_buf = internal global i8* null, align 8
@print_dynamic_range_bound.name_buf_len = internal global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i8*, i32, i8*, %struct.ui_file*)* @print_dynamic_range_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dynamic_range_bound(%struct.type* %0, i8* %1, i32 %2, i8* %3, %struct.ui_file* %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ui_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.ui_file* %4, %struct.ui_file** %10, align 8
  %13 = load i8*, i8** @print_dynamic_range_bound.name_buf, align 8
  %14 = load i64, i64* @print_dynamic_range_bound.name_buf_len, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %16, %18
  %20 = add nsw i64 %19, 1
  %21 = call i32 @GROW_VECT(i8* %13, i64 %14, i64 %20)
  %22 = load i8*, i8** @print_dynamic_range_bound.name_buf, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @strncpy(i8* %22, i8* %23, i32 %24)
  %26 = load i8*, i8** @print_dynamic_range_bound.name_buf, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strcpy(i8* %29, i8* %30)
  %32 = load i8*, i8** @print_dynamic_range_bound.name_buf, align 8
  %33 = call i32 @get_int_var_value(i8* %32, i32 0, i32* %12)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %5
  %37 = load %struct.type*, %struct.type** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %40 = call i32 @ada_print_scalar(%struct.type* %37, i32 %38, %struct.ui_file* %39)
  br label %44

41:                                               ; preds = %5
  %42 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %43 = call i32 @fprintf_filtered(%struct.ui_file* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @GROW_VECT(i8*, i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @get_int_var_value(i8*, i32, i32*) #1

declare dso_local i32 @ada_print_scalar(%struct.type*, i32, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
