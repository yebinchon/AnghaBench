; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_link_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_link_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.fib6_table = type { i32, i32, i32 }

@FIB6_TABLE_HASHSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib6_table*)* @fib6_link_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_link_table(%struct.net* %0, %struct.fib6_table* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.fib6_table*, align 8
  %5 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %4, align 8
  %6 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %7 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %6, i32 0, i32 2
  %8 = call i32 @rwlock_init(i32* %7)
  %9 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %10 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FIB6_TABLE_HASHSZ, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %16 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %15, i32 0, i32 1
  %17 = load %struct.net*, %struct.net** %3, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @hlist_add_head_rcu(i32* %16, i32* %23)
  ret void
}

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
