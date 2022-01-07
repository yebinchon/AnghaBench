; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_itd_sched_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_itd_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_iso_sched = type { i32, %struct.ehci_iso_packet* }
%struct.ehci_iso_packet = type { i32, i32, i32 }
%struct.ehci_iso_stream = type { i32 }
%struct.urb = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EHCI_ISOC_ACTIVE = common dso_local global i32 0, align 4
@URB_NO_INTERRUPT = common dso_local global i32 0, align 4
@EHCI_ITD_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_iso_sched*, %struct.ehci_iso_stream*, %struct.urb*)* @itd_sched_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @itd_sched_init(%struct.ehci_hcd* %0, %struct.ehci_iso_sched* %1, %struct.ehci_iso_stream* %2, %struct.urb* %3) #0 {
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca %struct.ehci_iso_sched*, align 8
  %7 = alloca %struct.ehci_iso_stream*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ehci_iso_packet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %5, align 8
  store %struct.ehci_iso_sched* %1, %struct.ehci_iso_sched** %6, align 8
  store %struct.ehci_iso_stream* %2, %struct.ehci_iso_stream** %7, align 8
  store %struct.urb* %3, %struct.urb** %8, align 8
  %15 = load %struct.urb*, %struct.urb** %8, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load %struct.urb*, %struct.urb** %8, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %22 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load %struct.ehci_iso_sched*, %struct.ehci_iso_sched** %6, align 8
  %26 = getelementptr inbounds %struct.ehci_iso_sched, %struct.ehci_iso_sched* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %113, %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.urb*, %struct.urb** %8, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %116

33:                                               ; preds = %27
  %34 = load %struct.ehci_iso_sched*, %struct.ehci_iso_sched** %6, align 8
  %35 = getelementptr inbounds %struct.ehci_iso_sched, %struct.ehci_iso_sched* %34, i32 0, i32 1
  %36 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %36, i64 %38
  store %struct.ehci_iso_packet* %39, %struct.ehci_iso_packet** %11, align 8
  %40 = load %struct.urb*, %struct.urb** %8, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.urb*, %struct.urb** %8, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %48, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @EHCI_ISOC_ACTIVE, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, 4095
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  %65 = load %struct.urb*, %struct.urb** %8, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %33
  %73 = load %struct.urb*, %struct.urb** %8, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @URB_NO_INTERRUPT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EHCI_ITD_IOC, align 4
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %79, %72, %33
  %84 = load i32, i32* %12, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %88, i32 %89)
  %91 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %92 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = and i32 %93, -4096
  %95 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %96 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %101 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, -4096
  %105 = icmp ne i32 %102, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %83
  %110 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %111 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %83
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %27

116:                                              ; preds = %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
