; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_link_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_tnl = type { %struct.flowi, %struct.ip6_tnl_parm, %struct.net_device* }
%struct.flowi = type { i32, i32, i32, i32 }
%struct.ip6_tnl_parm = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i64, i64, i32, i32, i32, i32 }
%struct.rt6_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@IP6_TNL_F_USE_ORIG_TCLASS = common dso_local global i32 0, align 4
@IPV6_TCLASS_MASK = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_FLOWLABEL = common dso_local global i32 0, align 4
@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_XMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_CAP_RCV = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_tnl*)* @ip6_tnl_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_tnl_link_config(%struct.ip6_tnl* %0) #0 {
  %2 = alloca %struct.ip6_tnl*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ip6_tnl_parm*, align 8
  %5 = alloca %struct.flowi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt6_info*, align 8
  store %struct.ip6_tnl* %0, %struct.ip6_tnl** %2, align 8
  %8 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %9 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %12 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %11, i32 0, i32 1
  store %struct.ip6_tnl_parm* %12, %struct.ip6_tnl_parm** %4, align 8
  %13 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %14 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %13, i32 0, i32 0
  store %struct.flowi* %14, %struct.flowi** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %19 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %18, i32 0, i32 3
  %20 = call i32 @memcpy(i32 %17, i32* %19, i32 4)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %25 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %24, i32 0, i32 4
  %26 = call i32 @memcpy(i32 %23, i32* %25, i32 4)
  %27 = load %struct.flowi*, %struct.flowi** %5, align 8
  %28 = getelementptr inbounds %struct.flowi, %struct.flowi* %27, i32 0, i32 3
  %29 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %30 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %29, i32 0, i32 3
  %31 = call i32 @ipv6_addr_copy(i32* %28, i32* %30)
  %32 = load %struct.flowi*, %struct.flowi** %5, align 8
  %33 = getelementptr inbounds %struct.flowi, %struct.flowi* %32, i32 0, i32 2
  %34 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %35 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %34, i32 0, i32 4
  %36 = call i32 @ipv6_addr_copy(i32* %33, i32* %35)
  %37 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %38 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.flowi*, %struct.flowi** %5, align 8
  %41 = getelementptr inbounds %struct.flowi, %struct.flowi* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.flowi*, %struct.flowi** %5, align 8
  %43 = getelementptr inbounds %struct.flowi, %struct.flowi* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %45 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IP6_TNL_F_USE_ORIG_TCLASS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* @IPV6_TCLASS_MASK, align 4
  %52 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %53 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  %56 = load %struct.flowi*, %struct.flowi** %5, align 8
  %57 = getelementptr inbounds %struct.flowi, %struct.flowi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %50, %1
  %61 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %62 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IP6_TNL_F_USE_ORIG_FLOWLABEL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %69 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %70 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  %73 = load %struct.flowi*, %struct.flowi** %5, align 8
  %74 = getelementptr inbounds %struct.flowi, %struct.flowi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %60
  %78 = load %struct.ip6_tnl*, %struct.ip6_tnl** %2, align 8
  %79 = call i32 @ip6_tnl_set_cap(%struct.ip6_tnl* %78)
  %80 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %81 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %77
  %87 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %88 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IP6_TNL_F_CAP_RCV, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @IFF_POINTOPOINT, align 4
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %106

99:                                               ; preds = %86, %77
  %100 = load i32, i32* @IFF_POINTOPOINT, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %108 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %113 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IP6_TNL_F_CAP_XMIT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %177

118:                                              ; preds = %106
  %119 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %120 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %119, i32 0, i32 4
  %121 = call i32 @ipv6_addr_type(i32* %120)
  %122 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %123 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  store i32 %125, i32* %6, align 4
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = call i32 @dev_net(%struct.net_device* %126)
  %128 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %129 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %128, i32 0, i32 4
  %130 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %131 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %130, i32 0, i32 3
  %132 = load %struct.ip6_tnl_parm*, %struct.ip6_tnl_parm** %4, align 8
  %133 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call %struct.rt6_info* @rt6_lookup(i32 %127, i32* %129, i32* %131, i32 %134, i32 %135)
  store %struct.rt6_info* %136, %struct.rt6_info** %7, align 8
  %137 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %138 = icmp eq %struct.rt6_info* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %118
  br label %177

140:                                              ; preds = %118
  %141 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %142 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %141, i32 0, i32 1
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = icmp ne %struct.TYPE_3__* %143, null
  br i1 %144, label %145, label %172

145:                                              ; preds = %140
  %146 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %147 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 4
  %152 = load %struct.net_device*, %struct.net_device** %3, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %155 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %154, i32 0, i32 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub i64 %158, 4
  %160 = load %struct.net_device*, %struct.net_device** %3, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.net_device*, %struct.net_device** %3, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @IPV6_MIN_MTU, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %145
  %168 = load i64, i64* @IPV6_MIN_MTU, align 8
  %169 = load %struct.net_device*, %struct.net_device** %3, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %167, %145
  br label %172

172:                                              ; preds = %171, %140
  %173 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %174 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = call i32 @dst_release(i32* %175)
  br label %177

177:                                              ; preds = %139, %172, %106
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local i32 @ip6_tnl_set_cap(%struct.ip6_tnl*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.rt6_info* @rt6_lookup(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @dst_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
