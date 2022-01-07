; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_dump_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_dump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_table = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.fib6_walker_t = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_table*, %struct.sk_buff*, %struct.netlink_callback*)* @fib6_dump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_dump_table(%struct.fib6_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca %struct.fib6_table*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.fib6_walker_t*, align 8
  %8 = alloca i32, align 4
  store %struct.fib6_table* %0, %struct.fib6_table** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %6, align 8
  %9 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %10 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.fib6_walker_t*
  store %struct.fib6_walker_t* %16, %struct.fib6_walker_t** %7, align 8
  %17 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %18 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %17, i32 0, i32 1
  %19 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %7, align 8
  %20 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %3
  %28 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %29 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %28, i32 0, i32 0
  %30 = call i32 @read_lock_bh(i32* %29)
  %31 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %7, align 8
  %32 = call i32 @fib6_walk(%struct.fib6_walker_t* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %34 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %33, i32 0, i32 0
  %35 = call i32 @read_unlock_bh(i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %40 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %27
  br label %63

44:                                               ; preds = %3
  %45 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %46 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %45, i32 0, i32 0
  %47 = call i32 @read_lock_bh(i32* %46)
  %48 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %7, align 8
  %49 = call i32 @fib6_walk_continue(%struct.fib6_walker_t* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %51 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %50, i32 0, i32 0
  %52 = call i32 @read_unlock_bh(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %7, align 8
  %57 = call i32 @fib6_walker_unlink(%struct.fib6_walker_t* %56)
  %58 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %59 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %44
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @fib6_walk(%struct.fib6_walker_t*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @fib6_walk_continue(%struct.fib6_walker_t*) #1

declare dso_local i32 @fib6_walker_unlink(%struct.fib6_walker_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
