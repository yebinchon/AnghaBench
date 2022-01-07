; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c___inet6_csk_dst_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_inet6_connection_sock.c___inet6_csk_dst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.in6_addr = type { i32 }

@flow_cache_genid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.dst_entry*, %struct.in6_addr*, %struct.in6_addr*)* @__inet6_csk_dst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__inet6_csk_dst_store(%struct.sock* %0, %struct.dst_entry* %1, %struct.in6_addr* %2, %struct.in6_addr* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %8, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %11 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %13 = call i32 @__ip6_dst_store(%struct.sock* %9, %struct.dst_entry* %10, %struct.in6_addr* %11, %struct.in6_addr* %12)
  ret void
}

declare dso_local i32 @__ip6_dst_store(%struct.sock*, %struct.dst_entry*, %struct.in6_addr*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
