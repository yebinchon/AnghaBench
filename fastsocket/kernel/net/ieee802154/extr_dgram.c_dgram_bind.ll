; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_dgram.c_dgram_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_dgram.c_dgram_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ieee802154 = type { i64, i32 }
%struct.dgram_sock = type { i32, i32 }
%struct.net_device = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_IEEE802154 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @dgram_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dgram_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_ieee802154*, align 8
  %8 = alloca %struct.dgram_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_ieee802154*
  store %struct.sockaddr_ieee802154* %12, %struct.sockaddr_ieee802154** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.dgram_sock* @dgram_sk(%struct.sock* %13)
  store %struct.dgram_sock* %14, %struct.dgram_sock** %8, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.dgram_sock*, %struct.dgram_sock** %8, align 8
  %20 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %63

25:                                               ; preds = %3
  %26 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_IEEE802154, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %63

32:                                               ; preds = %25
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @sock_net(%struct.sock* %33)
  %35 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %7, align 8
  %36 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %35, i32 0, i32 1
  %37 = call %struct.net_device* @ieee802154_get_dev(i32 %34, i32* %36)
  store %struct.net_device* %37, %struct.net_device** %10, align 8
  %38 = load %struct.net_device*, %struct.net_device** %10, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %63

43:                                               ; preds = %32
  %44 = load %struct.net_device*, %struct.net_device** %10, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %60

52:                                               ; preds = %43
  %53 = load %struct.dgram_sock*, %struct.dgram_sock** %8, align 8
  %54 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %53, i32 0, i32 1
  %55 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %7, align 8
  %56 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %55, i32 0, i32 1
  %57 = call i32 @memcpy(i32* %54, i32* %56, i32 4)
  %58 = load %struct.dgram_sock*, %struct.dgram_sock** %8, align 8
  %59 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %52, %49
  %61 = load %struct.net_device*, %struct.net_device** %10, align 8
  %62 = call i32 @dev_put(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %40, %31, %24
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @release_sock(%struct.sock* %64)
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.dgram_sock* @dgram_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @ieee802154_get_dev(i32, i32*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
