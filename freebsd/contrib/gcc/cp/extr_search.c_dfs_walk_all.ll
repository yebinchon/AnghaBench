; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_dfs_walk_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_dfs_walk_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dfs_skip_bases = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfs_walk_all(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32, i8*)*, align 8
  %8 = alloca i32 (i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 (i32, i8*)* %1, i32 (i32, i8*)** %7, align 8
  store i32 (i32, i8*)* %2, i32 (i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32 (i32, i8*)*, i32 (i32, i8*)** %7, align 8
  %14 = icmp ne i32 (i32, i8*)* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load i32 (i32, i8*)*, i32 (i32, i8*)** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 %16(i32 %17, i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @dfs_skip_bases, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %52

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @BINFO_BASE_ITERATE(i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  %39 = load i32 (i32, i8*)*, i32 (i32, i8*)** %7, align 8
  %40 = load i32 (i32, i8*)*, i32 (i32, i8*)** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @dfs_walk_all(i32 %38, i32 (i32, i8*)* %39, i32 (i32, i8*)* %40, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %68

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %31

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32 (i32, i8*)*, i32 (i32, i8*)** %8, align 8
  %54 = icmp ne i32 (i32, i8*)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32 (i32, i8*)*, i32 (i32, i8*)** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 %56(i32 %57, i8* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @dfs_skip_bases, align 4
  %62 = icmp ne i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @gcc_assert(i32 %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %52
  %67 = load i32, i32* @NULL_TREE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %55, %45, %27
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @BINFO_BASE_ITERATE(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
