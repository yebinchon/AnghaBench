; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fib_find_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fib_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.leaf = type { i32 }
%struct.trie = type { i32 }
%struct.tnode = type { i32, i32, i32 }
%struct.node = type { i32 }

@T_TNODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.leaf* (%struct.trie*, i32)* @fib_find_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.leaf* @fib_find_node(%struct.trie* %0, i32 %1) #0 {
  %3 = alloca %struct.leaf*, align 8
  %4 = alloca %struct.trie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tnode*, align 8
  %8 = alloca %struct.node*, align 8
  store %struct.trie* %0, %struct.trie** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.trie*, %struct.trie** %4, align 8
  %10 = getelementptr inbounds %struct.trie, %struct.trie* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.node* @rcu_dereference(i32 %11)
  store %struct.node* %12, %struct.node** %8, align 8
  br label %13

13:                                               ; preds = %59, %2
  %14 = load %struct.node*, %struct.node** %8, align 8
  %15 = icmp ne %struct.node* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.node*, %struct.node** %8, align 8
  %18 = call i64 @NODE_TYPE(%struct.node* %17)
  %19 = load i64, i64* @T_TNODE, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %60

23:                                               ; preds = %21
  %24 = load %struct.node*, %struct.node** %8, align 8
  %25 = bitcast %struct.node* %24 to %struct.tnode*
  store %struct.tnode* %25, %struct.tnode** %7, align 8
  %26 = load %struct.tnode*, %struct.tnode** %7, align 8
  %27 = call i32 @check_tnode(%struct.tnode* %26)
  %28 = load %struct.tnode*, %struct.tnode** %7, align 8
  %29 = getelementptr inbounds %struct.tnode, %struct.tnode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.tnode*, %struct.tnode** %7, align 8
  %33 = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @tkey_sub_equals(i32 %30, i32 %31, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %23
  %41 = load %struct.tnode*, %struct.tnode** %7, align 8
  %42 = getelementptr inbounds %struct.tnode, %struct.tnode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tnode*, %struct.tnode** %7, align 8
  %45 = getelementptr inbounds %struct.tnode, %struct.tnode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.tnode*, %struct.tnode** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.tnode*, %struct.tnode** %7, align 8
  %51 = getelementptr inbounds %struct.tnode, %struct.tnode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tnode*, %struct.tnode** %7, align 8
  %54 = getelementptr inbounds %struct.tnode, %struct.tnode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @tkey_extract_bits(i32 %49, i32 %52, i32 %55)
  %57 = call %struct.node* @tnode_get_child_rcu(%struct.tnode* %48, i32 %56)
  store %struct.node* %57, %struct.node** %8, align 8
  br label %59

58:                                               ; preds = %23
  br label %60

59:                                               ; preds = %40
  br label %13

60:                                               ; preds = %58, %21
  %61 = load %struct.node*, %struct.node** %8, align 8
  %62 = icmp ne %struct.node* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.node*, %struct.node** %8, align 8
  %65 = call i64 @IS_LEAF(%struct.node* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.node*, %struct.node** %8, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @tkey_equals(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.node*, %struct.node** %8, align 8
  %76 = bitcast %struct.node* %75 to %struct.leaf*
  store %struct.leaf* %76, %struct.leaf** %3, align 8
  br label %78

77:                                               ; preds = %67, %63, %60
  store %struct.leaf* null, %struct.leaf** %3, align 8
  br label %78

78:                                               ; preds = %77, %74
  %79 = load %struct.leaf*, %struct.leaf** %3, align 8
  ret %struct.leaf* %79
}

declare dso_local %struct.node* @rcu_dereference(i32) #1

declare dso_local i64 @NODE_TYPE(%struct.node*) #1

declare dso_local i32 @check_tnode(%struct.tnode*) #1

declare dso_local i64 @tkey_sub_equals(i32, i32, i32, i32) #1

declare dso_local %struct.node* @tnode_get_child_rcu(%struct.tnode*, i32) #1

declare dso_local i32 @tkey_extract_bits(i32, i32, i32) #1

declare dso_local i64 @IS_LEAF(%struct.node*) #1

declare dso_local i64 @tkey_equals(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
