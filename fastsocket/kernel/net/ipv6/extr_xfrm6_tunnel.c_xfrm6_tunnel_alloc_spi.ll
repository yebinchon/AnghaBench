; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_alloc_spi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_alloc_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm6_tunnel_spi = type { i32, i32 }

@xfrm6_tunnel_spi_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm6_tunnel_alloc_spi(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.xfrm6_tunnel_spi*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 @write_lock_bh(i32* @xfrm6_tunnel_spi_lock)
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.xfrm6_tunnel_spi* @__xfrm6_tunnel_spi_lookup(i32* %6)
  store %struct.xfrm6_tunnel_spi* %7, %struct.xfrm6_tunnel_spi** %3, align 8
  %8 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %3, align 8
  %9 = icmp ne %struct.xfrm6_tunnel_spi* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %3, align 8
  %12 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %11, i32 0, i32 1
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %3, align 8
  %15 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @__xfrm6_tunnel_alloc_spi(i32* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = call i32 @write_unlock_bh(i32* @xfrm6_tunnel_spi_lock)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @htonl(i32 %22)
  ret i32 %23
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.xfrm6_tunnel_spi* @__xfrm6_tunnel_spi_lookup(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__xfrm6_tunnel_alloc_spi(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
