; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_propagate_stage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_propagate_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp_formal = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cgraph_node = type { %struct.cgraph_edge* }
%struct.cgraph_edge = type { %struct.cgraph_edge* }
%struct.ipa_jump_func = type { i32 }
%union.parameter_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ipcp_propagate_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_propagate_stage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ipcp_formal, align 4
  %3 = alloca %struct.ipcp_formal, align 4
  %4 = alloca %struct.ipcp_formal*, align 8
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca %struct.cgraph_node*, align 8
  %7 = alloca %struct.cgraph_edge*, align 8
  %8 = alloca %struct.ipa_jump_func*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.parameter_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.ipcp_formal* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %struct.ipcp_formal* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = call i32 (...) @ipa_methodlist_init()
  store i32 %15, i32* %11, align 4
  br label %16

16:                                               ; preds = %72, %0
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @ipa_methodlist_not_empty(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = call %struct.cgraph_node* @ipa_remove_method(i32* %11)
  store %struct.cgraph_node* %21, %struct.cgraph_node** %5, align 8
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %23 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %22, i32 0, i32 0
  %24 = load %struct.cgraph_edge*, %struct.cgraph_edge** %23, align 8
  store %struct.cgraph_edge* %24, %struct.cgraph_edge** %7, align 8
  br label %25

25:                                               ; preds = %68, %20
  %26 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %27 = icmp ne %struct.cgraph_edge* %26, null
  br i1 %27, label %28, label %72

28:                                               ; preds = %25
  %29 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %30 = call %struct.cgraph_node* @ipa_callsite_callee(%struct.cgraph_edge* %29)
  store %struct.cgraph_node* %30, %struct.cgraph_node** %6, align 8
  %31 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %32 = call i32 @ipa_callsite_param_count(%struct.cgraph_edge* %31)
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %64, %28
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %39 = load i32, i32* %1, align 4
  %40 = call %struct.ipa_jump_func* @ipa_callsite_param(%struct.cgraph_edge* %38, i32 %39)
  store %struct.ipa_jump_func* %40, %struct.ipa_jump_func** %8, align 8
  %41 = load %struct.ipa_jump_func*, %struct.ipa_jump_func** %8, align 8
  %42 = call i32 @get_type(%struct.ipa_jump_func* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ipa_jump_func*, %struct.ipa_jump_func** %8, align 8
  %44 = call %union.parameter_info* @ipa_jf_get_info_type(%struct.ipa_jump_func* %43)
  store %union.parameter_info* %44, %union.parameter_info** %10, align 8
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %union.parameter_info*, %union.parameter_info** %10, align 8
  %48 = call i32 @ipcp_cval_compute(%struct.ipcp_formal* %2, %struct.cgraph_node* %45, i32 %46, %union.parameter_info* %47)
  %49 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %50 = load i32, i32* %1, align 4
  %51 = call %struct.ipcp_formal* @ipcp_method_cval(%struct.cgraph_node* %49, i32 %50)
  store %struct.ipcp_formal* %51, %struct.ipcp_formal** %4, align 8
  %52 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %53 = call i32 @ipcp_cval_meet(%struct.ipcp_formal* %3, %struct.ipcp_formal* %2, %struct.ipcp_formal* %52)
  %54 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %55 = call i64 @ipcp_cval_changed(%struct.ipcp_formal* %3, %struct.ipcp_formal* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %37
  %58 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @ipcp_method_cval_set(%struct.cgraph_node* %58, i32 %59, %struct.ipcp_formal* %3)
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %62 = call i32 @ipa_add_method(i32* %11, %struct.cgraph_node* %61)
  br label %63

63:                                               ; preds = %57, %37
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %33

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %70 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %69, i32 0, i32 0
  %71 = load %struct.cgraph_edge*, %struct.cgraph_edge** %70, align 8
  store %struct.cgraph_edge* %71, %struct.cgraph_edge** %7, align 8
  br label %25

72:                                               ; preds = %25
  br label %16

73:                                               ; preds = %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ipa_methodlist_init(...) #2

declare dso_local i64 @ipa_methodlist_not_empty(i32) #2

declare dso_local %struct.cgraph_node* @ipa_remove_method(i32*) #2

declare dso_local %struct.cgraph_node* @ipa_callsite_callee(%struct.cgraph_edge*) #2

declare dso_local i32 @ipa_callsite_param_count(%struct.cgraph_edge*) #2

declare dso_local %struct.ipa_jump_func* @ipa_callsite_param(%struct.cgraph_edge*, i32) #2

declare dso_local i32 @get_type(%struct.ipa_jump_func*) #2

declare dso_local %union.parameter_info* @ipa_jf_get_info_type(%struct.ipa_jump_func*) #2

declare dso_local i32 @ipcp_cval_compute(%struct.ipcp_formal*, %struct.cgraph_node*, i32, %union.parameter_info*) #2

declare dso_local %struct.ipcp_formal* @ipcp_method_cval(%struct.cgraph_node*, i32) #2

declare dso_local i32 @ipcp_cval_meet(%struct.ipcp_formal*, %struct.ipcp_formal*, %struct.ipcp_formal*) #2

declare dso_local i64 @ipcp_cval_changed(%struct.ipcp_formal*, %struct.ipcp_formal*) #2

declare dso_local i32 @ipcp_method_cval_set(%struct.cgraph_node*, i32, %struct.ipcp_formal*) #2

declare dso_local i32 @ipa_add_method(i32*, %struct.cgraph_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
