; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-typeprint.c_f_print_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-typeprint.c_f_print_type.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_print_type(%struct.type* %0, i8* %1, %struct.ui_file* %2, i32 %3, i32 %4) #0 {
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
  %14 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @f_type_print_base(%struct.type* %13, %struct.ui_file* %14, i32 %15, i32 %16)
  %18 = load %struct.type*, %struct.type** %6, align 8
  %19 = call i32 @TYPE_CODE(%struct.type* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %22, %5
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.type*, %struct.type** %6, align 8
  %32 = call i64 @TYPE_NAME(%struct.type* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @TYPE_CODE_PTR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @TYPE_CODE_METHOD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @TYPE_CODE_MEMBER, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @TYPE_CODE_REF, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %50, %46, %42, %38, %34, %22
  %59 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %60 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %59)
  br label %61

61:                                               ; preds = %58, %54, %30
  %62 = load %struct.type*, %struct.type** %6, align 8
  %63 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @f_type_print_varspec_prefix(%struct.type* %62, %struct.ui_file* %63, i32 %64, i32 0)
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %68 = call i32 @fputs_filtered(i8* %66, %struct.ui_file* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 41
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = load %struct.type*, %struct.type** %6, align 8
  %80 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @f_type_print_varspec_suffix(%struct.type* %79, %struct.ui_file* %80, i32 %81, i32 0, i32 %82)
  ret void
}

declare dso_local i32 @f_type_print_base(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @f_type_print_varspec_prefix(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @f_type_print_varspec_suffix(%struct.type*, %struct.ui_file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
