; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_tunnel.c___xfrm6_tunnel_alloc_spi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_tunnel.c___xfrm6_tunnel_alloc_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm6_tunnel_spi = type { i32, i32, i32, i64, i32 }

@xfrm6_tunnel_spi = common dso_local global i64 0, align 8
@XFRM6_TUNNEL_SPI_MIN = common dso_local global i64 0, align 8
@XFRM6_TUNNEL_SPI_MAX = common dso_local global i64 0, align 8
@xfrm6_tunnel_spi_kmem = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@xfrm6_tunnel_spi_byspi = common dso_local global i32* null, align 8
@xfrm6_tunnel_spi_byaddr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @__xfrm6_tunnel_alloc_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__xfrm6_tunnel_alloc_spi(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.xfrm6_tunnel_spi*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i64, i64* @xfrm6_tunnel_spi, align 8
  %7 = load i64, i64* @XFRM6_TUNNEL_SPI_MIN, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @xfrm6_tunnel_spi, align 8
  %11 = load i64, i64* @XFRM6_TUNNEL_SPI_MAX, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i64, i64* @XFRM6_TUNNEL_SPI_MIN, align 8
  store i64 %14, i64* @xfrm6_tunnel_spi, align 8
  br label %18

15:                                               ; preds = %9
  %16 = load i64, i64* @xfrm6_tunnel_spi, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @xfrm6_tunnel_spi, align 8
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i64, i64* @xfrm6_tunnel_spi, align 8
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %31, %18
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @XFRM6_TUNNEL_SPI_MAX, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @__xfrm6_tunnel_spi_check(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %51

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %3, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %20

34:                                               ; preds = %20
  %35 = load i64, i64* @XFRM6_TUNNEL_SPI_MIN, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %47, %34
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @xfrm6_tunnel_spi, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @__xfrm6_tunnel_spi_check(i64 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %3, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %36

50:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  br label %86

51:                                               ; preds = %45, %29
  %52 = load i64, i64* %3, align 8
  store i64 %52, i64* @xfrm6_tunnel_spi, align 8
  %53 = load i32, i32* @xfrm6_tunnel_spi_kmem, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.xfrm6_tunnel_spi* @kmem_cache_alloc(i32 %53, i32 %54)
  store %struct.xfrm6_tunnel_spi* %55, %struct.xfrm6_tunnel_spi** %4, align 8
  %56 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %4, align 8
  %57 = icmp ne %struct.xfrm6_tunnel_spi* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %86

59:                                               ; preds = %51
  %60 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %4, align 8
  %61 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %60, i32 0, i32 4
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @memcpy(i32* %61, i32* %62, i32 4)
  %64 = load i64, i64* %3, align 8
  %65 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %4, align 8
  %66 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %4, align 8
  %68 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %67, i32 0, i32 2
  %69 = call i32 @atomic_set(i32* %68, i32 1)
  %70 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %4, align 8
  %71 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %70, i32 0, i32 1
  %72 = load i32*, i32** @xfrm6_tunnel_spi_byspi, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @hlist_add_head(i32* %71, i32* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @xfrm6_tunnel_spi_hash_byaddr(i32* %77)
  store i32 %78, i32* %5, align 4
  %79 = load %struct.xfrm6_tunnel_spi*, %struct.xfrm6_tunnel_spi** %4, align 8
  %80 = getelementptr inbounds %struct.xfrm6_tunnel_spi, %struct.xfrm6_tunnel_spi* %79, i32 0, i32 0
  %81 = load i32*, i32** @xfrm6_tunnel_spi_byaddr, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @hlist_add_head(i32* %80, i32* %84)
  br label %86

86:                                               ; preds = %59, %58, %50
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

declare dso_local i32 @__xfrm6_tunnel_spi_check(i64) #1

declare dso_local %struct.xfrm6_tunnel_spi* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @xfrm6_tunnel_spi_hash_byaddr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
