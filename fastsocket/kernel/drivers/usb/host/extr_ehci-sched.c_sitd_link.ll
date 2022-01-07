; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ehci_sitd* }
%struct.ehci_sitd = type { i32, i32, i32, %struct.TYPE_2__ }

@Q_TYPE_SITD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, i32, %struct.ehci_sitd*)* @sitd_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sitd_link(%struct.ehci_hcd* %0, i32 %1, %struct.ehci_sitd* %2) #0 {
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehci_sitd*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ehci_sitd* %2, %struct.ehci_sitd** %6, align 8
  %7 = load %struct.ehci_sitd*, %struct.ehci_sitd** %6, align 8
  %8 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %7, i32 0, i32 3
  %9 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = bitcast %struct.TYPE_2__* %8 to i8*
  %16 = bitcast %struct.TYPE_2__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ehci_sitd*, %struct.ehci_sitd** %6, align 8
  %25 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ehci_sitd*, %struct.ehci_sitd** %6, align 8
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.ehci_sitd* %26, %struct.ehci_sitd** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ehci_sitd*, %struct.ehci_sitd** %6, align 8
  %36 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = call i32 (...) @wmb()
  %38 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %39 = load %struct.ehci_sitd*, %struct.ehci_sitd** %6, align 8
  %40 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @Q_TYPE_SITD, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %38, i32 %43)
  %45 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wmb(...) #2

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
