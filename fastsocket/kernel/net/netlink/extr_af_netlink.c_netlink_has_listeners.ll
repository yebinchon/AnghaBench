; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_has_listeners.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_has_listeners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sock = type { i64 }

@nl_table = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlink_has_listeners(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @netlink_is_kernel(%struct.sock* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64* @rcu_dereference(i32 %20)
  store i64* %21, i64** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub i32 %22, 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl_table, align 8
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %23, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = sub i32 %33, 1
  %35 = load i64*, i64** %6, align 8
  %36 = call i32 @test_bit(i32 %34, i64* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %2
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netlink_is_kernel(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
