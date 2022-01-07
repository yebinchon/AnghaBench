; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_tunnel_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_gre.c_ipgre_tunnel_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ip_tunnel_parm = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@SIOCADDTUNNEL = common dso_local global i32 0, align 4
@SIOCCHGTUNNEL = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@GRE_VERSION = common dso_local global i32 0, align 4
@GRE_ROUTING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ipgre_tunnel_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_tunnel_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel_parm, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @copy_from_user(%struct.ip_tunnel_parm* %9, i32 %13, i32 32)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %106

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SIOCADDTUNNEL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SIOCCHGTUNNEL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %63, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IPPROTO_GRE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %63, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 5
  br i1 %42, label %63, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IP_DF, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @htons(i32 %48)
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %54, %56
  %58 = load i32, i32* @GRE_VERSION, align 4
  %59 = load i32, i32* @GRE_ROUTING, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52, %43, %38, %32, %27
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %106

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %23
  %68 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @gre_flags_to_tnl_flags(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @gre_flags_to_tnl_flags(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ip_tunnel_ioctl(%struct.net_device* %78, %struct.ip_tunnel_parm* %9, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %106

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @tnl_flags_to_gre_flags(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @tnl_flags_to_gre_flags(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %97 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @copy_to_user(i32 %99, %struct.ip_tunnel_parm* %9, i32 32)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = load i32, i32* @EFAULT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %102, %83, %63, %16
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @copy_from_user(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @gre_flags_to_tnl_flags(i32) #1

declare dso_local i32 @ip_tunnel_ioctl(%struct.net_device*, %struct.ip_tunnel_parm*, i32) #1

declare dso_local i8* @tnl_flags_to_gre_flags(i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ip_tunnel_parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
