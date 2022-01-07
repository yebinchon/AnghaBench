; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_type_print_varspec_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_type_print_varspec_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"type not handled in pascal_type_print_varspec_suffix()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*, i32, i32, i32)* @pascal_type_print_varspec_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pascal_type_print_varspec_suffix(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.ui_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store %struct.ui_file* %1, %struct.ui_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.type*, %struct.type** %6, align 8
  %12 = icmp eq %struct.type* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %115

14:                                               ; preds = %5
  %15 = load %struct.type*, %struct.type** %6, align 8
  %16 = call i64 @TYPE_NAME(%struct.type* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %115

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @QUIT, align 4
  %24 = load %struct.type*, %struct.type** %6, align 8
  %25 = call i32 @TYPE_CODE(%struct.type* %24)
  switch i32 %25, label %113 [
    i32 150, label %26
    i32 140, label %33
    i32 139, label %43
    i32 138, label %73
    i32 136, label %73
    i32 142, label %77
    i32 130, label %112
    i32 133, label %112
    i32 129, label %112
    i32 145, label %112
    i32 141, label %112
    i32 143, label %112
    i32 128, label %112
    i32 144, label %112
    i32 147, label %112
    i32 148, label %112
    i32 135, label %112
    i32 137, label %112
    i32 134, label %112
    i32 149, label %112
    i32 146, label %112
    i32 131, label %112
    i32 132, label %112
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %31 = call i32 @fprintf_filtered(%struct.ui_file* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  br label %115

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %38 = call i32 @fprintf_filtered(%struct.ui_file* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.type*, %struct.type** %6, align 8
  %41 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %40)
  %42 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  call void @pascal_type_print_varspec_suffix(%struct.type* %41, %struct.ui_file* %42, i32 0, i32 0, i32 0)
  br label %115

43:                                               ; preds = %22
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %48 = call i32 @fprintf_filtered(%struct.ui_file* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %51 = call i32 @pascal_type_print_method_args(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %50)
  %52 = load %struct.type*, %struct.type** %6, align 8
  %53 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %52)
  %54 = call i32 @TYPE_CODE(%struct.type* %53)
  %55 = icmp ne i32 %54, 128
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %58 = call i32 @fprintf_filtered(%struct.ui_file* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.type*, %struct.type** %6, align 8
  %60 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %59)
  %61 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %62 = call i32 @pascal_type_print_varspec_prefix(%struct.type* %60, %struct.ui_file* %61, i32 0, i32 0)
  %63 = load %struct.type*, %struct.type** %6, align 8
  %64 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %63)
  %65 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @pascal_type_print_base(%struct.type* %64, %struct.ui_file* %65, i32 %66, i32 0)
  %68 = load %struct.type*, %struct.type** %6, align 8
  %69 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %68)
  %70 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %71 = load i32, i32* %9, align 4
  call void @pascal_type_print_varspec_suffix(%struct.type* %69, %struct.ui_file* %70, i32 0, i32 %71, i32 0)
  br label %72

72:                                               ; preds = %56, %49
  br label %115

73:                                               ; preds = %22, %22
  %74 = load %struct.type*, %struct.type** %6, align 8
  %75 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %74)
  %76 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  call void @pascal_type_print_varspec_suffix(%struct.type* %75, %struct.ui_file* %76, i32 0, i32 1, i32 0)
  br label %115

77:                                               ; preds = %22
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %82 = call i32 @fprintf_filtered(%struct.ui_file* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load %struct.type*, %struct.type** %6, align 8
  %88 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %89 = call i32 @pascal_print_func_args(%struct.type* %87, %struct.ui_file* %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.type*, %struct.type** %6, align 8
  %92 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %91)
  %93 = call i32 @TYPE_CODE(%struct.type* %92)
  %94 = icmp ne i32 %93, 128
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %97 = call i32 @fprintf_filtered(%struct.ui_file* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.type*, %struct.type** %6, align 8
  %99 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %98)
  %100 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %101 = call i32 @pascal_type_print_varspec_prefix(%struct.type* %99, %struct.ui_file* %100, i32 0, i32 0)
  %102 = load %struct.type*, %struct.type** %6, align 8
  %103 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %102)
  %104 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @pascal_type_print_base(%struct.type* %103, %struct.ui_file* %104, i32 %105, i32 0)
  %107 = load %struct.type*, %struct.type** %6, align 8
  %108 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %107)
  %109 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %110 = load i32, i32* %9, align 4
  call void @pascal_type_print_varspec_suffix(%struct.type* %108, %struct.ui_file* %109, i32 0, i32 %110, i32 0)
  br label %111

111:                                              ; preds = %95, %90
  br label %115

112:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  br label %115

113:                                              ; preds = %22
  %114 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %13, %21, %113, %112, %111, %73, %72, %39, %32
  ret void
}

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @pascal_type_print_method_args(i8*, i8*, %struct.ui_file*) #1

declare dso_local i32 @pascal_type_print_varspec_prefix(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @pascal_type_print_base(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @pascal_print_func_args(%struct.type*, %struct.ui_file*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
