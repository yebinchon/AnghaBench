; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.intr_pkt*, %struct.uea_softc* }
%struct.intr_pkt = type { i32, i32 }
%struct.uea_softc = type { i32, i32 (%struct.uea_softc*, %struct.intr_pkt*)*, i32 (%struct.uea_softc*, %struct.intr_pkt*)*, i64 }

@.str = private unnamed_addr constant [27 x i8] c"uea_intr() failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"wrong interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown interrupt %u\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @uea_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uea_intr(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca %struct.intr_pkt*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 2
  %8 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  store %struct.uea_softc* %8, %struct.uea_softc** %3, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 1
  %11 = load %struct.intr_pkt*, %struct.intr_pkt** %10, align 8
  store %struct.intr_pkt* %11, %struct.intr_pkt** %4, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %16 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %15)
  %17 = call i32 @uea_enters(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %25 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, ...) @uea_err(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %76

28:                                               ; preds = %1
  %29 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %30 = getelementptr inbounds %struct.intr_pkt, %struct.intr_pkt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 8
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %28
  %39 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %40 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %39)
  %41 = call i32 (i32, i8*, ...) @uea_err(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %70

42:                                               ; preds = %33
  %43 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %44 = getelementptr inbounds %struct.intr_pkt, %struct.intr_pkt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  switch i32 %46, label %61 [
    i32 128, label %47
    i32 129, label %54
  ]

47:                                               ; preds = %42
  %48 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %48, i32 0, i32 2
  %50 = load i32 (%struct.uea_softc*, %struct.intr_pkt*)*, i32 (%struct.uea_softc*, %struct.intr_pkt*)** %49, align 8
  %51 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %52 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %53 = call i32 %50(%struct.uea_softc* %51, %struct.intr_pkt* %52)
  br label %69

54:                                               ; preds = %42
  %55 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %56 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %55, i32 0, i32 1
  %57 = load i32 (%struct.uea_softc*, %struct.intr_pkt*)*, i32 (%struct.uea_softc*, %struct.intr_pkt*)** %56, align 8
  %58 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %59 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %60 = call i32 %57(%struct.uea_softc* %58, %struct.intr_pkt* %59)
  br label %69

61:                                               ; preds = %42
  %62 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %63 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %62)
  %64 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %65 = getelementptr inbounds %struct.intr_pkt, %struct.intr_pkt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = call i32 (i32, i8*, ...) @uea_err(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %61, %54, %47
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %72 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call i32 @usb_submit_urb(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %23
  ret void
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @uea_err(i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
