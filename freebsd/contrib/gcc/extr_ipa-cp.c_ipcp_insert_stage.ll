; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_insert_stage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_insert_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge*, %struct.cgraph_node* }
%struct.cgraph_edge = type { %struct.cgraph_edge* }
%union.parameter_info = type { i32 }
%struct.ipa_replace_map = type { i32 }

@cgraph_edge_p = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@redirect_callers = common dso_local global i32 0, align 4
@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"replace_trees\00", align 1
@dump_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"versioned function %s\0A\00", align 1
@CONST_VALUE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ipcp_insert_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_insert_stage() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.parameter_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgraph_edge*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipa_replace_map*, align 8
  store %struct.cgraph_node* null, %struct.cgraph_node** %2, align 8
  %13 = load i32, i32* @cgraph_edge_p, align 4
  %14 = load i32, i32* @heap, align 4
  %15 = call i32 @VEC(i32 %13, i32 %14)
  %16 = load i32, i32* @redirect_callers, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %18, %struct.cgraph_node** %1, align 8
  br label %19

19:                                               ; preds = %187, %0
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %21 = icmp ne %struct.cgraph_node* %20, null
  br i1 %21, label %22, label %191

22:                                               ; preds = %19
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %24 = call i64 @ipcp_method_dont_insert_const(%struct.cgraph_node* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %187

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %29 = call i32 @ipa_method_formal_count(%struct.cgraph_node* %28)
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %46, %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ipcp_method_cval(%struct.cgraph_node* %35, i32 %36)
  %38 = call i32 @ipcp_cval_get_cvalue_type(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @ipcp_type_is_const(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %187

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @VARRAY_GENERIC_PTR_INIT(i32 %54, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %85, %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ipcp_method_cval(%struct.cgraph_node* %62, i32 %63)
  %65 = call i32 @ipcp_cval_get_cvalue_type(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @ipcp_type_is_const(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %61
  %70 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @ipcp_method_cval(%struct.cgraph_node* %70, i32 %71)
  %73 = call %union.parameter_info* @ipcp_cval_get_cvalue(i32 %72)
  store %union.parameter_info* %73, %union.parameter_info** %5, align 8
  %74 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @ipa_method_get_tree(%struct.cgraph_node* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %union.parameter_info*, %union.parameter_info** %5, align 8
  %80 = call %struct.ipa_replace_map* @ipcp_replace_map_create(i32 %77, i32 %78, %union.parameter_info* %79)
  store %struct.ipa_replace_map* %80, %struct.ipa_replace_map** %12, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.ipa_replace_map*, %struct.ipa_replace_map** %12, align 8
  %83 = call i32 @VARRAY_PUSH_GENERIC_PTR(i32 %81, %struct.ipa_replace_map* %82)
  br label %84

84:                                               ; preds = %69, %61
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %57

88:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  %89 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %90 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %89, i32 0, i32 0
  %91 = load %struct.cgraph_edge*, %struct.cgraph_edge** %90, align 8
  store %struct.cgraph_edge* %91, %struct.cgraph_edge** %7, align 8
  br label %92

92:                                               ; preds = %98, %88
  %93 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %94 = icmp ne %struct.cgraph_edge* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95
  %99 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %100 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %99, i32 0, i32 0
  %101 = load %struct.cgraph_edge*, %struct.cgraph_edge** %100, align 8
  store %struct.cgraph_edge* %101, %struct.cgraph_edge** %7, align 8
  br label %92

102:                                              ; preds = %92
  %103 = load i32, i32* @cgraph_edge_p, align 4
  %104 = load i32, i32* @heap, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @VEC_alloc(i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* @redirect_callers, align 4
  %107 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %108 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %107, i32 0, i32 0
  %109 = load %struct.cgraph_edge*, %struct.cgraph_edge** %108, align 8
  store %struct.cgraph_edge* %109, %struct.cgraph_edge** %7, align 8
  br label %110

110:                                              ; preds = %118, %102
  %111 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %112 = icmp ne %struct.cgraph_edge* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* @cgraph_edge_p, align 4
  %115 = load i32, i32* @redirect_callers, align 4
  %116 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %117 = call i32 @VEC_quick_push(i32 %114, i32 %115, %struct.cgraph_edge* %116)
  br label %118

118:                                              ; preds = %113
  %119 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %120 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %119, i32 0, i32 0
  %121 = load %struct.cgraph_edge*, %struct.cgraph_edge** %120, align 8
  store %struct.cgraph_edge* %121, %struct.cgraph_edge** %7, align 8
  br label %110

122:                                              ; preds = %110
  %123 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %124 = load i32, i32* @redirect_callers, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call %struct.cgraph_node* @cgraph_function_versioning(%struct.cgraph_node* %123, i32 %124, i32 %125)
  store %struct.cgraph_node* %126, %struct.cgraph_node** %2, align 8
  %127 = load i32, i32* @cgraph_edge_p, align 4
  %128 = load i32, i32* @heap, align 4
  %129 = load i32, i32* @redirect_callers, align 4
  %130 = call i32 @VEC_free(i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @VARRAY_CLEAR(i32 %131)
  %133 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %134 = icmp eq %struct.cgraph_node* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %187

136:                                              ; preds = %122
  %137 = load i64, i64* @dump_file, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i64, i64* @dump_file, align 8
  %141 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %142 = call i8* @cgraph_node_name(%struct.cgraph_node* %141)
  %143 = call i32 @fprintf(i64 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %139, %136
  %145 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %146 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %147 = call i32 @ipcp_cloned_create(%struct.cgraph_node* %145, %struct.cgraph_node* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %183, %144
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %186

152:                                              ; preds = %148
  %153 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @ipcp_method_cval(%struct.cgraph_node* %153, i32 %154)
  %156 = call i32 @ipcp_cval_get_cvalue_type(i32 %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i64 @ipcp_type_is_const(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %152
  %161 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @ipcp_method_cval(%struct.cgraph_node* %161, i32 %162)
  %164 = call %union.parameter_info* @ipcp_cval_get_cvalue(i32 %163)
  store %union.parameter_info* %164, %union.parameter_info** %5, align 8
  %165 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @ipa_method_get_tree(%struct.cgraph_node* %165, i32 %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @CONST_VALUE_REF, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %160
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @TREE_READONLY(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %177 = load i32, i32* %3, align 4
  %178 = load %union.parameter_info*, %union.parameter_info** %5, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @ipcp_propagate_const(%struct.cgraph_node* %176, i32 %177, %union.parameter_info* %178, i32 %179)
  br label %181

181:                                              ; preds = %175, %171, %160
  br label %182

182:                                              ; preds = %181, %152
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %148

186:                                              ; preds = %148
  br label %187

187:                                              ; preds = %186, %135, %52, %26
  %188 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %189 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %188, i32 0, i32 1
  %190 = load %struct.cgraph_node*, %struct.cgraph_node** %189, align 8
  store %struct.cgraph_node* %190, %struct.cgraph_node** %1, align 8
  br label %19

191:                                              ; preds = %19
  %192 = call i32 (...) @ipcp_update_callgraph()
  %193 = call i32 (...) @ipcp_update_profiling()
  ret void
}

declare dso_local i32 @VEC(i32, i32) #1

declare dso_local i64 @ipcp_method_dont_insert_const(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_formal_count(%struct.cgraph_node*) #1

declare dso_local i32 @ipcp_cval_get_cvalue_type(i32) #1

declare dso_local i32 @ipcp_method_cval(%struct.cgraph_node*, i32) #1

declare dso_local i64 @ipcp_type_is_const(i32) #1

declare dso_local i32 @VARRAY_GENERIC_PTR_INIT(i32, i32, i8*) #1

declare dso_local %union.parameter_info* @ipcp_cval_get_cvalue(i32) #1

declare dso_local i32 @ipa_method_get_tree(%struct.cgraph_node*, i32) #1

declare dso_local %struct.ipa_replace_map* @ipcp_replace_map_create(i32, i32, %union.parameter_info*) #1

declare dso_local i32 @VARRAY_PUSH_GENERIC_PTR(i32, %struct.ipa_replace_map*) #1

declare dso_local i32 @VEC_alloc(i32, i32, i32) #1

declare dso_local i32 @VEC_quick_push(i32, i32, %struct.cgraph_edge*) #1

declare dso_local %struct.cgraph_node* @cgraph_function_versioning(%struct.cgraph_node*, i32, i32) #1

declare dso_local i32 @VEC_free(i32, i32, i32) #1

declare dso_local i32 @VARRAY_CLEAR(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) #1

declare dso_local i32 @ipcp_cloned_create(%struct.cgraph_node*, %struct.cgraph_node*) #1

declare dso_local i32 @TREE_READONLY(i32) #1

declare dso_local i32 @ipcp_propagate_const(%struct.cgraph_node*, i32, %union.parameter_info*, i32) #1

declare dso_local i32 @ipcp_update_callgraph(...) #1

declare dso_local i32 @ipcp_update_profiling(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
