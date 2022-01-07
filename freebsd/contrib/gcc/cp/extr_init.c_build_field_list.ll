; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_field_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_field_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNION_TYPE = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32*)* @build_field_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_field_list(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @TREE_CODE(i64 %9)
  %11 = load i64, i64* @UNION_TYPE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @TYPE_FIELDS(i64 %16)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %65, %15
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @FIELD_DECL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @DECL_ARTIFICIAL(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %21
  br label %65

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @TREE_TYPE(i64 %32)
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @UNION_TYPE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32*, i32** %6, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @TREE_TYPE(i64 %40)
  %42 = call i64 @ANON_AGGR_TYPE_P(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @NULL_TREE, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @tree_cons(i64 %45, i32 %46, i64 %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @TREE_TYPE(i64 %49)
  %51 = load i64, i64* %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @build_field_list(i64 %50, i64 %51, i32* %52)
  store i64 %53, i64* %5, align 8
  br label %64

54:                                               ; preds = %39
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @DECL_NAME(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @NULL_TREE, align 4
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @tree_cons(i64 %59, i32 %60, i64 %61)
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %30
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @TREE_CHAIN(i64 %66)
  store i64 %67, i64* %7, align 8
  br label %18

68:                                               ; preds = %18
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i64) #1

declare dso_local i64 @tree_cons(i64, i32, i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
