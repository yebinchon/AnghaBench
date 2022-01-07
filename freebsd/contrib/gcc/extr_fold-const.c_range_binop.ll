; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_range_binop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_range_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i64 0, align 8
@tcc_comparison = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i32, i64, i32)* @range_binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @range_binop(i32 %0, i64 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %6
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  br label %32

29:                                               ; preds = %23
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @TREE_TYPE(i64 %30)
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @TREE_TYPE(i64 %35)
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @fold_convert(i64 %36, i64 %37)
  %39 = call i64 @fold_build2(i32 %24, i64 %33, i64 %34, i32 %38)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @STRIP_NOPS(i64 %40)
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @INTEGER_CST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i64, i64* %14, align 8
  br label %49

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %48 ]
  store i64 %50, i64* %7, align 8
  br label %115

51:                                               ; preds = %20, %6
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @TREE_CODE_CLASS(i32 %52)
  %54 = load i64, i64* @tcc_comparison, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i64 0, i64* %7, align 8
  br label %115

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 -1
  br label %66

66:                                               ; preds = %61, %60
  %67 = phi i32 [ 0, %60 ], [ %65, %61 ]
  store i32 %67, i32* %16, align 4
  %68 = load i64, i64* %12, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %76

71:                                               ; preds = %66
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 -1
  br label %76

76:                                               ; preds = %71, %70
  %77 = phi i32 [ 0, %70 ], [ %75, %71 ]
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %8, align 4
  switch i32 %78, label %109 [
    i32 133, label %79
    i32 128, label %84
    i32 129, label %89
    i32 130, label %94
    i32 131, label %99
    i32 132, label %104
  ]

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %15, align 4
  br label %111

84:                                               ; preds = %76
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %15, align 4
  br label %111

89:                                               ; preds = %76
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %90, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %15, align 4
  br label %111

94:                                               ; preds = %76
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp sle i32 %95, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %15, align 4
  br label %111

99:                                               ; preds = %76
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp sgt i32 %100, %101
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %15, align 4
  br label %111

104:                                              ; preds = %76
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp sge i32 %105, %106
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %15, align 4
  br label %111

109:                                              ; preds = %76
  %110 = call i32 (...) @gcc_unreachable()
  br label %111

111:                                              ; preds = %109, %104, %99, %94, %89, %84, %79
  %112 = load i32, i32* %15, align 4
  %113 = load i64, i64* %9, align 8
  %114 = call i64 @constant_boolean_node(i32 %112, i64 %113)
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %111, %56, %49
  %116 = load i64, i64* %7, align 8
  ret i64 %116
}

declare dso_local i64 @fold_build2(i32, i64, i64, i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @fold_convert(i64, i64) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @constant_boolean_node(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
