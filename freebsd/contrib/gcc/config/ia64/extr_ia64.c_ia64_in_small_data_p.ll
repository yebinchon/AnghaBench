; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_in_small_data_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_in_small_data_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_NO_SDATA = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".sdata.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.s.\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c".sbss.\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.sb.\00", align 1
@ia64_section_threshold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ia64_in_small_data_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_in_small_data_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @TARGET_NO_SDATA, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @STRING_CST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %72

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @FUNCTION_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %72

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @TREE_CODE(i32 %22)
  %24 = load i64, i64* @VAR_DECL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @DECL_SECTION_NAME(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @DECL_SECTION_NAME(i32 %31)
  %33 = call i8* @TREE_STRING_POINTER(i64 %32)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 17)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49, %45, %41, %37, %30
  store i32 1, i32* %2, align 4
  br label %72

58:                                               ; preds = %53
  br label %71

59:                                               ; preds = %26, %21
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @TREE_TYPE(i32 %60)
  %62 = call i64 @int_size_in_bytes(i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @ia64_section_threshold, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %72

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %58
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %69, %57, %20, %14, %8
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_SECTION_NAME(i32) #1

declare dso_local i8* @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @int_size_in_bytes(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
