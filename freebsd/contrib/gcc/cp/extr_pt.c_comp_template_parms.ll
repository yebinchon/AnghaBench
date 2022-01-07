; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_comp_template_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_comp_template_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@TREE_VEC = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comp_template_parms(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %120

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %103, %17
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @NULL_TREE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @NULL_TREE, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %108

30:                                               ; preds = %28
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @TREE_VALUE(i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @TREE_VALUE(i64 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @TREE_VEC, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @TREE_VEC, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @gcc_assert(i32 %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @TREE_VEC_LENGTH(i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @TREE_VEC_LENGTH(i64 %49)
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %120

53:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %99, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @TREE_VEC_LENGTH(i64 %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %102

59:                                               ; preds = %54
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @TREE_VEC_ELT(i64 %60, i32 %61)
  %63 = call i64 @TREE_VALUE(i64 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @TREE_VEC_ELT(i64 %64, i32 %65)
  %67 = call i64 @TREE_VALUE(i64 %66)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @error_mark_node, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %59
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @error_mark_node, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %59
  store i32 1, i32* %3, align 4
  br label %120

76:                                               ; preds = %71
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @TREE_CODE(i64 %77)
  %79 = load i64, i64* %12, align 8
  %80 = call i64 @TREE_CODE(i64 %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %120

83:                                               ; preds = %76
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @TREE_CODE(i64 %84)
  %86 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %99

89:                                               ; preds = %83
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @TREE_TYPE(i64 %90)
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @TREE_TYPE(i64 %92)
  %94 = call i32 @same_type_p(i32 %91, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %120

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %54

102:                                              ; preds = %54
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %6, align 8
  %105 = call i64 @TREE_CHAIN(i64 %104)
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @TREE_CHAIN(i64 %106)
  store i64 %107, i64* %7, align 8
  br label %20

108:                                              ; preds = %28
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @NULL_TREE, align 8
  %111 = icmp ne i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @NULL_TREE, align 8
  %115 = icmp ne i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = icmp ne i32 %112, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %120

119:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %118, %96, %82, %75, %52, %16
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i64 @TREE_VEC_ELT(i64, i32) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
