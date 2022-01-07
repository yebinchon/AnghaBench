; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_associate_trees.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_associate_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINUS_EXPR = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i64)* @associate_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @associate_trees(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %5, align 8
  br label %126

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %5, align 8
  br label %126

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @MINUS_EXPR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @MINUS_EXPR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %116

42:                                               ; preds = %37, %32, %26, %20
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PLUS_EXPR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @NEGATE_EXPR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i64, i64* @MINUS_EXPR, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @fold_convert(i64 %55, i64 %56)
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @TREE_OPERAND(i64 %59, i32 0)
  %61 = call i64 @fold_convert(i64 %58, i64 %60)
  %62 = call i64 @build2(i32 %53, i64 %54, i64 %57, i64 %61)
  store i64 %62, i64* %5, align 8
  br label %126

63:                                               ; preds = %46
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @TREE_CODE(i64 %64)
  %66 = load i64, i64* @NEGATE_EXPR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load i64, i64* @MINUS_EXPR, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @fold_convert(i64 %72, i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @TREE_OPERAND(i64 %76, i32 0)
  %78 = call i64 @fold_convert(i64 %75, i64 %77)
  %79 = call i64 @build2(i32 %70, i64 %71, i64 %74, i64 %78)
  store i64 %79, i64* %5, align 8
  br label %126

80:                                               ; preds = %63
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @integer_zerop(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @fold_convert(i64 %85, i64 %86)
  store i64 %87, i64* %5, align 8
  br label %126

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  br label %106

91:                                               ; preds = %42
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* @MINUS_EXPR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @integer_zerop(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @fold_convert(i64 %101, i64 %102)
  store i64 %103, i64* %5, align 8
  br label %126

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %91
  br label %106

106:                                              ; preds = %105, %90
  %107 = load i32, i32* %8, align 4
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i64 @fold_convert(i64 %109, i64 %110)
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i64 @fold_convert(i64 %112, i64 %113)
  %115 = call i64 @build2(i32 %107, i64 %108, i64 %111, i64 %114)
  store i64 %115, i64* %5, align 8
  br label %126

116:                                              ; preds = %37
  %117 = load i32, i32* %8, align 4
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @fold_convert(i64 %119, i64 %120)
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i64 @fold_convert(i64 %122, i64 %123)
  %125 = call i64 @fold_build2(i32 %117, i64 %118, i64 %121, i64 %124)
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %116, %106, %100, %84, %68, %51, %17, %12
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
