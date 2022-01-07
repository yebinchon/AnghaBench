; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_tunnel.c_ip_tunnel_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel_net = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i64, i32, i32, i32 }
%struct.ip_tunnel_parm = type { i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_tunnel_net*, %struct.ip_tunnel*, %struct.net_device*, %struct.ip_tunnel_parm*, i32)* @ip_tunnel_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_tunnel_update(%struct.ip_tunnel_net* %0, %struct.ip_tunnel* %1, %struct.net_device* %2, %struct.ip_tunnel_parm* %3, i32 %4) #0 {
  %6 = alloca %struct.ip_tunnel_net*, align 8
  %7 = alloca %struct.ip_tunnel*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ip_tunnel_parm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ip_tunnel_net* %0, %struct.ip_tunnel_net** %6, align 8
  store %struct.ip_tunnel* %1, %struct.ip_tunnel** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.ip_tunnel_parm* %3, %struct.ip_tunnel_parm** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %13 = call i32 @ip_tunnel_del(%struct.ip_tunnel* %12)
  %14 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i32 %17, i32* %21, align 8
  %22 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %27 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i32 %25, i32* %29, align 4
  %30 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %31 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %37 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ARPHRD_ETHER, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %5
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = call i32 @memcpy(i32 %50, i32* %53, i32 4)
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %59 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = call i32 @memcpy(i32 %57, i32* %60, i32 4)
  br label %62

62:                                               ; preds = %47, %5
  %63 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %6, align 8
  %64 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %65 = call i32 @ip_tunnel_add(%struct.ip_tunnel_net* %63, %struct.ip_tunnel* %64)
  %66 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %67 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %71 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 8
  %74 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %75 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %79 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %83 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %87 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %91 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %95 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %62
  %99 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %9, align 8
  %100 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %103 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load %struct.net_device*, %struct.net_device** %8, align 8
  %106 = call i32 @ip_tunnel_bind_dev(%struct.net_device* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %98
  br label %114

114:                                              ; preds = %113, %62
  %115 = load %struct.net_device*, %struct.net_device** %8, align 8
  %116 = call i32 @netdev_state_change(%struct.net_device* %115)
  ret void
}

declare dso_local i32 @ip_tunnel_del(%struct.ip_tunnel*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ip_tunnel_add(%struct.ip_tunnel_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @ip_tunnel_bind_dev(%struct.net_device*) #1

declare dso_local i32 @netdev_state_change(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
