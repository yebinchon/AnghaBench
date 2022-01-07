; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_itd_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_itd_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i64*, %union.ehci_shadow* }
%union.ehci_shadow = type { %struct.ehci_itd* }
%struct.ehci_itd = type { i32, i32, i64, %union.ehci_shadow }

@Q_TYPE_QH = common dso_local global i32 0, align 4
@Q_TYPE_ITD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, i32, %struct.ehci_itd*)* @itd_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itd_link(%struct.ehci_hcd* %0, i32 %1, %struct.ehci_itd* %2) #0 {
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_itd*, align 8
  %7 = alloca %union.ehci_shadow*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %union.ehci_shadow, align 8
  %10 = alloca i64, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ehci_itd* %2, %struct.ehci_itd** %6, align 8
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %11, i32 0, i32 1
  %13 = load %union.ehci_shadow*, %union.ehci_shadow** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %13, i64 %15
  store %union.ehci_shadow* %16, %union.ehci_shadow** %7, align 8
  %17 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64* %22, i64** %8, align 8
  %23 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %24 = bitcast %union.ehci_shadow* %9 to i8*
  %25 = bitcast %union.ehci_shadow* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %41, %3
  %27 = bitcast %union.ehci_shadow* %9 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @Q_NEXT_TYPE(%struct.ehci_hcd* %31, i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %37 = load i32, i32* @Q_TYPE_QH, align 4
  %38 = call i64 @cpu_to_hc32(%struct.ehci_hcd* %36, i32 %37)
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %52

41:                                               ; preds = %30
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %43 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call %union.ehci_shadow* @periodic_next_shadow(%struct.ehci_hcd* %42, %union.ehci_shadow* %43, i64 %44)
  store %union.ehci_shadow* %45, %union.ehci_shadow** %7, align 8
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64* @shadow_next_periodic(%struct.ehci_hcd* %46, %union.ehci_shadow* %9, i64 %47)
  store i64* %48, i64** %8, align 8
  %49 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %50 = bitcast %union.ehci_shadow* %9 to i8*
  %51 = bitcast %union.ehci_shadow* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 8, i1 false)
  br label %26

52:                                               ; preds = %40, %26
  %53 = load %struct.ehci_itd*, %struct.ehci_itd** %6, align 8
  %54 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %53, i32 0, i32 3
  %55 = bitcast %union.ehci_shadow* %54 to i8*
  %56 = bitcast %union.ehci_shadow* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ehci_itd*, %struct.ehci_itd** %6, align 8
  %60 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ehci_itd*, %struct.ehci_itd** %6, align 8
  %62 = load %union.ehci_shadow*, %union.ehci_shadow** %7, align 8
  %63 = bitcast %union.ehci_shadow* %62 to %struct.ehci_itd**
  store %struct.ehci_itd* %61, %struct.ehci_itd** %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.ehci_itd*, %struct.ehci_itd** %6, align 8
  %66 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = call i32 (...) @wmb()
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %69 = load %struct.ehci_itd*, %struct.ehci_itd** %6, align 8
  %70 = getelementptr inbounds %struct.ehci_itd, %struct.ehci_itd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @Q_TYPE_ITD, align 4
  %73 = or i32 %71, %72
  %74 = call i64 @cpu_to_hc32(%struct.ehci_hcd* %68, i32 %73)
  %75 = load i64*, i64** %8, align 8
  store i64 %74, i64* %75, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @Q_NEXT_TYPE(%struct.ehci_hcd*, i64) #2

declare dso_local i64 @cpu_to_hc32(%struct.ehci_hcd*, i32) #2

declare dso_local %union.ehci_shadow* @periodic_next_shadow(%struct.ehci_hcd*, %union.ehci_shadow*, i64) #2

declare dso_local i64* @shadow_next_periodic(%struct.ehci_hcd*, %union.ehci_shadow*, i64) #2

declare dso_local i32 @wmb(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
