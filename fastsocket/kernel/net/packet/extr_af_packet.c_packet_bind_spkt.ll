; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_bind_spkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_bind_spkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @packet_bind_spkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_bind_spkt(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca [15 x i8], align 1
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strlcpy(i8* %24, i32 %27, i32 15)
  %29 = load %struct.sock*, %struct.sock** %8, align 8
  %30 = call i32 @sock_net(%struct.sock* %29)
  %31 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %32 = call %struct.net_device* @dev_get_by_name(i32 %30, i8* %31)
  store %struct.net_device* %32, %struct.net_device** %10, align 8
  %33 = load %struct.net_device*, %struct.net_device** %10, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.sock*, %struct.sock** %8, align 8
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = call %struct.TYPE_2__* @pkt_sk(%struct.sock* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @packet_do_bind(%struct.sock* %36, %struct.net_device* %37, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = call i32 @dev_put(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %35, %23
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_name(i32, i8*) #1

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
