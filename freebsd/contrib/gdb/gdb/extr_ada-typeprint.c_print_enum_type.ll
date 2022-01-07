; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_enum_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_enum_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@QUIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" => %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*)* @print_enum_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_enum_type(%struct.type* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i32 @TYPE_NFIELDS(%struct.type* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %11 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @wrap_here(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %49, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load i32, i32* @QUIT, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %23 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %17
  %25 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.type*, %struct.type** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @TYPE_FIELD_NAME(%struct.type* %26, i32 %27)
  %29 = call i32 @ada_enum_name(i32 %28)
  %30 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %31 = call i32 @fputs_filtered(i32 %29, %struct.ui_file* %30)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.type*, %struct.type** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %33, i32 %34)
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %39 = load %struct.type*, %struct.type** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %39, i32 %40)
  %42 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load %struct.type*, %struct.type** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %37, %24
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %13

52:                                               ; preds = %13
  %53 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %54 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @fputs_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @ada_enum_name(i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
