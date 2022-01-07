; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_redirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { %struct.cgraph_node*, %struct.cgraph_node* }
%struct.cgraph_node = type { i32 }
%struct.ipa_jump_func = type { i32 }

@CONST_IPATYPE = common dso_local global i32 0, align 4
@CONST_IPATYPE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgraph_edge*)* @ipcp_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcp_redirect(%struct.cgraph_edge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_edge*, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca %struct.cgraph_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipa_jump_func*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cgraph_edge* %0, %struct.cgraph_edge** %3, align 8
  %12 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %13 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %12, i32 0, i32 1
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %13, align 8
  store %struct.cgraph_node* %14, %struct.cgraph_node** %4, align 8
  %15 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %16 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %15, i32 0, i32 0
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %16, align 8
  store %struct.cgraph_node* %17, %struct.cgraph_node** %5, align 8
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %19 = call %struct.cgraph_node* @ipcp_method_orig_node(%struct.cgraph_node* %18)
  store %struct.cgraph_node* %19, %struct.cgraph_node** %6, align 8
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %21 = call i32 @ipa_method_formal_count(%struct.cgraph_node* %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %50, %1
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ipcp_method_cval(%struct.cgraph_node* %27, i32 %28)
  %30 = call i32 @ipcp_cval_get_cvalue_type(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @ipcp_type_is_const(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.ipa_jump_func* @ipa_callsite_param(%struct.cgraph_edge* %35, i32 %36)
  store %struct.ipa_jump_func* %37, %struct.ipa_jump_func** %9, align 8
  %38 = load %struct.ipa_jump_func*, %struct.ipa_jump_func** %9, align 8
  %39 = call i32 @get_type(%struct.ipa_jump_func* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @CONST_IPATYPE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @CONST_IPATYPE_REF, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %54

48:                                               ; preds = %43, %34
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %22

53:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.cgraph_node* @ipcp_method_orig_node(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_formal_count(%struct.cgraph_node*) #1

declare dso_local i32 @ipcp_cval_get_cvalue_type(i32) #1

declare dso_local i32 @ipcp_method_cval(%struct.cgraph_node*, i32) #1

declare dso_local i64 @ipcp_type_is_const(i32) #1

declare dso_local %struct.ipa_jump_func* @ipa_callsite_param(%struct.cgraph_edge*, i32) #1

declare dso_local i32 @get_type(%struct.ipa_jump_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
