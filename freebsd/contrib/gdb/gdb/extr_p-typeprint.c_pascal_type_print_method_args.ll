; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_type_print_method_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-typeprint.c_pascal_type_print_method_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"__ct__\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"__dt__\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pascal_type_print_method_args(i8* %0, i8* %1, %struct.ui_file* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @DEPRECATED_STREQN(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @DEPRECATED_STREQN(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %3
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 6
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %28 = call i32 @fputs_filtered(i8* %26, %struct.ui_file* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %97

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %37 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %38 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %37)
  br label %39

39:                                               ; preds = %93, %36
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isdigit(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %94

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %54, %45
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isdigit(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %46

57:                                               ; preds = %46
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @strtol(i8* %58, i8** %12, i32 0)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %11, align 1
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %75 = call i32 @fputs_filtered(i8* %73, %struct.ui_file* %74)
  %76 = load i8, i8* %11, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %80, align 1
  %81 = load i32, i32* %9, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %57
  %91 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %92 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %91)
  br label %93

93:                                               ; preds = %90, %57
  br label %39

94:                                               ; preds = %39
  %95 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %96 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %95)
  br label %97

97:                                               ; preds = %94, %31, %25
  ret void
}

declare dso_local i32 @DEPRECATED_STREQN(i8*, i8*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
