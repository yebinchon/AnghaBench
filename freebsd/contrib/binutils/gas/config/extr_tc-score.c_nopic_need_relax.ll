; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_nopic_need_relax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_nopic_need_relax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USE_GLOBAL_POINTER_OPT = common dso_local global i64 0, align 8
@g_switch_value = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"eprol\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"etext\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_gp\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"edata\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_fbss\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_fdata\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"_ftext\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@GP_DISP_LABEL = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".sdata.\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @nopic_need_relax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nopic_need_relax(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

11:                                               ; preds = %2
  %12 = load i64, i64* @USE_GLOBAL_POINTER_OPT, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %108

14:                                               ; preds = %11
  %15 = load i64, i64* @g_switch_value, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %108

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @S_GET_NAME(i32* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %59, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** @GP_DISP_LABEL, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %50, %46, %42, %38, %34, %30, %26, %22
  store i32 1, i32* %3, align 4
  br label %109

60:                                               ; preds = %54, %17
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @S_IS_DEFINED(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = call i64 @S_IS_COMMON(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  %73 = call i64 @S_GET_VALUE(i32* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71, %68
  %76 = load i32*, i32** %4, align 8
  %77 = call i64 @S_GET_VALUE(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32*, i32** %4, align 8
  %81 = call i64 @S_GET_VALUE(i32* %80)
  %82 = load i64, i64* @g_switch_value, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %71
  store i32 0, i32* %3, align 4
  br label %109

85:                                               ; preds = %79, %75, %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @S_GET_SEGMENT(i32* %87)
  %89 = call i8* @segment_name(i32 %88)
  store i8* %89, i8** %7, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @strncmp(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i8*, i8** %7, align 8
  %103 = call i64 @strncmp(i8* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 16)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %101, %97, %93, %86
  %106 = phi i1 [ false, %97 ], [ false, %93 ], [ false, %86 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %109

108:                                              ; preds = %14, %11
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %105, %84, %59, %10
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @S_GET_NAME(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @S_IS_COMMON(i32*) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local i8* @segment_name(i32) #1

declare dso_local i32 @S_GET_SEGMENT(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
