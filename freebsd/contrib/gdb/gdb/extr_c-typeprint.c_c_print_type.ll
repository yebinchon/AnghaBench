; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_c_print_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_c_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@TYPE_CODE_FUNC = common dso_local global i32 0, align 4
@TYPE_CODE_METHOD = common dso_local global i32 0, align 4
@TYPE_CODE_ARRAY = common dso_local global i32 0, align 4
@TYPE_CODE_MEMBER = common dso_local global i32 0, align 4
@TYPE_CODE_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_print_type(%struct.type* %0, i8* %1, %struct.ui_file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ui_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ui_file* %2, %struct.ui_file** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load %struct.type*, %struct.type** %6, align 8
  %18 = call i32 @CHECK_TYPEDEF(%struct.type* %17)
  br label %19

19:                                               ; preds = %16, %5
  %20 = load %struct.type*, %struct.type** %6, align 8
  %21 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @c_type_print_base(%struct.type* %20, %struct.ui_file* %21, i32 %22, i32 %23)
  %25 = load %struct.type*, %struct.type** %6, align 8
  %26 = call i32 @TYPE_CODE(%struct.type* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %29, %19
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load %struct.type*, %struct.type** %6, align 8
  %39 = call i64 @TYPE_NAME(%struct.type* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @TYPE_CODE_PTR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @TYPE_CODE_METHOD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @TYPE_CODE_MEMBER, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @TYPE_CODE_REF, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %57, %53, %49, %45, %41, %29
  %66 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %67 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %66)
  br label %68

68:                                               ; preds = %65, %61, %37
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ false, %68 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %13, align 4
  %78 = load %struct.type*, %struct.type** %6, align 8
  %79 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @c_type_print_varspec_prefix(%struct.type* %78, %struct.ui_file* %79, i32 %80, i32 0, i32 %81)
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %75
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %88 = call i32 @fputs_filtered(i8* %86, %struct.ui_file* %87)
  %89 = load i8*, i8** %7, align 8
  %90 = call i32* @strchr(i8* %89, i8 signext 40)
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load %struct.type*, %struct.type** %6, align 8
  %94 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @c_type_print_varspec_suffix(%struct.type* %93, %struct.ui_file* %94, i32 %95, i32 0, i32 %96)
  br label %98

98:                                               ; preds = %85, %75
  ret void
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @c_type_print_base(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @c_type_print_varspec_prefix(%struct.type*, %struct.ui_file*, i32, i32, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @c_type_print_varspec_suffix(%struct.type*, %struct.ui_file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
