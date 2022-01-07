; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_fold_indirect_ref_rhs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_fold_indirect_ref_rhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }

@NULL_TREE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@size_zero_node = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @fold_indirect_ref_rhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_indirect_ref_rhs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  %16 = call i64 @TREE_TYPE(i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @STRIP_USELESS_TYPE_CONVERSION(i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @POINTER_TYPE_P(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* @NULL_TREE, align 8
  store i64 %26, i64* %2, align 8
  br label %129

27:                                               ; preds = %1
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @ADDR_EXPR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @TREE_OPERAND(i64 %33, i32 0)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @TREE_TYPE(i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 %37(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %2, align 8
  br label %129

44:                                               ; preds = %32
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @ARRAY_TYPE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  %54 = call i64 %50(i64 %51, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @TYPE_DOMAIN(i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* @size_zero_node, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @TYPE_MIN_VALUE(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @TYPE_MIN_VALUE(i64 %67)
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %66, %62, %56
  %70 = load i32, i32* @ARRAY_REF, align 4
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @NULL_TREE, align 8
  %75 = load i64, i64* @NULL_TREE, align 8
  %76 = call i64 @build4(i32 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75)
  store i64 %76, i64* %2, align 8
  br label %129

77:                                               ; preds = %49, %44
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %27
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @TREE_TYPE(i64 %80)
  %82 = call i64 @TREE_CODE(i64 %81)
  %83 = load i64, i64* @ARRAY_TYPE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %127

85:                                               ; preds = %79
  %86 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @TREE_TYPE(i64 %88)
  %90 = call i64 @TREE_TYPE(i64 %89)
  %91 = call i64 %86(i64 %87, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %127

93:                                               ; preds = %85
  %94 = load i64, i64* @size_zero_node, align 8
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %5, align 8
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %5, align 8
  %97 = call i64 @fold_indirect_ref_rhs(i64 %96)
  store i64 %97, i64* %5, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @INDIRECT_REF, align 4
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @TREE_TYPE(i64 %102)
  %104 = load i64, i64* %13, align 8
  %105 = call i64 @build1(i32 %101, i64 %103, i64 %104)
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %100, %93
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @TREE_TYPE(i64 %107)
  %109 = call i64 @TYPE_DOMAIN(i64 %108)
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i64, i64* %11, align 8
  %114 = call i64 @TYPE_MIN_VALUE(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i64, i64* %11, align 8
  %118 = call i64 @TYPE_MIN_VALUE(i64 %117)
  store i64 %118, i64* %12, align 8
  br label %119

119:                                              ; preds = %116, %112, %106
  %120 = load i32, i32* @ARRAY_REF, align 4
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @NULL_TREE, align 8
  %125 = load i64, i64* @NULL_TREE, align 8
  %126 = call i64 @build4(i32 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125)
  store i64 %126, i64* %2, align 8
  br label %129

127:                                              ; preds = %85, %79
  %128 = load i64, i64* @NULL_TREE, align 8
  store i64 %128, i64* %2, align 8
  br label %129

129:                                              ; preds = %127, %119, %69, %42, %25
  %130 = load i64, i64* %2, align 8
  ret i64 %130
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @STRIP_USELESS_TYPE_CONVERSION(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TYPE_DOMAIN(i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @build4(i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @build1(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
