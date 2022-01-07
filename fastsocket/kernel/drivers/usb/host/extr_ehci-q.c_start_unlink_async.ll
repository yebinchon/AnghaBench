; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_start_unlink_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_start_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.TYPE_7__*, %struct.ehci_qh*, %struct.ehci_qh*, %struct.ehci_qh*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ehci_qh = type { i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.ehci_qh* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@HC_STATE_HALT = common dso_local global i64 0, align 8
@CMD_ASE = common dso_local global i32 0, align 4
@TIMER_ASYNC_OFF = common dso_local global i32 0, align 4
@QH_STATE_UNLINK = common dso_local global i64 0, align 8
@CMD_IAAD = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_STATE_UNLINK_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qh*)* @start_unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_unlink_async(%struct.ehci_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_qh*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %7 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = call i32 @ehci_readl(%struct.ehci_hcd* %7, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 2
  %16 = load %struct.ehci_qh*, %struct.ehci_qh** %15, align 8
  %17 = icmp eq %struct.ehci_qh* %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %23 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HC_STATE_HALT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %29, i32 0, i32 3
  %31 = load %struct.ehci_qh*, %struct.ehci_qh** %30, align 8
  %32 = icmp ne %struct.ehci_qh* %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %28
  %34 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CMD_ASE, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @ehci_writel(%struct.ehci_hcd* %34, i32 %38, i32* %42)
  %44 = call i32 (...) @wmb()
  %45 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %46 = load i32, i32* @TIMER_ASYNC_OFF, align 4
  %47 = call i32 @timer_action_done(%struct.ehci_hcd* %45, i32 %46)
  br label %48

48:                                               ; preds = %33, %28, %21
  br label %134

49:                                               ; preds = %2
  %50 = load i64, i64* @QH_STATE_UNLINK, align 8
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %52 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %54 = call %struct.ehci_qh* @qh_get(%struct.ehci_qh* %53)
  store %struct.ehci_qh* %54, %struct.ehci_qh** %4, align 8
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %55, i32 0, i32 3
  store %struct.ehci_qh* %54, %struct.ehci_qh** %56, align 8
  %57 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %58 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %57, i32 0, i32 2
  %59 = load %struct.ehci_qh*, %struct.ehci_qh** %58, align 8
  store %struct.ehci_qh* %59, %struct.ehci_qh** %6, align 8
  br label %60

60:                                               ; preds = %67, %49
  %61 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %62 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.ehci_qh*, %struct.ehci_qh** %63, align 8
  %65 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %66 = icmp ne %struct.ehci_qh* %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %69 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.ehci_qh*, %struct.ehci_qh** %70, align 8
  store %struct.ehci_qh* %71, %struct.ehci_qh** %6, align 8
  br label %60

72:                                               ; preds = %60
  %73 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %74 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %79 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %83 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %82, i32 0, i32 1
  %84 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %85 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %84, i32 0, i32 1
  %86 = bitcast %struct.TYPE_6__* %83 to i8*
  %87 = bitcast %struct.TYPE_6__* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 8, i1 false)
  %88 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %89 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %88, i32 0, i32 1
  %90 = load %struct.ehci_qh*, %struct.ehci_qh** %89, align 8
  %91 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %92 = icmp eq %struct.ehci_qh* %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %72
  %94 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %95 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.ehci_qh*, %struct.ehci_qh** %96, align 8
  %98 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %99 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %98, i32 0, i32 1
  store %struct.ehci_qh* %97, %struct.ehci_qh** %99, align 8
  br label %100

100:                                              ; preds = %93, %72
  %101 = call i32 (...) @wmb()
  %102 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %103 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @HC_IS_RUNNING(i64 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %114 = call i32 @end_unlink_async(%struct.ehci_hcd* %113)
  br label %134

115:                                              ; preds = %100
  %116 = load i32, i32* @CMD_IAAD, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %122 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call i32 @ehci_writel(%struct.ehci_hcd* %119, i32 %120, i32* %124)
  %126 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %127 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %128 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = call i32 @ehci_readl(%struct.ehci_hcd* %126, i32* %130)
  %132 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %133 = call i32 @iaa_watchdog_start(%struct.ehci_hcd* %132)
  br label %134

134:                                              ; preds = %115, %112, %48
  ret void
}

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @timer_action_done(%struct.ehci_hcd*, i32) #1

declare dso_local %struct.ehci_qh* @qh_get(%struct.ehci_qh*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @HC_IS_RUNNING(i64) #1

declare dso_local i32 @end_unlink_async(%struct.ehci_hcd*) #1

declare dso_local i32 @iaa_watchdog_start(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
