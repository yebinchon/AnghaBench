; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfg.c_dump_edge_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfg.c_dump_edge_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, double, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c" ENTRY\00", align 1
@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" EXIT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [%.1f%%] \00", align 1
@REG_BR_PROB_BASE = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c" count:\00", align 1
@HOST_WIDEST_INT_PRINT_DEC = common dso_local global i8* null, align 8
@dump_edge_info.bitnames = internal constant [13 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"fallthru\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"abcall\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"dfs_back\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"can_fallthru\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"irreducible\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"sibcall\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"loop_exit\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_edge_info(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi %struct.TYPE_7__* [ %16, %13 ], [ %20, %17 ]
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ENTRY_BLOCK_PTR, align 8
  %25 = icmp eq %struct.TYPE_7__* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %27)
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @EXIT_BLOCK_PTR, align 8
  %32 = icmp eq %struct.TYPE_7__* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  br label %42

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sitofp i32 %52 to double
  %54 = fmul double %53, 1.000000e+02
  %55 = load double, double* @REG_BR_PROB_BASE, align 8
  %56 = fdiv double %54, %55
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fcmp une double %61, 0.000000e+00
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32*, i32** %4, align 8
  %67 = load i8*, i8** @HOST_WIDEST_INT_PRINT_DEC, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* %67, double %70)
  br label %72

72:                                               ; preds = %63, %58
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %127

77:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %10, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32* %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %121, %77
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %124

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @fputc(i8 signext 44, i32* %101)
  br label %103

103:                                              ; preds = %100, %92
  %104 = load i32, i32* %9, align 4
  %105 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @dump_edge_info.bitnames, i64 0, i64 0))
  %106 = trunc i64 %105 to i32
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [13 x i8*], [13 x i8*]* @dump_edge_info.bitnames, i64 0, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @fputs(i8* %112, i32* %113)
  br label %119

115:                                              ; preds = %103
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %108
  store i32 1, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %86
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %83

124:                                              ; preds = %83
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @fputc(i8 signext 41, i32* %125)
  br label %127

127:                                              ; preds = %124, %72
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
