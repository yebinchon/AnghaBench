; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_callsite_compute_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_callsite_compute_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { i32 }
%struct.cgraph_node = type { i32 }

@CALL_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@UNKNOWN_IPATYPE = common dso_local global i32 0, align 4
@FORMAL_IPATYPE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@CONST_IPATYPE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i64 0, align 8
@CONST_IPATYPE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipa_callsite_compute_param(%struct.cgraph_edge* %0) #0 {
  %2 = alloca %struct.cgraph_edge*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgraph_node*, align 8
  store %struct.cgraph_edge* %0, %struct.cgraph_edge** %2, align 8
  %9 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %10 = call i64 @ipa_callsite_param_count(%struct.cgraph_edge* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %140

13:                                               ; preds = %1
  %14 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %15 = call i32 @ipa_callsite_param_map_create(%struct.cgraph_edge* %14)
  %16 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %17 = call i32 @ipa_callsite_tree(%struct.cgraph_edge* %16)
  %18 = call i64 @get_call_expr_in(i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @CALL_EXPR, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TREE_OPERAND(i64 %25, i32 1)
  store i64 %26, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %137, %13
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @NULL_TREE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %140

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_VALUE(i64 %32)
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @PARM_DECL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %39 = call %struct.cgraph_node* @ipa_callsite_caller(%struct.cgraph_edge* %38)
  store %struct.cgraph_node* %39, %struct.cgraph_node** %8, align 8
  %40 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @TREE_VALUE(i64 %41)
  %43 = call i32 @ipa_method_tree_map(%struct.cgraph_node* %40, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @ipa_method_is_modified(%struct.cgraph_node* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %37
  %52 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @UNKNOWN_IPATYPE, align 4
  %55 = call i32 @ipa_callsite_param_set_type(%struct.cgraph_edge* %52, i32 %53, i32 %54)
  br label %65

56:                                               ; preds = %46
  %57 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @FORMAL_IPATYPE, align 4
  %60 = call i32 @ipa_callsite_param_set_type(%struct.cgraph_edge* %57, i32 %58, i32 %59)
  %61 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ipa_callsite_param_set_info_type_formal(%struct.cgraph_edge* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %51
  br label %134

66:                                               ; preds = %31
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @TREE_VALUE(i64 %67)
  %69 = call i64 @TREE_CODE(i64 %68)
  %70 = load i64, i64* @INTEGER_CST, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @TREE_VALUE(i64 %73)
  %75 = call i64 @TREE_CODE(i64 %74)
  %76 = load i64, i64* @REAL_CST, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72, %66
  %79 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @CONST_IPATYPE, align 4
  %82 = call i32 @ipa_callsite_param_set_type(%struct.cgraph_edge* %79, i32 %80, i32 %81)
  %83 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i64, i64* %4, align 8
  %86 = call i64 @TREE_VALUE(i64 %85)
  %87 = call i32 @ipa_callsite_param_set_info_type(%struct.cgraph_edge* %83, i32 %84, i64 %86)
  br label %133

88:                                               ; preds = %72
  %89 = load i64, i64* %4, align 8
  %90 = call i64 @TREE_VALUE(i64 %89)
  %91 = call i64 @TREE_CODE(i64 %90)
  %92 = load i64, i64* @ADDR_EXPR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %88
  %95 = load i64, i64* %4, align 8
  %96 = call i64 @TREE_VALUE(i64 %95)
  %97 = call i64 @TREE_OPERAND(i64 %96, i32 0)
  %98 = call i64 @TREE_CODE(i64 %97)
  %99 = load i64, i64* @CONST_DECL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %94
  %102 = load i64, i64* %4, align 8
  %103 = call i64 @TREE_VALUE(i64 %102)
  %104 = call i64 @TREE_OPERAND(i64 %103, i32 0)
  store i64 %104, i64* %5, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @DECL_INITIAL(i64 %105)
  %107 = call i64 @TREE_CODE(i64 %106)
  %108 = load i64, i64* @INTEGER_CST, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %101
  %111 = load i64, i64* %5, align 8
  %112 = call i64 @DECL_INITIAL(i64 %111)
  %113 = call i64 @TREE_CODE(i64 %112)
  %114 = load i64, i64* @REAL_CST, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %110, %101
  %117 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @CONST_IPATYPE_REF, align 4
  %120 = call i32 @ipa_callsite_param_set_type(%struct.cgraph_edge* %117, i32 %118, i32 %119)
  %121 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i64, i64* %5, align 8
  %124 = call i64 @DECL_INITIAL(i64 %123)
  %125 = call i32 @ipa_callsite_param_set_info_type(%struct.cgraph_edge* %121, i32 %122, i64 %124)
  br label %126

126:                                              ; preds = %116, %110
  br label %132

127:                                              ; preds = %94, %88
  %128 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @UNKNOWN_IPATYPE, align 4
  %131 = call i32 @ipa_callsite_param_set_type(%struct.cgraph_edge* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %126
  br label %133

133:                                              ; preds = %132, %78
  br label %134

134:                                              ; preds = %133, %65
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %4, align 8
  %139 = call i64 @TREE_CHAIN(i64 %138)
  store i64 %139, i64* %4, align 8
  br label %27

140:                                              ; preds = %12, %27
  ret void
}

declare dso_local i64 @ipa_callsite_param_count(%struct.cgraph_edge*) #1

declare dso_local i32 @ipa_callsite_param_map_create(%struct.cgraph_edge*) #1

declare dso_local i64 @get_call_expr_in(i32) #1

declare dso_local i32 @ipa_callsite_tree(%struct.cgraph_edge*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local %struct.cgraph_node* @ipa_callsite_caller(%struct.cgraph_edge*) #1

declare dso_local i32 @ipa_method_tree_map(%struct.cgraph_node*, i64) #1

declare dso_local i64 @ipa_method_is_modified(%struct.cgraph_node*, i32) #1

declare dso_local i32 @ipa_callsite_param_set_type(%struct.cgraph_edge*, i32, i32) #1

declare dso_local i32 @ipa_callsite_param_set_info_type_formal(%struct.cgraph_edge*, i32, i32) #1

declare dso_local i32 @ipa_callsite_param_set_info_type(%struct.cgraph_edge*, i32, i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
