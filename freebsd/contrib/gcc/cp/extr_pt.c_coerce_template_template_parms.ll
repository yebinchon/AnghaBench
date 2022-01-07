; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_coerce_template_template_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_coerce_template_template_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TREE_VEC = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i64, i64)* @coerce_template_template_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coerce_template_template_parms(i64 %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @TREE_CODE(i64 %19)
  %21 = load i32, i32* @TREE_VEC, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @TREE_CODE(i64 %25)
  %27 = load i32, i32* @TREE_VEC, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @TREE_VEC_LENGTH(i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @TREE_VEC_LENGTH(i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %132

39:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %128, %39
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %131

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @TREE_VEC_ELT(i64 %45, i32 %46)
  %48 = load i64, i64* @error_mark_node, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @TREE_VEC_ELT(i64 %51, i32 %52)
  %54 = load i64, i64* @error_mark_node, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %44
  br label %128

57:                                               ; preds = %50
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @TREE_VEC_ELT(i64 %58, i32 %59)
  %61 = call i64 @TREE_VALUE(i64 %60)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @TREE_VEC_ELT(i64 %62, i32 %63)
  %65 = call i64 @TREE_VALUE(i64 %64)
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @NULL_TREE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %57
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @error_mark_node, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* @NULL_TREE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* @error_mark_node, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %73, %69, %57
  store i32 0, i32* %6, align 4
  br label %132

82:                                               ; preds = %77
  %83 = load i64, i64* %16, align 8
  %84 = call i32 @TREE_CODE(i64 %83)
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @TREE_CODE(i64 %85)
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %132

89:                                               ; preds = %82
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @TREE_CODE(i64 %90)
  switch i32 %91, label %125 [
    i32 128, label %92
    i32 129, label %93
    i32 130, label %107
  ]

92:                                               ; preds = %89
  br label %127

93:                                               ; preds = %89
  %94 = load i64, i64* %15, align 8
  %95 = call i64 @DECL_INNERMOST_TEMPLATE_PARMS(i64 %94)
  store i64 %95, i64* %17, align 8
  %96 = load i64, i64* %16, align 8
  %97 = call i64 @DECL_INNERMOST_TEMPLATE_PARMS(i64 %96)
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %18, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @coerce_template_template_parms(i64 %98, i64 %99, i32 %100, i64 %101, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %132

106:                                              ; preds = %93
  br label %127

107:                                              ; preds = %89
  %108 = load i64, i64* %16, align 8
  %109 = call i32 @TREE_TYPE(i64 %108)
  %110 = call i32 @dependent_type_p(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @TREE_TYPE(i64 %113)
  %115 = load i64, i64* %11, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @tsubst(i32 %114, i64 %115, i32 %116, i64 %117)
  %119 = load i64, i64* %16, align 8
  %120 = call i32 @TREE_TYPE(i64 %119)
  %121 = call i32 @same_type_p(i32 %118, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  br label %132

124:                                              ; preds = %112, %107
  br label %127

125:                                              ; preds = %89
  %126 = call i32 (...) @gcc_unreachable()
  br label %127

127:                                              ; preds = %125, %124, %106, %92
  br label %128

128:                                              ; preds = %127, %56
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %40

131:                                              ; preds = %40
  store i32 1, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %123, %105, %88, %81, %38
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i64 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @DECL_INNERMOST_TEMPLATE_PARMS(i64) #1

declare dso_local i32 @dependent_type_p(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @tsubst(i32, i64, i32, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
