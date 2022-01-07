; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_spi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xfrm6_tunnel_spi = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"xfrm6_tunnel_spi\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@xfrm6_tunnel_spi_kmem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRM6_TUNNEL_SPI_BYADDR_HSIZE = common dso_local global i32 0, align 4
@xfrm6_tunnel_spi_byaddr = common dso_local global i32* null, align 8
@XFRM6_TUNNEL_SPI_BYSPI_HSIZE = common dso_local global i32 0, align 4
@xfrm6_tunnel_spi_byspi = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xfrm6_tunnel_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm6_tunnel_spi_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i64 0, i64* @xfrm6_tunnel_spi, align 8
  %3 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %4 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %3, i32* null)
  store i32 %4, i32* @xfrm6_tunnel_spi_kmem, align 4
  %5 = load i32, i32* @xfrm6_tunnel_spi_kmem, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %39

10:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @XFRM6_TUNNEL_SPI_BYADDR_HSIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32*, i32** @xfrm6_tunnel_spi_byaddr, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @INIT_HLIST_HEAD(i32* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %11

24:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @XFRM6_TUNNEL_SPI_BYSPI_HSIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32*, i32** @xfrm6_tunnel_spi_byspi, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @INIT_HLIST_HEAD(i32* %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %25

38:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
