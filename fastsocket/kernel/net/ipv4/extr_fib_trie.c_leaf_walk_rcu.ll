; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_leaf_walk_rcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_leaf_walk_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.leaf = type { i32 }
%struct.tnode = type { i32, i32*, i32 }
%struct.node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.leaf* (%struct.tnode*, %struct.node*)* @leaf_walk_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.leaf* @leaf_walk_rcu(%struct.tnode* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.leaf*, align 8
  %4 = alloca %struct.tnode*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  store %struct.tnode* %0, %struct.tnode** %4, align 8
  store %struct.node* %1, %struct.node** %5, align 8
  br label %7

7:                                                ; preds = %60, %2
  %8 = load %struct.node*, %struct.node** %5, align 8
  %9 = icmp ne %struct.node* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.node*, %struct.node** %5, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tnode*, %struct.tnode** %4, align 8
  %15 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tnode*, %struct.tnode** %4, align 8
  %18 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @tkey_extract_bits(i32 %13, i32 %16, i32 %19)
  %21 = add i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %23

22:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %10
  br label %24

24:                                               ; preds = %54, %38, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.tnode*, %struct.tnode** %4, align 8
  %27 = getelementptr inbounds %struct.tnode, %struct.tnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %24
  %32 = load %struct.tnode*, %struct.tnode** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = call %struct.node* @tnode_get_child_rcu(%struct.tnode* %32, i32 %33)
  store %struct.node* %35, %struct.node** %5, align 8
  %36 = load %struct.node*, %struct.node** %5, align 8
  %37 = icmp ne %struct.node* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %24

39:                                               ; preds = %31
  %40 = load %struct.node*, %struct.node** %5, align 8
  %41 = call i64 @IS_LEAF(%struct.node* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.tnode*, %struct.tnode** %4, align 8
  %45 = getelementptr inbounds %struct.tnode, %struct.tnode* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @prefetch(i32 %50)
  %52 = load %struct.node*, %struct.node** %5, align 8
  %53 = bitcast %struct.node* %52 to %struct.leaf*
  store %struct.leaf* %53, %struct.leaf** %3, align 8
  br label %65

54:                                               ; preds = %39
  %55 = load %struct.node*, %struct.node** %5, align 8
  %56 = bitcast %struct.node* %55 to %struct.tnode*
  store %struct.tnode* %56, %struct.tnode** %4, align 8
  store i32 0, i32* %6, align 4
  br label %24

57:                                               ; preds = %24
  %58 = load %struct.tnode*, %struct.tnode** %4, align 8
  %59 = bitcast %struct.tnode* %58 to %struct.node*
  store %struct.node* %59, %struct.node** %5, align 8
  br label %60

60:                                               ; preds = %57
  %61 = load %struct.node*, %struct.node** %5, align 8
  %62 = call %struct.tnode* @node_parent_rcu(%struct.node* %61)
  store %struct.tnode* %62, %struct.tnode** %4, align 8
  %63 = icmp ne %struct.tnode* %62, null
  br i1 %63, label %7, label %64

64:                                               ; preds = %60
  store %struct.leaf* null, %struct.leaf** %3, align 8
  br label %65

65:                                               ; preds = %64, %43
  %66 = load %struct.leaf*, %struct.leaf** %3, align 8
  ret %struct.leaf* %66
}

declare dso_local i32 @tkey_extract_bits(i32, i32, i32) #1

declare dso_local %struct.node* @tnode_get_child_rcu(%struct.tnode*, i32) #1

declare dso_local i64 @IS_LEAF(%struct.node*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local %struct.tnode* @node_parent_rcu(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
