; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_method_compute_tree_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_method_compute_tree_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i64 }
%struct.TYPE_2__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipa_method_compute_tree_map(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %8 = call i32 @ipa_method_tree_map_create(%struct.cgraph_node* %7)
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %10 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @DECL_ARGUMENTS(i64 %12)
  store i64 %13, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %29, %1
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %21 = call %struct.TYPE_2__* @IPA_NODE_REF(%struct.cgraph_node* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 %19, i64* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_CHAIN(i64 %30)
  store i64 %31, i64* %5, align 8
  br label %15

32:                                               ; preds = %15
  ret void
}

declare dso_local i32 @ipa_method_tree_map_create(%struct.cgraph_node*) #1

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local %struct.TYPE_2__* @IPA_NODE_REF(%struct.cgraph_node*) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
