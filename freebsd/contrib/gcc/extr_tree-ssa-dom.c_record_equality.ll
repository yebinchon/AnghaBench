; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_record_equality.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_record_equality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@VALUE_HANDLE = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@dconst0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @record_equality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_equality(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @TREE_CODE(i32* %7)
  %9 = load i64, i64* @SSA_NAME, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @SSA_NAME_VALUE(i32* %12)
  store i32* %13, i32** %5, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @TREE_CODE(i32* %15)
  %17 = load i64, i64* @SSA_NAME, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @SSA_NAME_VALUE(i32* %20)
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @TREE_INVARIANT(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %66

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @TREE_INVARIANT(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @loop_depth_of_name(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @loop_depth_of_name(i32* %34)
  %36 = icmp sle i64 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %27
  %38 = load i32*, i32** %3, align 8
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %4, align 8
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %5, align 8
  br label %65

42:                                               ; preds = %31
  %43 = load i32*, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @TREE_INVARIANT(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  store i32* %50, i32** %3, align 8
  %51 = load i32*, i32** %5, align 8
  store i32* %51, i32** %4, align 8
  %52 = load i32*, i32** %6, align 8
  store i32* %52, i32** %5, align 8
  br label %64

53:                                               ; preds = %45, %42
  %54 = load i32*, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @TREE_CODE(i32* %57)
  %59 = load i64, i64* @VALUE_HANDLE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %61, %56, %53
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %37
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32*, i32** %3, align 8
  %68 = call i64 @TREE_CODE(i32* %67)
  %69 = load i64, i64* @SSA_NAME, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %95

72:                                               ; preds = %66
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @TREE_TYPE(i32* %73)
  %75 = call i32 @TYPE_MODE(i32 %74)
  %76 = call i64 @HONOR_SIGNED_ZEROS(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @TREE_CODE(i32* %79)
  %81 = load i64, i64* @REAL_CST, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @dconst0, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @TREE_REAL_CST(i32* %85)
  %87 = call i64 @REAL_VALUES_EQUAL(i32 %84, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %78
  br label %95

90:                                               ; preds = %83, %72
  %91 = load i32*, i32** %3, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @record_const_or_copy_1(i32* %91, i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %90, %89, %71
  ret void
}

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @SSA_NAME_VALUE(i32*) #1

declare dso_local i64 @TREE_INVARIANT(i32*) #1

declare dso_local i64 @loop_depth_of_name(i32*) #1

declare dso_local i64 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i64 @REAL_VALUES_EQUAL(i32, i32) #1

declare dso_local i32 @TREE_REAL_CST(i32*) #1

declare dso_local i32 @record_const_or_copy_1(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
