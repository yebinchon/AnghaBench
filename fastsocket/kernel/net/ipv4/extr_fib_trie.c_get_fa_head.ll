; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_get_fa_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_get_fa_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.leaf = type { i32 }
%struct.leaf_info = type { %struct.list_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.leaf*, i32)* @get_fa_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @get_fa_head(%struct.leaf* %0, i32 %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.leaf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.leaf_info*, align 8
  store %struct.leaf* %0, %struct.leaf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.leaf*, %struct.leaf** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.leaf_info* @find_leaf_info(%struct.leaf* %7, i32 %8)
  store %struct.leaf_info* %9, %struct.leaf_info** %6, align 8
  %10 = load %struct.leaf_info*, %struct.leaf_info** %6, align 8
  %11 = icmp ne %struct.leaf_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.list_head* null, %struct.list_head** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.leaf_info*, %struct.leaf_info** %6, align 8
  %15 = getelementptr inbounds %struct.leaf_info, %struct.leaf_info* %14, i32 0, i32 0
  store %struct.list_head* %15, %struct.list_head** %3, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.list_head*, %struct.list_head** %3, align 8
  ret %struct.list_head* %17
}

declare dso_local %struct.leaf_info* @find_leaf_info(%struct.leaf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
