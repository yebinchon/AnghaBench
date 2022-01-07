; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_trie_nextleaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_trie_nextleaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.leaf = type { i32 }
%struct.node = type { i32 }
%struct.tnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.leaf* (%struct.leaf*)* @trie_nextleaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.leaf* @trie_nextleaf(%struct.leaf* %0) #0 {
  %2 = alloca %struct.leaf*, align 8
  %3 = alloca %struct.leaf*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.tnode*, align 8
  store %struct.leaf* %0, %struct.leaf** %3, align 8
  %6 = load %struct.leaf*, %struct.leaf** %3, align 8
  %7 = bitcast %struct.leaf* %6 to %struct.node*
  store %struct.node* %7, %struct.node** %4, align 8
  %8 = load %struct.node*, %struct.node** %4, align 8
  %9 = call %struct.tnode* @node_parent_rcu(%struct.node* %8)
  store %struct.tnode* %9, %struct.tnode** %5, align 8
  %10 = load %struct.tnode*, %struct.tnode** %5, align 8
  %11 = icmp ne %struct.tnode* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.leaf* null, %struct.leaf** %2, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.tnode*, %struct.tnode** %5, align 8
  %15 = load %struct.node*, %struct.node** %4, align 8
  %16 = call %struct.leaf* @leaf_walk_rcu(%struct.tnode* %14, %struct.node* %15)
  store %struct.leaf* %16, %struct.leaf** %2, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load %struct.leaf*, %struct.leaf** %2, align 8
  ret %struct.leaf* %18
}

declare dso_local %struct.tnode* @node_parent_rcu(%struct.node*) #1

declare dso_local %struct.leaf* @leaf_walk_rcu(%struct.tnode*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
