; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_diagnose_sb_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_diagnose_sb_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"invalid exit from OpenMP structured block\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"invalid entry to OpenMP structured block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*)* @diagnose_sb_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diagnose_sb_0(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = call i32* @TREE_VALUE(i32* %12)
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32* [ %13, %11 ], [ null, %14 ]
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %48

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %38

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %34, %24
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @TREE_VALUE(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @TREE_CHAIN(i32* %35)
  store i32* %36, i32** %7, align 8
  br label %25

37:                                               ; preds = %33, %25
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %45

43:                                               ; preds = %38
  %44 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %41
  %46 = call i32* (...) @build_empty_stmt()
  %47 = load i32**, i32*** %5, align 8
  store i32* %46, i32** %47, align 8
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32* @TREE_VALUE(i32*) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @build_empty_stmt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
