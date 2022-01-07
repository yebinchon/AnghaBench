; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_port* }
%struct.bitmap_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_set*)* @bitmap_port_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_port_flush(%struct.ip_set* %0) #0 {
  %2 = alloca %struct.ip_set*, align 8
  %3 = alloca %struct.bitmap_port*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %2, align 8
  %4 = load %struct.ip_set*, %struct.ip_set** %2, align 8
  %5 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %4, i32 0, i32 0
  %6 = load %struct.bitmap_port*, %struct.bitmap_port** %5, align 8
  store %struct.bitmap_port* %6, %struct.bitmap_port** %3, align 8
  %7 = load %struct.bitmap_port*, %struct.bitmap_port** %3, align 8
  %8 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bitmap_port*, %struct.bitmap_port** %3, align 8
  %11 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %9, i32 0, i32 %12)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
