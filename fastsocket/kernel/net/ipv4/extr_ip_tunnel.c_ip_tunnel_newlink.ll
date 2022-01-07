; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_newlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.ip_tunnel_parm = type { i32 }
%struct.ip_tunnel = type { %struct.ip_tunnel_parm, i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFLA_ADDRESS = common dso_local global i64 0, align 8
@IFLA_MTU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_newlink(%struct.net_device* %0, %struct.nlattr** %1, %struct.ip_tunnel_parm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  %8 = alloca %struct.ip_tunnel*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.ip_tunnel_net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.ip_tunnel_parm* %2, %struct.ip_tunnel_parm** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.net* @dev_net(%struct.net_device* %13)
  store %struct.net* %14, %struct.net** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %15)
  store %struct.ip_tunnel* %16, %struct.ip_tunnel** %8, align 8
  %17 = load %struct.net*, %struct.net** %9, align 8
  %18 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %17, i32 %20)
  store %struct.ip_tunnel_net* %21, %struct.ip_tunnel_net** %10, align 8
  %22 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %23 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @ip_tunnel_find(%struct.ip_tunnel_net* %22, %struct.ip_tunnel_parm* %23, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %76

32:                                               ; preds = %3
  %33 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %33, i32 0, i32 0
  %35 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %36 = bitcast %struct.ip_tunnel_parm* %34 to i8*
  %37 = bitcast %struct.ip_tunnel_parm* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @register_netdevice(%struct.net_device* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %74

43:                                               ; preds = %32
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ARPHRD_ETHER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %51 = load i64, i64* @IFLA_ADDRESS, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call i32 @eth_hw_addr_random(%struct.net_device* %56)
  br label %58

58:                                               ; preds = %55, %49, %43
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @ip_tunnel_bind_dev(%struct.net_device* %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %62 = load i64, i64* @IFLA_MTU, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %58
  %71 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %10, align 8
  %72 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %73 = call i32 @ip_tunnel_add(%struct.ip_tunnel_net* %71, %struct.ip_tunnel* %72)
  br label %74

74:                                               ; preds = %70, %42
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %29
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @ip_tunnel_find(%struct.ip_tunnel_net*, %struct.ip_tunnel_parm*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_bind_dev(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_add(%struct.ip_tunnel_net*, %struct.ip_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
