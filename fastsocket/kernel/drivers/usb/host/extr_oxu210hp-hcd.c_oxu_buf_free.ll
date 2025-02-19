; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_buf_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ehci_qtd = type { i8*, i64, i64 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.ehci_qtd*)* @oxu_buf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxu_buf_free(%struct.oxu_hcd* %0, %struct.ehci_qtd* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qtd*, align 8
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qtd* %1, %struct.ehci_qtd** %4, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %10 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = bitcast i32* %17 to i8*
  %19 = ptrtoint i8* %11 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = load i32, i32* @BUFFER_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = sdiv i64 %21, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %33 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %35 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.ehci_qtd*, %struct.ehci_qtd** %4, align 8
  %37 = getelementptr inbounds %struct.ehci_qtd, %struct.ehci_qtd* %36, i32 0, i32 0
  store i8* null, i8** %37, align 8
  %38 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
