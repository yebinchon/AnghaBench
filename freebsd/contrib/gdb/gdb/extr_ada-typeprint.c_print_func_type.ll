; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_func_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_func_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@TYPE_CODE_VOID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"a%d: \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" return \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*, i8*)* @print_func_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_func_type(%struct.type* %0, %struct.ui_file* %1, i8* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i32 @TYPE_NFIELDS(%struct.type* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = call i32 @TYPE_TARGET_TYPE(%struct.type* %11)
  %13 = call i64 @TYPE_CODE(i32 %12)
  %14 = load i64, i64* @TYPE_CODE_VOID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %18 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %21 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %25, %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %40 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %62, %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %50 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %49)
  %51 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %55)
  %57 = load %struct.type*, %struct.type** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @TYPE_FIELD_TYPE(%struct.type* %57, i32 %58)
  %60 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %61 = call i32 @ada_print_type(i32 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %60, i32 -1, i32 0)
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %67 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %35
  %69 = load %struct.type*, %struct.type** %4, align 8
  %70 = call i32 @TYPE_TARGET_TYPE(%struct.type* %69)
  %71 = call i64 @TYPE_CODE(i32 %70)
  %72 = load i64, i64* @TYPE_CODE_VOID, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %76 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %77 = load %struct.type*, %struct.type** %4, align 8
  %78 = call i32 @TYPE_TARGET_TYPE(%struct.type* %77)
  %79 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %80 = call i32 @ada_print_type(i32 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %79, i32 0, i32 0)
  br label %81

81:                                               ; preds = %74, %68
  ret void
}

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @ada_print_type(i32, i8*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
