; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_method_cval_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_method_cval_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32 }

@TOP = common dso_local global i32 0, align 4
@BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*)* @ipcp_method_cval_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_method_cval_init(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %6 = call i32 @ipcp_formal_create(%struct.cgraph_node* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %10 = call i32 @ipa_method_formal_count(%struct.cgraph_node* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ipa_method_get_tree(%struct.cgraph_node* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  %18 = call i64 @INTEGRAL_TYPE_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i64 @SCALAR_FLOAT_TYPE_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  %28 = call i64 @POINTER_TYPE_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %20, %12
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @TOP, align 4
  %34 = call i32 @ipcp_method_cval_set_cvalue_type(%struct.cgraph_node* %31, i32 %32, i32 %33)
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @BOTTOM, align 4
  %39 = call i32 @ipcp_method_cval_set_cvalue_type(%struct.cgraph_node* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %7

44:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ipcp_formal_create(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_formal_count(%struct.cgraph_node*) #1

declare dso_local i32 @ipa_method_get_tree(%struct.cgraph_node*, i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @SCALAR_FLOAT_TYPE_P(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @ipcp_method_cval_set_cvalue_type(%struct.cgraph_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
