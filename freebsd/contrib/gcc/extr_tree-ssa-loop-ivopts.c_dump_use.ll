; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_dump_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_dump_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_use = type { i32, i32, i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"use %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"  generic\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"  address\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"  compare\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"  in statement \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  at position \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  related candidates \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_use(i32* %0, %struct.iv_use* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iv_use*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.iv_use* %1, %struct.iv_use** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %7 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %11 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %22 [
    i32 128, label %13
    i32 130, label %16
    i32 129, label %19
  ]

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %24

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %24

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @gcc_unreachable()
  br label %24

24:                                               ; preds = %22, %19, %16, %13
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %29 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TDF_SLIM, align 4
  %32 = call i32 @print_generic_expr(i32* %27, i32 %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %37 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %38 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %24
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %44 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TDF_SLIM, align 4
  %48 = call i32 @print_generic_expr(i32* %42, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %24
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %54 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dump_iv(i32* %52, i32 %55)
  %57 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %58 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %66 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dump_bitmap(i32* %64, i64 %67)
  br label %69

69:                                               ; preds = %61, %49
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @print_generic_expr(i32*, i32, i32) #1

declare dso_local i32 @dump_iv(i32*, i32) #1

declare dso_local i32 @dump_bitmap(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
