; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_record_field_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_record_field_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@TYPE_FLAG_STUB = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, %struct.type*, %struct.ui_file*, i32, i32)* @print_record_field_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_record_field_types(%struct.type* %0, %struct.type* %1, %struct.ui_file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.ui_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %7, align 8
  store %struct.type* %1, %struct.type** %8, align 8
  store %struct.ui_file* %2, %struct.ui_file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.type*, %struct.type** %7, align 8
  %16 = call i32 @TYPE_NFIELDS(%struct.type* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.type*, %struct.type** %7, align 8
  %21 = call i32 @TYPE_FLAGS(%struct.type* %20)
  %22 = load i32, i32* @TYPE_FLAG_STUB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %101

26:                                               ; preds = %19, %5
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %96, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %99

31:                                               ; preds = %27
  %32 = load i32, i32* @QUIT, align 4
  %33 = load %struct.type*, %struct.type** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @ada_is_parent_field(%struct.type* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.type*, %struct.type** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @ada_is_ignored_field(%struct.type* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %31
  br label %95

43:                                               ; preds = %37
  %44 = load %struct.type*, %struct.type** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @ada_is_wrapper_field(%struct.type* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.type*, %struct.type** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %49, i32 %50)
  %52 = load %struct.type*, %struct.type** %7, align 8
  %53 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @print_record_field_types(%struct.type* %51, %struct.type* %52, %struct.ui_file* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %14, align 4
  br label %94

59:                                               ; preds = %43
  %60 = load %struct.type*, %struct.type** %7, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i64 @ada_is_variant_part(%struct.type* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.type*, %struct.type** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.type*, %struct.type** %8, align 8
  %68 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @print_variant_part(%struct.type* %65, i32 %66, %struct.type* %67, %struct.ui_file* %68, i32 %69, i32 %70)
  store i32 1, i32* %14, align 4
  br label %93

72:                                               ; preds = %59
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  %75 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 4
  %78 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.type*, %struct.type** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %79, i32 %80)
  %82 = load %struct.type*, %struct.type** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @TYPE_FIELD_NAME(%struct.type* %82, i32 %83)
  %85 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 4
  %90 = call i32 @ada_print_type(%struct.type* %81, i32 %84, %struct.ui_file* %85, i32 %87, i32 %89)
  %91 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %92 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %72, %64
  br label %94

94:                                               ; preds = %93, %48
  br label %95

95:                                               ; preds = %94, %42
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %27

99:                                               ; preds = %27
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %25
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_FLAGS(%struct.type*) #1

declare dso_local i64 @ada_is_parent_field(%struct.type*, i32) #1

declare dso_local i64 @ada_is_ignored_field(%struct.type*, i32) #1

declare dso_local i64 @ada_is_wrapper_field(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @ada_is_variant_part(%struct.type*, i32) #1

declare dso_local i32 @print_variant_part(%struct.type*, i32, %struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @ada_print_type(%struct.type*, i32, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
