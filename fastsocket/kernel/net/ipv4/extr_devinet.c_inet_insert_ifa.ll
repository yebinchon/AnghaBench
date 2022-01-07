; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_insert_ifa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_insert_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_ifaddr*)* @inet_insert_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_insert_ifa(%struct.in_ifaddr* %0) #0 {
  %2 = alloca %struct.in_ifaddr*, align 8
  store %struct.in_ifaddr* %0, %struct.in_ifaddr** %2, align 8
  %3 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %4 = call i32 @__inet_insert_ifa(%struct.in_ifaddr* %3, i32* null, i32 0)
  ret i32 %4
}

declare dso_local i32 @__inet_insert_ifa(%struct.in_ifaddr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
