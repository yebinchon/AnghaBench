; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip_tunnel = type { %struct.ip_tunnel_parm }
%struct.ip_tunnel_parm = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@IFLA_GRE_LINK = common dso_local global i32 0, align 4
@IFLA_GRE_IFLAGS = common dso_local global i32 0, align 4
@IFLA_GRE_OFLAGS = common dso_local global i32 0, align 4
@IFLA_GRE_IKEY = common dso_local global i32 0, align 4
@IFLA_GRE_OKEY = common dso_local global i32 0, align 4
@IFLA_GRE_LOCAL = common dso_local global i32 0, align 4
@IFLA_GRE_REMOTE = common dso_local global i32 0, align 4
@IFLA_GRE_TTL = common dso_local global i32 0, align 4
@IFLA_GRE_TOS = common dso_local global i32 0, align 4
@IFLA_GRE_PMTUDISC = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipgre_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %8)
  store %struct.ip_tunnel* %9, %struct.ip_tunnel** %6, align 8
  %10 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %10, i32 0, i32 0
  store %struct.ip_tunnel_parm* %11, %struct.ip_tunnel_parm** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @IFLA_GRE_LINK, align 4
  %14 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @nla_put_u32(%struct.sk_buff* %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %105, label %19

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @IFLA_GRE_IFLAGS, align 4
  %22 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tnl_flags_to_gre_flags(i32 %24)
  %26 = call i64 @nla_put_be16(%struct.sk_buff* %20, i32 %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %105, label %28

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @IFLA_GRE_OFLAGS, align 4
  %31 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %32 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @tnl_flags_to_gre_flags(i32 %33)
  %35 = call i64 @nla_put_be16(%struct.sk_buff* %29, i32 %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %105, label %37

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* @IFLA_GRE_IKEY, align 4
  %40 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %41 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_be32(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %105, label %45

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @IFLA_GRE_OKEY, align 4
  %48 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %49 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_be32(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %105, label %53

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i32, i32* @IFLA_GRE_LOCAL, align 4
  %56 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %57 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nla_put_be32(%struct.sk_buff* %54, i32 %55, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %105, label %62

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32, i32* @IFLA_GRE_REMOTE, align 4
  %65 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %66 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @nla_put_be32(%struct.sk_buff* %63, i32 %64, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %105, label %71

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load i32, i32* @IFLA_GRE_TTL, align 4
  %74 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %75 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @nla_put_u8(%struct.sk_buff* %72, i32 %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %71
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = load i32, i32* @IFLA_GRE_TOS, align 4
  %83 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %84 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nla_put_u8(%struct.sk_buff* %81, i32 %82, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %80
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* @IFLA_GRE_PMTUDISC, align 4
  %92 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %93 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IP_DF, align 4
  %97 = call i32 @htons(i32 %96)
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i64 @nla_put_u8(%struct.sk_buff* %90, i32 %91, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89, %80, %71, %62, %53, %45, %37, %28, %19, %2
  br label %107

106:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %110

107:                                              ; preds = %105
  %108 = load i32, i32* @EMSGSIZE, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %106
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tnl_flags_to_gre_flags(i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
