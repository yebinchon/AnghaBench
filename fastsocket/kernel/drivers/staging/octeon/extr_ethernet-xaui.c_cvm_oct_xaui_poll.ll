; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-xaui.c_cvm_oct_xaui_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-xaui.c_cvm_oct_xaui_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"%s: %u Mbps %s duplex, port %2d, queue %2d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: %u Mbps %s duplex, port %2d, POW\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s: Link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cvm_oct_xaui_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_xaui_poll(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %7)
  store %struct.octeon_ethernet* %8, %struct.octeon_ethernet** %3, align 8
  %9 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  call void @cvmx_helper_link_get(%struct.TYPE_6__* sret %5, i32 %11)
  %12 = bitcast %struct.TYPE_6__* %4 to i8*
  %13 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 32, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %23 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  call void @cvmx_helper_link_autoconf(%struct.TYPE_6__* sret %6, i32 %24)
  %25 = bitcast %struct.TYPE_6__* %4 to i8*
  %26 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 32, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %30 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %21
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i64 @netif_carrier_ok(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @netif_carrier_on(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %44 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %60 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %61 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %64 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i8* %59, i32 %62, i32 %65)
  br label %84

67:                                               ; preds = %42
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %80 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %81 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %73, i8* %79, i32 %82)
  br label %84

84:                                               ; preds = %67, %47
  br label %97

85:                                               ; preds = %21
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i64 @netif_carrier_ok(%struct.net_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @netif_carrier_off(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %20, %92, %84
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local void @cvmx_helper_link_get(%struct.TYPE_6__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @cvmx_helper_link_autoconf(%struct.TYPE_6__* sret, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @DEBUGPRINT(i8*, i32, ...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
