; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_trie_leafindex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_trie_leafindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.leaf = type { i32 }
%struct.trie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.leaf* (%struct.trie*, i32)* @trie_leafindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.leaf* @trie_leafindex(%struct.trie* %0, i32 %1) #0 {
  %3 = alloca %struct.trie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.leaf*, align 8
  store %struct.trie* %0, %struct.trie** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.trie*, %struct.trie** %3, align 8
  %7 = call %struct.leaf* @trie_firstleaf(%struct.trie* %6)
  store %struct.leaf* %7, %struct.leaf** %5, align 8
  br label %8

8:                                                ; preds = %17, %2
  %9 = load %struct.leaf*, %struct.leaf** %5, align 8
  %10 = icmp ne %struct.leaf* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp sgt i32 %12, 0
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load %struct.leaf*, %struct.leaf** %5, align 8
  %19 = call %struct.leaf* @trie_nextleaf(%struct.leaf* %18)
  store %struct.leaf* %19, %struct.leaf** %5, align 8
  br label %8

20:                                               ; preds = %15
  %21 = load %struct.leaf*, %struct.leaf** %5, align 8
  ret %struct.leaf* %21
}

declare dso_local %struct.leaf* @trie_firstleaf(%struct.trie*) #1

declare dso_local %struct.leaf* @trie_nextleaf(%struct.leaf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
