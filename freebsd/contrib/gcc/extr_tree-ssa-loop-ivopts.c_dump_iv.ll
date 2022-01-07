; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_dump_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_dump_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"ssa name \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  type \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"  base \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"  step \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"  invariant \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  base object \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"  is a biv\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_iv(i32* %0, %struct.iv* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iv*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.iv* %1, %struct.iv** %4, align 8
  %5 = load %struct.iv*, %struct.iv** %4, align 8
  %6 = getelementptr inbounds %struct.iv, %struct.iv* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.iv*, %struct.iv** %4, align 8
  %14 = getelementptr inbounds %struct.iv, %struct.iv* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @TDF_SLIM, align 4
  %17 = call i32 @print_generic_expr(i32* %12, i64 %15, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %9, %2
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.iv*, %struct.iv** %4, align 8
  %25 = getelementptr inbounds %struct.iv, %struct.iv* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @TREE_TYPE(i64 %26)
  %28 = load i32, i32* @TDF_SLIM, align 4
  %29 = call i32 @print_generic_expr(i32* %23, i64 %27, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.iv*, %struct.iv** %4, align 8
  %33 = getelementptr inbounds %struct.iv, %struct.iv* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %20
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.iv*, %struct.iv** %4, align 8
  %41 = getelementptr inbounds %struct.iv, %struct.iv* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @TDF_SLIM, align 4
  %44 = call i32 @print_generic_expr(i32* %39, i64 %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @fprintf(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fprintf(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.iv*, %struct.iv** %4, align 8
  %51 = getelementptr inbounds %struct.iv, %struct.iv* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @TDF_SLIM, align 4
  %54 = call i32 @print_generic_expr(i32* %49, i64 %52, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @fprintf(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %68

57:                                               ; preds = %20
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @fprintf(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.iv*, %struct.iv** %4, align 8
  %62 = getelementptr inbounds %struct.iv, %struct.iv* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @TDF_SLIM, align 4
  %65 = call i32 @print_generic_expr(i32* %60, i64 %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @fprintf(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %57, %36
  %69 = load %struct.iv*, %struct.iv** %4, align 8
  %70 = getelementptr inbounds %struct.iv, %struct.iv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @fprintf(i32* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = load %struct.iv*, %struct.iv** %4, align 8
  %78 = getelementptr inbounds %struct.iv, %struct.iv* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @TDF_SLIM, align 4
  %81 = call i32 @print_generic_expr(i32* %76, i64 %79, i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @fprintf(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %73, %68
  %85 = load %struct.iv*, %struct.iv** %4, align 8
  %86 = getelementptr inbounds %struct.iv, %struct.iv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @fprintf(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_generic_expr(i32*, i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
