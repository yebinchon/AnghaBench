; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_in_small_data_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_in_small_data_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRING_CST = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TARGET_ABICALLS = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@TARGET_EXPLICIT_RELOCS = common dso_local global i64 0, align 8
@TARGET_EMBEDDED_DATA = common dso_local global i64 0, align 8
@mips_section_threshold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_in_small_data_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_in_small_data_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @STRING_CST, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @FUNCTION_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %92

16:                                               ; preds = %10
  %17 = load i64, i64* @TARGET_ABICALLS, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %92

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @VAR_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @DECL_SECTION_NAME(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @DECL_SECTION_NAME(i32 %30)
  %32 = call i8* @TREE_STRING_POINTER(i64 %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %92

41:                                               ; preds = %36, %29
  %42 = load i64, i64* @TARGET_EXPLICIT_RELOCS, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @DECL_EXTERNAL(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %41
  store i32 1, i32* %2, align 4
  br label %92

49:                                               ; preds = %44
  br label %79

50:                                               ; preds = %25, %20
  %51 = load i64, i64* @TARGET_EMBEDDED_DATA, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @VAR_DECL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %92

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @TREE_READONLY(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @TREE_SIDE_EFFECTS(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @DECL_INITIAL(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @DECL_INITIAL(i32 %72)
  %74 = call i64 @TREE_CONSTANT(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %67
  store i32 0, i32* %2, align 4
  br label %92

77:                                               ; preds = %71, %63, %59
  br label %78

78:                                               ; preds = %77, %50
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @TREE_TYPE(i32 %80)
  %82 = call i64 @int_size_in_bytes(i32 %81)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @mips_section_threshold, align 8
  %88 = icmp sle i64 %86, %87
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi i1 [ false, %79 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %76, %58, %48, %40, %19, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_SECTION_NAME(i32) #1

declare dso_local i8* @TREE_STRING_POINTER(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @TREE_READONLY(i32) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i64 @TREE_CONSTANT(i32) #1

declare dso_local i64 @int_size_in_bytes(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
