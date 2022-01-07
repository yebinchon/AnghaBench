; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_method_modify_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-prop.c_ipa_method_modify_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32 }

@PARM_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, i32)* @ipa_method_modify_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipa_method_modify_stmt(%struct.cgraph_node* %0, i32 %1) #0 {
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %42 [
    i32 128, label %9
    i32 129, label %28
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TREE_OPERAND(i32 %10, i32 0)
  %12 = call i32 @TREE_CODE(i32 %11)
  %13 = load i32, i32* @PARM_DECL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 0)
  %19 = call i32 @ipa_method_tree_map(%struct.cgraph_node* %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ipa_method_modify_set(%struct.cgraph_node* %23, i32 %24, i32 1)
  br label %26

26:                                               ; preds = %22, %15
  br label %27

27:                                               ; preds = %26, %9
  br label %43

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %38, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %32 = call i32 @ipa_method_formal_count(%struct.cgraph_node* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ipa_method_modify_set(%struct.cgraph_node* %35, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %29

41:                                               ; preds = %29
  br label %43

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %42, %41, %27
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @ipa_method_tree_map(%struct.cgraph_node*, i32) #1

declare dso_local i32 @ipa_method_modify_set(%struct.cgraph_node*, i32, i32) #1

declare dso_local i32 @ipa_method_formal_count(%struct.cgraph_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
