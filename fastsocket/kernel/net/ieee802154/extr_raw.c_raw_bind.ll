; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_raw.c_raw_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_raw.c_raw_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ieee802154 = type { i64, i32 }
%struct.net_device = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_IEEE802154 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @raw_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_ieee802154*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_ieee802154*
  store %struct.sockaddr_ieee802154* %12, %struct.sockaddr_ieee802154** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %8, align 8
  %21 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_IEEE802154, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %65

28:                                               ; preds = %19
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = call i32 @lock_sock(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call i32 @sock_net(%struct.sock* %31)
  %33 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %8, align 8
  %34 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %33, i32 0, i32 1
  %35 = call %struct.net_device* @ieee802154_get_dev(i32 %32, i32* %34)
  store %struct.net_device* %35, %struct.net_device** %10, align 8
  %36 = load %struct.net_device*, %struct.net_device** %10, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %61

41:                                               ; preds = %28
  %42 = load %struct.net_device*, %struct.net_device** %10, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %58

50:                                               ; preds = %41
  %51 = load %struct.net_device*, %struct.net_device** %10, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = call i32 @sk_dst_reset(%struct.sock* %56)
  br label %58

58:                                               ; preds = %50, %47
  %59 = load %struct.net_device*, %struct.net_device** %10, align 8
  %60 = call i32 @dev_put(%struct.net_device* %59)
  br label %61

61:                                               ; preds = %58, %38
  %62 = load %struct.sock*, %struct.sock** %5, align 8
  %63 = call i32 @release_sock(%struct.sock* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %25, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @ieee802154_get_dev(i32, i32*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
