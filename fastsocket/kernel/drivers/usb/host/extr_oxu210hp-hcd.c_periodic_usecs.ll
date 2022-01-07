; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_periodic_usecs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_periodic_usecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { %union.ehci_shadow*, i32* }
%union.ehci_shadow = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, %union.ehci_shadow, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.oxu_hcd*, i32, i32)* @periodic_usecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @periodic_usecs(%struct.oxu_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oxu_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %union.ehci_shadow*, align 8
  %9 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %7, align 8
  %16 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %16, i32 0, i32 0
  %18 = load %union.ehci_shadow*, %union.ehci_shadow** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %union.ehci_shadow, %union.ehci_shadow* %18, i64 %20
  store %union.ehci_shadow* %21, %union.ehci_shadow** %8, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %80, %3
  %23 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %24 = bitcast %union.ehci_shadow* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @Q_NEXT_TYPE(i32 %29)
  switch i32 %30, label %32 [
    i32 128, label %31
  ]

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %27, %31
  %33 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %34 = bitcast %union.ehci_shadow* %33 to %struct.TYPE_2__**
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %45 = bitcast %union.ehci_shadow* %44 to %struct.TYPE_2__**
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %43, %32
  %52 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %53 = bitcast %union.ehci_shadow* %52 to %struct.TYPE_2__**
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add i32 8, %57
  %59 = shl i32 1, %58
  %60 = call i32 @cpu_to_le32(i32 %59)
  %61 = and i32 %56, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %65 = bitcast %union.ehci_shadow* %64 to %struct.TYPE_2__**
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %63, %51
  %72 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %73 = bitcast %union.ehci_shadow* %72 to %struct.TYPE_2__**
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  store i32* %75, i32** %7, align 8
  %76 = load %union.ehci_shadow*, %union.ehci_shadow** %8, align 8
  %77 = bitcast %union.ehci_shadow* %76 to %struct.TYPE_2__**
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store %union.ehci_shadow* %79, %union.ehci_shadow** %8, align 8
  br label %80

80:                                               ; preds = %71
  br label %22

81:                                               ; preds = %22
  %82 = load i32, i32* %9, align 4
  %83 = trunc i32 %82 to i16
  ret i16 %83
}

declare dso_local i32 @Q_NEXT_TYPE(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
