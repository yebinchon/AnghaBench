; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_trie_rebalance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_trie_rebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32 }
%struct.tnode = type { i32, i32, i32 }
%struct.node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trie*, %struct.tnode*)* @trie_rebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trie_rebalance(%struct.trie* %0, %struct.tnode* %1) #0 {
  %3 = alloca %struct.trie*, align 8
  %4 = alloca %struct.tnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tnode*, align 8
  store %struct.trie* %0, %struct.trie** %3, align 8
  store %struct.tnode* %1, %struct.tnode** %4, align 8
  %9 = load %struct.tnode*, %struct.tnode** %4, align 8
  %10 = getelementptr inbounds %struct.tnode, %struct.tnode* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %63, %2
  %13 = load %struct.tnode*, %struct.tnode** %4, align 8
  %14 = icmp ne %struct.tnode* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.tnode*, %struct.tnode** %4, align 8
  %17 = bitcast %struct.tnode* %16 to %struct.node*
  %18 = call %struct.tnode* @node_parent(%struct.node* %17)
  store %struct.tnode* %18, %struct.tnode** %8, align 8
  %19 = icmp ne %struct.tnode* %18, null
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %65

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.tnode*, %struct.tnode** %8, align 8
  %25 = getelementptr inbounds %struct.tnode, %struct.tnode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tnode*, %struct.tnode** %8, align 8
  %28 = getelementptr inbounds %struct.tnode, %struct.tnode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tkey_extract_bits(i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.tnode*, %struct.tnode** %8, align 8
  %32 = load %struct.tnode*, %struct.tnode** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @tnode_get_child(%struct.tnode* %32, i32 %33)
  %35 = call i32 @tnode_full(%struct.tnode* %31, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.trie*, %struct.trie** %3, align 8
  %37 = load %struct.tnode*, %struct.tnode** %4, align 8
  %38 = call i64 @resize(%struct.trie* %36, %struct.tnode* %37)
  %39 = inttoptr i64 %38 to %struct.tnode*
  store %struct.tnode* %39, %struct.tnode** %4, align 8
  %40 = load %struct.tnode*, %struct.tnode** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.tnode*, %struct.tnode** %4, align 8
  %43 = bitcast %struct.tnode* %42 to %struct.node*
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @tnode_put_child_reorg(%struct.tnode* %40, i32 %41, %struct.node* %43, i32 %44)
  %46 = load %struct.tnode*, %struct.tnode** %4, align 8
  %47 = bitcast %struct.tnode* %46 to %struct.node*
  %48 = call %struct.tnode* @node_parent(%struct.node* %47)
  store %struct.tnode* %48, %struct.tnode** %8, align 8
  %49 = load %struct.tnode*, %struct.tnode** %8, align 8
  %50 = icmp ne %struct.tnode* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %22
  %52 = load %struct.trie*, %struct.trie** %3, align 8
  %53 = getelementptr inbounds %struct.trie, %struct.trie* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tnode*, %struct.tnode** %4, align 8
  %56 = bitcast %struct.tnode* %55 to %struct.node*
  %57 = call i32 @rcu_assign_pointer(i32 %54, %struct.node* %56)
  br label %58

58:                                               ; preds = %51, %22
  %59 = call i32 (...) @tnode_free_flush()
  %60 = load %struct.tnode*, %struct.tnode** %8, align 8
  %61 = icmp ne %struct.tnode* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %65

63:                                               ; preds = %58
  %64 = load %struct.tnode*, %struct.tnode** %8, align 8
  store %struct.tnode* %64, %struct.tnode** %4, align 8
  br label %12

65:                                               ; preds = %62, %20
  %66 = load %struct.tnode*, %struct.tnode** %4, align 8
  %67 = call i64 @IS_TNODE(%struct.tnode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.trie*, %struct.trie** %3, align 8
  %71 = load %struct.tnode*, %struct.tnode** %4, align 8
  %72 = call i64 @resize(%struct.trie* %70, %struct.tnode* %71)
  %73 = inttoptr i64 %72 to %struct.tnode*
  store %struct.tnode* %73, %struct.tnode** %4, align 8
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.trie*, %struct.trie** %3, align 8
  %76 = getelementptr inbounds %struct.trie, %struct.trie* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tnode*, %struct.tnode** %4, align 8
  %79 = bitcast %struct.tnode* %78 to %struct.node*
  %80 = call i32 @rcu_assign_pointer(i32 %77, %struct.node* %79)
  %81 = call i32 (...) @tnode_free_flush()
  ret void
}

declare dso_local %struct.tnode* @node_parent(%struct.node*) #1

declare dso_local i32 @tkey_extract_bits(i32, i32, i32) #1

declare dso_local i32 @tnode_full(%struct.tnode*, i32) #1

declare dso_local i32 @tnode_get_child(%struct.tnode*, i32) #1

declare dso_local i64 @resize(%struct.trie*, %struct.tnode*) #1

declare dso_local i32 @tnode_put_child_reorg(%struct.tnode*, i32, %struct.node*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.node*) #1

declare dso_local i32 @tnode_free_flush(...) #1

declare dso_local i64 @IS_TNODE(%struct.tnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
