; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fn_trie_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_fn_trie_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_table = type { i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.leaf = type { i32 }
%struct.trie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_table*, %struct.sk_buff*, %struct.netlink_callback*)* @fn_trie_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_trie_dump(%struct.fib_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_table*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.leaf*, align 8
  %9 = alloca %struct.trie*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fib_table* %0, %struct.fib_table** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %12 = load %struct.fib_table*, %struct.fib_table** %5, align 8
  %13 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.trie*
  store %struct.trie* %15, %struct.trie** %9, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.trie*, %struct.trie** %9, align 8
  %31 = call %struct.leaf* @trie_firstleaf(%struct.trie* %30)
  store %struct.leaf* %31, %struct.leaf** %8, align 8
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.trie*, %struct.trie** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.leaf* @fib_find_node(%struct.trie* %33, i32 %34)
  store %struct.leaf* %35, %struct.leaf** %8, align 8
  %36 = load %struct.leaf*, %struct.leaf** %8, align 8
  %37 = icmp ne %struct.leaf* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load %struct.trie*, %struct.trie** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call %struct.leaf* @trie_leafindex(%struct.trie* %39, i32 %40)
  store %struct.leaf* %41, %struct.leaf** %8, align 8
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %68, %43
  %45 = load %struct.leaf*, %struct.leaf** %8, align 8
  %46 = icmp ne %struct.leaf* %45, null
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = load %struct.leaf*, %struct.leaf** %8, align 8
  %49 = getelementptr inbounds %struct.leaf, %struct.leaf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %52 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %50, i32* %54, align 4
  %55 = load %struct.leaf*, %struct.leaf** %8, align 8
  %56 = load %struct.fib_table*, %struct.fib_table** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %59 = call i64 @fn_trie_dump_leaf(%struct.leaf* %55, %struct.fib_table* %56, %struct.sk_buff* %57, %struct.netlink_callback* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %47
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %64 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  store i32 %62, i32* %66, align 4
  %67 = call i32 (...) @rcu_read_unlock()
  store i32 -1, i32* %4, align 4
  br label %88

68:                                               ; preds = %47
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load %struct.leaf*, %struct.leaf** %8, align 8
  %72 = call %struct.leaf* @trie_nextleaf(%struct.leaf* %71)
  store %struct.leaf* %72, %struct.leaf** %8, align 8
  %73 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %74 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = call i32 @memset(i32* %76, i32 0, i32 -8)
  br label %44

78:                                               ; preds = %44
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %81 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 %79, i32* %83, align 4
  %84 = call i32 (...) @rcu_read_unlock()
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %78, %61
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.leaf* @trie_firstleaf(%struct.trie*) #1

declare dso_local %struct.leaf* @fib_find_node(%struct.trie*, i32) #1

declare dso_local %struct.leaf* @trie_leafindex(%struct.trie*, i32) #1

declare dso_local i64 @fn_trie_dump_leaf(%struct.leaf*, %struct.fib_table*, %struct.sk_buff*, %struct.netlink_callback*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.leaf* @trie_nextleaf(%struct.leaf*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
