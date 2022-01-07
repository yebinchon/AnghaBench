; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_qh_link_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-q.c_qh_link_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { %struct.TYPE_5__*, %struct.ehci_qh* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ehci_qh = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ehci_qh* }
%struct.TYPE_8__ = type { i32 }

@QH_STATE_IDLE = common dso_local global i64 0, align 8
@TIMER_ASYNC_OFF = common dso_local global i32 0, align 4
@CMD_ASE = common dso_local global i32 0, align 4
@STS_ASS = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qh*)* @qh_link_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qh_link_async(%struct.ehci_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_qh*, align 8
  %7 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %9 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %10 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @QH_NEXT(%struct.ehci_hcd* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %14 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %110

19:                                               ; preds = %2
  %20 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %21 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QH_STATE_IDLE, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %27, i32 0, i32 1
  %29 = load %struct.ehci_qh*, %struct.ehci_qh** %28, align 8
  store %struct.ehci_qh* %29, %struct.ehci_qh** %6, align 8
  %30 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %31 = load i32, i32* @TIMER_ASYNC_OFF, align 4
  %32 = call i32 @timer_action_done(%struct.ehci_hcd* %30, i32 %31)
  %33 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %34 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.ehci_qh*, %struct.ehci_qh** %35, align 8
  %37 = icmp ne %struct.ehci_qh* %36, null
  br i1 %37, label %74, label %38

38:                                               ; preds = %19
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %40 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @ehci_readl(%struct.ehci_hcd* %39, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @CMD_ASE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %38
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %52 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* @STS_ASS, align 4
  %56 = call i32 @handshake(%struct.ehci_hcd* %50, i32* %54, i32 %55, i32 0, i32 150)
  %57 = load i32, i32* @CMD_ASE, align 4
  %58 = load i32, i32* @CMD_RUN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %65 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @ehci_writel(%struct.ehci_hcd* %62, i32 %63, i32* %67)
  %69 = load i32, i32* @HC_STATE_RUNNING, align 4
  %70 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %71 = call %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd* %70)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %49, %38
  br label %74

74:                                               ; preds = %73, %19
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %76 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %77 = call i32 @qh_refresh(%struct.ehci_hcd* %75, %struct.ehci_qh* %76)
  %78 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %79 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %78, i32 0, i32 3
  %80 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %81 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %80, i32 0, i32 3
  %82 = bitcast %struct.TYPE_6__* %79 to i8*
  %83 = bitcast %struct.TYPE_6__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 8, i1 false)
  %84 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %85 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %90 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  %93 = call i32 (...) @wmb()
  %94 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %95 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %96 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store %struct.ehci_qh* %94, %struct.ehci_qh** %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.ehci_qh*, %struct.ehci_qh** %6, align 8
  %100 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %104 = call i32 @qh_get(%struct.ehci_qh* %103)
  %105 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %106 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* @QH_STATE_LINKED, align 8
  %108 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %109 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %74, %18
  ret void
}

declare dso_local i32 @QH_NEXT(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @timer_action_done(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @handshake(%struct.ehci_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @qh_refresh(%struct.ehci_hcd*, %struct.ehci_qh*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qh_get(%struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
