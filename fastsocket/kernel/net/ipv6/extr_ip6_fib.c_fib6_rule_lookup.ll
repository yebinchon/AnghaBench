; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_rule_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_rule_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.flowi = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @fib6_rule_lookup(%struct.net* %0, %struct.flowi* %1, i32 %2, i64 (%struct.net*, i32, %struct.flowi*, i32)* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64 (%struct.net*, i32, %struct.flowi*, i32)*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 (%struct.net*, i32, %struct.flowi*, i32)* %3, i64 (%struct.net*, i32, %struct.flowi*, i32)** %8, align 8
  %9 = load i64 (%struct.net*, i32, %struct.flowi*, i32)*, i64 (%struct.net*, i32, %struct.flowi*, i32)** %8, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.flowi*, %struct.flowi** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 %9(%struct.net* %10, i32 %14, %struct.flowi* %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.dst_entry*
  ret %struct.dst_entry* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
