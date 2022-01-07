; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }

@STS_ASS = common dso_local global i32 0, align 4
@STS_PSS = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i8* null, align 8
@CMD_ASE = common dso_local global i32 0, align 4
@CMD_IAAD = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*)* @ehci_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_quiesce(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  %4 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = call i32 @readl(i32* %7)
  %9 = shl i32 %8, 10
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @STS_ASS, align 4
  %11 = load i32, i32* @STS_PSS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %16 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* @STS_ASS, align 4
  %21 = load i32, i32* @STS_PSS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @handshake(%struct.oxu_hcd* %15, i32* %19, i32 %22, i32 %23, i32 2000)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i8*, i8** @HC_STATE_HALT, align 8
  %28 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %29 = call %struct.TYPE_4__* @oxu_to_hcd(%struct.oxu_hcd* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  br label %66

31:                                               ; preds = %1
  %32 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %33 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @readl(i32* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @CMD_ASE, align 4
  %38 = load i32, i32* @CMD_IAAD, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CMD_PSE, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %47 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @writel(i32 %45, i32* %49)
  %51 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %53 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* @STS_ASS, align 4
  %57 = load i32, i32* @STS_PSS, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @handshake(%struct.oxu_hcd* %51, i32* %55, i32 %58, i32 0, i32 2000)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %31
  %62 = load i8*, i8** @HC_STATE_HALT, align 8
  %63 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %64 = call %struct.TYPE_4__* @oxu_to_hcd(%struct.oxu_hcd* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  br label %66

66:                                               ; preds = %26, %61, %31
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @handshake(%struct.oxu_hcd*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
