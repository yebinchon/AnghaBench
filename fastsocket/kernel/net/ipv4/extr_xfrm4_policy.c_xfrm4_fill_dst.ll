; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c_xfrm4_fill_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c_xfrm4_fill_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.flowi }
%struct.TYPE_6__ = type { i32 }
%struct.flowi = type { i32 }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.rtable = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }

@ENODEV = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_dst*, %struct.net_device*, %struct.flowi*)* @xfrm4_fill_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm4_fill_dst(%struct.xfrm_dst* %0, %struct.net_device* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_dst*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.rtable*, align 8
  store %struct.xfrm_dst* %0, %struct.xfrm_dst** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %9 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rtable*
  store %struct.rtable* %12, %struct.rtable** %8, align 8
  %13 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %14 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 8
  %17 = load %struct.flowi*, %struct.flowi** %7, align 8
  %18 = bitcast %struct.flowi* %16 to i8*
  %19 = bitcast %struct.flowi* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %22 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.net_device* %20, %struct.net_device** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @dev_hold(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call i32 @in_dev_get(%struct.net_device* %27)
  %29 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %30 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 7
  store i32 %28, i32* %32, align 8
  %33 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %34 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %109

42:                                               ; preds = %3
  %43 = load %struct.rtable*, %struct.rtable** %8, align 8
  %44 = getelementptr inbounds %struct.rtable, %struct.rtable* %43, i32 0, i32 6
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %47 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.rtable*, %struct.rtable** %8, align 8
  %51 = getelementptr inbounds %struct.rtable, %struct.rtable* %50, i32 0, i32 6
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load %struct.rtable*, %struct.rtable** %8, align 8
  %56 = getelementptr inbounds %struct.rtable, %struct.rtable* %55, i32 0, i32 6
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @atomic_inc(i32* %58)
  br label %60

60:                                               ; preds = %54, %42
  %61 = load %struct.rtable*, %struct.rtable** %8, align 8
  %62 = getelementptr inbounds %struct.rtable, %struct.rtable* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RTCF_BROADCAST, align 4
  %65 = load i32, i32* @RTCF_MULTICAST, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RTCF_LOCAL, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %71 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.rtable*, %struct.rtable** %8, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %78 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  store i32 %76, i32* %80, align 4
  %81 = load %struct.rtable*, %struct.rtable** %8, align 8
  %82 = getelementptr inbounds %struct.rtable, %struct.rtable* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %85 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  store i32 %83, i32* %87, align 8
  %88 = load %struct.rtable*, %struct.rtable** %8, align 8
  %89 = getelementptr inbounds %struct.rtable, %struct.rtable* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %92 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 4
  %95 = load %struct.rtable*, %struct.rtable** %8, align 8
  %96 = getelementptr inbounds %struct.rtable, %struct.rtable* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %99 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 8
  %102 = load %struct.rtable*, %struct.rtable** %8, align 8
  %103 = getelementptr inbounds %struct.rtable, %struct.rtable* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %106 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %60, %39
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #2

declare dso_local i32 @in_dev_get(%struct.net_device*) #2

declare dso_local i32 @atomic_inc(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
