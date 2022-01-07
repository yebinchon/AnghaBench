; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fn_trie_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fn_trie_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_table = type { i64 }
%struct.trie = type { i32 }
%struct.leaf = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"trie_flush found=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_table*)* @fn_trie_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_trie_flush(%struct.fib_table* %0) #0 {
  %2 = alloca %struct.fib_table*, align 8
  %3 = alloca %struct.trie*, align 8
  %4 = alloca %struct.leaf*, align 8
  %5 = alloca %struct.leaf*, align 8
  %6 = alloca i32, align 4
  store %struct.fib_table* %0, %struct.fib_table** %2, align 8
  %7 = load %struct.fib_table*, %struct.fib_table** %2, align 8
  %8 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.trie*
  store %struct.trie* %10, %struct.trie** %3, align 8
  store %struct.leaf* null, %struct.leaf** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.trie*, %struct.trie** %3, align 8
  %12 = call %struct.leaf* @trie_firstleaf(%struct.trie* %11)
  store %struct.leaf* %12, %struct.leaf** %4, align 8
  br label %13

13:                                               ; preds = %36, %1
  %14 = load %struct.leaf*, %struct.leaf** %4, align 8
  %15 = icmp ne %struct.leaf* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load %struct.leaf*, %struct.leaf** %4, align 8
  %18 = call i64 @trie_flush_leaf(%struct.leaf* %17)
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.leaf*, %struct.leaf** %5, align 8
  %24 = icmp ne %struct.leaf* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load %struct.leaf*, %struct.leaf** %5, align 8
  %27 = getelementptr inbounds %struct.leaf, %struct.leaf* %26, i32 0, i32 0
  %28 = call i64 @hlist_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.trie*, %struct.trie** %3, align 8
  %32 = load %struct.leaf*, %struct.leaf** %5, align 8
  %33 = call i32 @trie_leaf_remove(%struct.trie* %31, %struct.leaf* %32)
  br label %34

34:                                               ; preds = %30, %25, %16
  %35 = load %struct.leaf*, %struct.leaf** %4, align 8
  store %struct.leaf* %35, %struct.leaf** %5, align 8
  br label %36

36:                                               ; preds = %34
  %37 = load %struct.leaf*, %struct.leaf** %4, align 8
  %38 = call %struct.leaf* @trie_nextleaf(%struct.leaf* %37)
  store %struct.leaf* %38, %struct.leaf** %4, align 8
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.leaf*, %struct.leaf** %5, align 8
  %41 = icmp ne %struct.leaf* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.leaf*, %struct.leaf** %5, align 8
  %44 = getelementptr inbounds %struct.leaf, %struct.leaf* %43, i32 0, i32 0
  %45 = call i64 @hlist_empty(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.trie*, %struct.trie** %3, align 8
  %49 = load %struct.leaf*, %struct.leaf** %5, align 8
  %50 = call i32 @trie_leaf_remove(%struct.trie* %48, %struct.leaf* %49)
  br label %51

51:                                               ; preds = %47, %42, %39
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.leaf* @trie_firstleaf(%struct.trie*) #1

declare dso_local i64 @trie_flush_leaf(%struct.leaf*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @trie_leaf_remove(%struct.trie*, %struct.leaf*) #1

declare dso_local %struct.leaf* @trie_nextleaf(%struct.leaf*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
