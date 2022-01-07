; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_resolve_typename_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_resolve_typename_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPENAME_TYPE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@tf_error = common dso_local global i32 0, align 4
@tf_user = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @resolve_typename_type(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @TYPENAME_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TYPE_CONTEXT(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @TYPE_IDENTIFIER(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @TYPENAME_TYPE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @resolve_typename_type(i64 %28, i32 %29)
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @error_mark_node, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @TYPENAME_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %31
  %41 = load i64, i64* @error_mark_node, align 8
  store i64 %41, i64* %3, align 8
  br label %134

42:                                               ; preds = %35
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %3, align 8
  br label %134

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @currently_open_class(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* @error_mark_node, align 8
  store i64 %57, i64* %3, align 8
  br label %134

58:                                               ; preds = %52, %49
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @CLASSTYPE_PRIMARY_TEMPLATE_TYPE(i64 %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @push_scope(i64 %61)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @lookup_member(i64 %63, i64 %64, i32 0, i32 1)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @cp_type_quals(i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %58
  %71 = load i64, i64* @error_mark_node, align 8
  store i64 %71, i64* %4, align 8
  br label %115

72:                                               ; preds = %58
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @TYPENAME_TYPE_FULLNAME(i64 %73)
  %75 = call i64 @TREE_CODE(i64 %74)
  %76 = load i64, i64* @IDENTIFIER_NODE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @TREE_CODE(i64 %79)
  %81 = load i64, i64* @TYPE_DECL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @TREE_TYPE(i64 %84)
  store i64 %85, i64* %4, align 8
  br label %114

86:                                               ; preds = %78, %72
  %87 = load i64, i64* %4, align 8
  %88 = call i64 @TYPENAME_TYPE_FULLNAME(i64 %87)
  %89 = call i64 @TREE_CODE(i64 %88)
  %90 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load i64, i64* %8, align 8
  %94 = call i64 @DECL_CLASS_TEMPLATE_P(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load i64, i64* %4, align 8
  %98 = call i64 @TYPENAME_TYPE_FULLNAME(i64 %97)
  %99 = call i64 @TREE_OPERAND(i64 %98, i32 0)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i64 @TYPENAME_TYPE_FULLNAME(i64 %100)
  %102 = call i64 @TREE_OPERAND(i64 %101, i32 1)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* @NULL_TREE, align 4
  %106 = load i32, i32* @NULL_TREE, align 4
  %107 = load i32, i32* @tf_error, align 4
  %108 = load i32, i32* @tf_user, align 4
  %109 = or i32 %107, %108
  %110 = call i64 @lookup_template_class(i64 %103, i64 %104, i32 %105, i32 %106, i32 0, i32 %109)
  store i64 %110, i64* %4, align 8
  br label %113

111:                                              ; preds = %92, %86
  %112 = load i64, i64* @error_mark_node, align 8
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %111, %96
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114, %70
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @error_mark_node, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i64, i64* %4, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i64 @cp_build_qualified_type(i64 %123, i32 %124)
  store i64 %125, i64* %4, align 8
  br label %126

126:                                              ; preds = %122, %119, %115
  %127 = load i64, i64* %10, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @pop_scope(i64 %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i64, i64* %4, align 8
  store i64 %133, i64* %3, align 8
  br label %134

134:                                              ; preds = %132, %56, %47, %40
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i64 @TYPE_IDENTIFIER(i64) #1

declare dso_local i32 @currently_open_class(i64) #1

declare dso_local i64 @CLASSTYPE_PRIMARY_TEMPLATE_TYPE(i64) #1

declare dso_local i64 @push_scope(i64) #1

declare dso_local i64 @lookup_member(i64, i64, i32, i32) #1

declare dso_local i32 @cp_type_quals(i64) #1

declare dso_local i64 @TYPENAME_TYPE_FULLNAME(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @DECL_CLASS_TEMPLATE_P(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @lookup_template_class(i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @cp_build_qualified_type(i64, i32) #1

declare dso_local i32 @pop_scope(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
