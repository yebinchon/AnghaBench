; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ll = type { i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_PACKET = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @packet_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_ll*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_ll*
  store %struct.sockaddr_ll* %13, %struct.sockaddr_ll** %8, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 24
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %76

23:                                               ; preds = %3
  %24 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_PACKET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %76

32:                                               ; preds = %23
  %33 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %8, align 8
  %34 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = call i32 @sock_net(%struct.sock* %40)
  %42 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.net_device* @dev_get_by_index(i32 %41, i64 %44)
  store %struct.net_device* %45, %struct.net_device** %10, align 8
  %46 = load %struct.net_device*, %struct.net_device** %10, align 8
  %47 = icmp eq %struct.net_device* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %74

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = load %struct.net_device*, %struct.net_device** %10, align 8
  %53 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %64

58:                                               ; preds = %50
  %59 = load %struct.sock*, %struct.sock** %9, align 8
  %60 = call %struct.TYPE_2__* @pkt_sk(%struct.sock* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %58, %57
  %65 = phi i64 [ %55, %57 ], [ %63, %58 ]
  %66 = trunc i64 %65 to i32
  %67 = call i32 @packet_do_bind(%struct.sock* %51, %struct.net_device* %52, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.net_device*, %struct.net_device** %10, align 8
  %69 = icmp ne %struct.net_device* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.net_device*, %struct.net_device** %10, align 8
  %72 = call i32 @dev_put(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %29, %20
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @packet_do_bind(%struct.sock*, %struct.net_device*, i32) #1

declare dso_local %struct.TYPE_2__* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
