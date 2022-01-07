; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_tnode_free_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_tnode_free_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { %struct.tnode* }

@tnode_free_head = common dso_local global %struct.tnode* null, align 8
@tnode_free_size = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@sync_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tnode_free_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tnode_free_flush() #0 {
  %1 = alloca %struct.tnode*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load %struct.tnode*, %struct.tnode** @tnode_free_head, align 8
  store %struct.tnode* %3, %struct.tnode** %1, align 8
  %4 = icmp ne %struct.tnode* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load %struct.tnode*, %struct.tnode** %1, align 8
  %7 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 0
  %8 = load %struct.tnode*, %struct.tnode** %7, align 8
  store %struct.tnode* %8, %struct.tnode** @tnode_free_head, align 8
  %9 = load %struct.tnode*, %struct.tnode** %1, align 8
  %10 = getelementptr inbounds %struct.tnode, %struct.tnode* %9, i32 0, i32 0
  store %struct.tnode* null, %struct.tnode** %10, align 8
  %11 = load %struct.tnode*, %struct.tnode** %1, align 8
  %12 = call i32 @tnode_free(%struct.tnode* %11)
  br label %2

13:                                               ; preds = %2
  %14 = load i32, i32* @tnode_free_size, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load i32, i32* @sync_pages, align 4
  %17 = mul nsw i32 %15, %16
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  store i32 0, i32* @tnode_free_size, align 4
  %20 = call i32 (...) @synchronize_rcu()
  br label %21

21:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @tnode_free(%struct.tnode*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
