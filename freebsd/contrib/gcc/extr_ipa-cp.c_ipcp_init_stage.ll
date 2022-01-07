; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_init_stage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_init_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge*, %struct.cgraph_node* }
%struct.cgraph_edge = type { i32, %struct.cgraph_edge* }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ipcp_init_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_init_stage() #0 {
  %1 = alloca %struct.cgraph_node*, align 8
  %2 = alloca %struct.cgraph_edge*, align 8
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %3, %struct.cgraph_node** %1, align 8
  br label %4

4:                                                ; preds = %18, %0
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %6 = icmp ne %struct.cgraph_node* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %9 = call i32 @ipa_method_formal_compute_count(%struct.cgraph_node* %8)
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %11 = call i32 @ipa_method_compute_tree_map(%struct.cgraph_node* %10)
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %13 = call i32 @ipcp_method_cval_init(%struct.cgraph_node* %12)
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %15 = call i32 @ipa_method_compute_modify(%struct.cgraph_node* %14)
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %17 = call i32 @ipcp_method_compute_scale(%struct.cgraph_node* %16)
  br label %18

18:                                               ; preds = %7
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %20 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i32 0, i32 1
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %20, align 8
  store %struct.cgraph_node* %21, %struct.cgraph_node** %1, align 8
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %23, %struct.cgraph_node** %1, align 8
  br label %24

24:                                               ; preds = %60, %22
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %26 = icmp ne %struct.cgraph_node* %25, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %24
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %29 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %28, i32 0, i32 0
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %29, align 8
  store %struct.cgraph_edge* %30, %struct.cgraph_edge** %2, align 8
  br label %31

31:                                               ; preds = %55, %27
  %32 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %33 = icmp ne %struct.cgraph_edge* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %36 = call i32 @ipa_callsite_compute_count(%struct.cgraph_edge* %35)
  %37 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %38 = call i64 @ipa_callsite_param_count(%struct.cgraph_edge* %37)
  %39 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %40 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ipa_method_formal_count(i32 %41)
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %46 = call i32 @ipa_callsite_param_count_set(%struct.cgraph_edge* %45, i32 0)
  %47 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %48 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ipa_method_formal_count_set(i32 %49, i32 0)
  br label %54

51:                                               ; preds = %34
  %52 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %53 = call i32 @ipa_callsite_compute_param(%struct.cgraph_edge* %52)
  br label %54

54:                                               ; preds = %51, %44
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %57 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %56, i32 0, i32 1
  %58 = load %struct.cgraph_edge*, %struct.cgraph_edge** %57, align 8
  store %struct.cgraph_edge* %58, %struct.cgraph_edge** %2, align 8
  br label %31

59:                                               ; preds = %31
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %1, align 8
  %62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %61, i32 0, i32 1
  %63 = load %struct.cgraph_node*, %struct.cgraph_node** %62, align 8
  store %struct.cgraph_node* %63, %struct.cgraph_node** %1, align 8
  br label %24

64:                                               ; preds = %24
  ret void
}

declare dso_local i32 @ipa_method_formal_compute_count(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_compute_tree_map(%struct.cgraph_node*) #1

declare dso_local i32 @ipcp_method_cval_init(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_compute_modify(%struct.cgraph_node*) #1

declare dso_local i32 @ipcp_method_compute_scale(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_callsite_compute_count(%struct.cgraph_edge*) #1

declare dso_local i64 @ipa_callsite_param_count(%struct.cgraph_edge*) #1

declare dso_local i64 @ipa_method_formal_count(i32) #1

declare dso_local i32 @ipa_callsite_param_count_set(%struct.cgraph_edge*, i32) #1

declare dso_local i32 @ipa_method_formal_count_set(i32, i32) #1

declare dso_local i32 @ipa_callsite_compute_param(%struct.cgraph_edge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
