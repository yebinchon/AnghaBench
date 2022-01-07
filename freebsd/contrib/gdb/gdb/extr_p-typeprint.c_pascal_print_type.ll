; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_print_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@TYPE_CODE_FUNC = common dso_local global i32 0, align 4
@TYPE_CODE_METHOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pascal_print_type(%struct.type* %0, i8* %1, %struct.ui_file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ui_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ui_file* %2, %struct.ui_file** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.type*, %struct.type** %6, align 8
  %14 = call i32 @TYPE_CODE(%struct.type* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.type*, %struct.type** %6, align 8
  %19 = call i32 @CHECK_TYPEDEF(%struct.type* %18)
  br label %20

20:                                               ; preds = %17, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @TYPE_CODE_METHOD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %20
  %29 = load %struct.type*, %struct.type** %6, align 8
  %30 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pascal_type_print_varspec_prefix(%struct.type* %29, %struct.ui_file* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %36 = call i32 @fputs_filtered(i8* %34, %struct.ui_file* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @TYPE_CODE_METHOD, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %54 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %53)
  br label %55

55:                                               ; preds = %52, %48, %44, %39, %33
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @TYPE_CODE_METHOD, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load %struct.type*, %struct.type** %6, align 8
  %65 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @pascal_type_print_varspec_prefix(%struct.type* %64, %struct.ui_file* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %63, %59, %55
  %69 = load %struct.type*, %struct.type** %6, align 8
  %70 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @pascal_type_print_base(%struct.type* %69, %struct.ui_file* %70, i32 %71, i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i8*, i8** %7, align 8
  %78 = call i32* @strchr(i8* %77, i8 signext 40)
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  br label %82

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %76
  %83 = phi i32 [ %80, %76 ], [ 0, %81 ]
  store i32 %83, i32* %12, align 4
  %84 = load %struct.type*, %struct.type** %6, align 8
  %85 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @pascal_type_print_varspec_suffix(%struct.type* %84, %struct.ui_file* %85, i32 %86, i32 0, i32 %87)
  ret void
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @pascal_type_print_varspec_prefix(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @pascal_type_print_base(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pascal_type_print_varspec_suffix(%struct.type*, %struct.ui_file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
