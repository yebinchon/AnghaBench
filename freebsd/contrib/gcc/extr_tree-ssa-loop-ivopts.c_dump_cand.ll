; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_dump_cand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_dump_cand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv_cand = type { i32, i32, i64, i64, %struct.iv* }
%struct.iv = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"candidate %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" (important)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  depends on \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"  final value replacement\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"  incremented before exit test\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"  incremented at end\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"  original biv\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_cand(i32* %0, %struct.iv_cand* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iv_cand*, align 8
  %5 = alloca %struct.iv*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.iv_cand* %1, %struct.iv_cand** %4, align 8
  %6 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %7 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %6, i32 0, i32 4
  %8 = load %struct.iv*, %struct.iv** %7, align 8
  store %struct.iv* %8, %struct.iv** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %11 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %14 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %18)
  %20 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %21 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %29 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dump_bitmap(i32* %27, i64 %30)
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.iv*, %struct.iv** %5, align 8
  %34 = icmp ne %struct.iv* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %55

38:                                               ; preds = %32
  %39 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %40 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %51 [
    i32 129, label %42
    i32 130, label %45
    i32 128, label %48
  ]

42:                                               ; preds = %38
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %51

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %51

48:                                               ; preds = %38
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %51

51:                                               ; preds = %38, %48, %45, %42
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.iv*, %struct.iv** %5, align 8
  %54 = call i32 @dump_iv(i32* %52, %struct.iv* %53)
  br label %55

55:                                               ; preds = %51, %35
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @dump_bitmap(i32*, i64) #1

declare dso_local i32 @dump_iv(i32*, %struct.iv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
