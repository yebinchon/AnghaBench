; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_rt_set_next_hop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_rt_set_next_hop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_route = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.net_device*, %struct.neighbour* }
%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }
%struct.dn_fib_res = type { i32, %struct.dn_fib_info* }
%struct.dn_fib_info = type { i32 }
%struct.TYPE_7__ = type { i64 }

@RT_SCOPE_LINK = common dso_local global i64 0, align 8
@dn_neigh_table = common dso_local global i32 0, align 4
@RTAX_MTU = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_route*, %struct.dn_fib_res*)* @dn_rt_set_next_hop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_rt_set_next_hop(%struct.dn_route* %0, %struct.dn_fib_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_route*, align 8
  %5 = alloca %struct.dn_fib_res*, align 8
  %6 = alloca %struct.dn_fib_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.neighbour*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 8
  store %struct.dn_route* %0, %struct.dn_route** %4, align 8
  store %struct.dn_fib_res* %1, %struct.dn_fib_res** %5, align 8
  %11 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %12 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %11, i32 0, i32 1
  %13 = load %struct.dn_fib_info*, %struct.dn_fib_info** %12, align 8
  store %struct.dn_fib_info* %13, %struct.dn_fib_info** %6, align 8
  %14 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %15 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.dn_fib_info*, %struct.dn_fib_info** %6, align 8
  %20 = icmp ne %struct.dn_fib_info* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %2
  %22 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %23 = bitcast %struct.dn_fib_res* %22 to { i32, %struct.dn_fib_info* }*
  %24 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %23, i32 0, i32 1
  %27 = load %struct.dn_fib_info*, %struct.dn_fib_info** %26, align 8
  %28 = call i64 @DN_FIB_RES_GW(i32 %25, %struct.dn_fib_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %21
  %31 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %32 = bitcast %struct.dn_fib_res* %31 to { i32, %struct.dn_fib_info* }*
  %33 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %32, i32 0, i32 1
  %36 = load %struct.dn_fib_info*, %struct.dn_fib_info** %35, align 8
  %37 = call i64 @DN_FIB_RES_NH(i32 %34, %struct.dn_fib_info* %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RT_SCOPE_LINK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %45 = bitcast %struct.dn_fib_res* %44 to { i32, %struct.dn_fib_info* }*
  %46 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds { i32, %struct.dn_fib_info* }, { i32, %struct.dn_fib_info* }* %45, i32 0, i32 1
  %49 = load %struct.dn_fib_info*, %struct.dn_fib_info** %48, align 8
  %50 = call i64 @DN_FIB_RES_GW(i32 %47, %struct.dn_fib_info* %49)
  %51 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %52 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %43, %30, %21
  %54 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %55 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.dn_fib_info*, %struct.dn_fib_info** %6, align 8
  %60 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32* %58, i32 %61, i32 8)
  br label %63

63:                                               ; preds = %53, %2
  %64 = load %struct.dn_fib_res*, %struct.dn_fib_res** %5, align 8
  %65 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %68 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = icmp ne %struct.net_device* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %63
  %72 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %73 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load %struct.neighbour*, %struct.neighbour** %75, align 8
  %77 = icmp eq %struct.neighbour* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %80 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %79, i32 0, i32 1
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = call %struct.neighbour* @__neigh_lookup_errno(i32* @dn_neigh_table, i64* %80, %struct.net_device* %81)
  store %struct.neighbour* %82, %struct.neighbour** %8, align 8
  %83 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %84 = call i64 @IS_ERR(%struct.neighbour* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %88 = call i32 @PTR_ERR(%struct.neighbour* %87)
  store i32 %88, i32* %3, align 4
  br label %166

89:                                               ; preds = %78
  %90 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %91 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %92 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store %struct.neighbour* %90, %struct.neighbour** %94, align 8
  br label %95

95:                                               ; preds = %89, %71, %63
  %96 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %97 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* @RTAX_MTU, align 4
  %100 = call i32 @dst_metric(%struct.TYPE_6__* %98, i32 %99)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %95
  %103 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %104 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* @RTAX_MTU, align 4
  %107 = call i32 @dst_metric(%struct.TYPE_6__* %105, i32 %106)
  %108 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %109 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.net_device*, %struct.net_device** %111, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ugt i32 %107, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %102, %95
  %117 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %118 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load %struct.net_device*, %struct.net_device** %120, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %125 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @RTAX_MTU, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %123, i32* %132, align 4
  br label %133

133:                                              ; preds = %116, %102
  %134 = load %struct.net_device*, %struct.net_device** %7, align 8
  %135 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %136 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = call i32 @dst_mtu(%struct.TYPE_6__* %137)
  %139 = call i32 @dn_mss_from_pmtu(%struct.net_device* %134, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %141 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* @RTAX_ADVMSS, align 4
  %144 = call i32 @dst_metric(%struct.TYPE_6__* %142, i32 %143)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %133
  %147 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %148 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* @RTAX_ADVMSS, align 4
  %151 = call i32 @dst_metric(%struct.TYPE_6__* %149, i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %146, %133
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %157 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @RTAX_ADVMSS, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %155, i32* %164, align 4
  br label %165

165:                                              ; preds = %154, %146
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %86
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @DN_FIB_RES_GW(i32, %struct.dn_fib_info*) #1

declare dso_local i64 @DN_FIB_RES_NH(i32, %struct.dn_fib_info*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.neighbour* @__neigh_lookup_errno(i32*, i64*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i32 @dst_metric(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dn_mss_from_pmtu(%struct.net_device*, i32) #1

declare dso_local i32 @dst_mtu(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
