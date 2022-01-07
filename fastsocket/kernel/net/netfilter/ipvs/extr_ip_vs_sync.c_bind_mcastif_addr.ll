; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_bind_mcastif_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_bind_mcastif_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"You probably need to specify IP address on multicast interface.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"binding socket with (%s) %pI4\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*)* @bind_mcastif_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_mcastif_addr(%struct.socket* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.net_device* @__dev_get_by_name(i32* @init_net, i8* %9)
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = icmp eq %struct.net_device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %18 = call i64 @inet_select_addr(%struct.net_device* %16, i32 0, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @IP_VS_DBG(i32 7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %24, i64* %7)
  %26 = load i32, i32* @AF_INET, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.socket*, %struct.socket** %4, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %35, align 8
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %39 = call i32 %36(%struct.socket* %37, %struct.sockaddr* %38, i32 24)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %23, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.net_device* @__dev_get_by_name(i32*, i8*) #1

declare dso_local i64 @inet_select_addr(%struct.net_device*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
