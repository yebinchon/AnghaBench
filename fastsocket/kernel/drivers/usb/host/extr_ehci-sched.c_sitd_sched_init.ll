; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_sched_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_iso_sched = type { i32, %struct.ehci_iso_packet* }
%struct.ehci_iso_packet = type { i32, i32, i32, i32 }
%struct.ehci_iso_stream = type { i32, i32 }
%struct.urb = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SITD_STS_ACTIVE = common dso_local global i32 0, align 4
@URB_NO_INTERRUPT = common dso_local global i32 0, align 4
@SITD_IOC = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_iso_sched*, %struct.ehci_iso_stream*, %struct.urb*)* @sitd_sched_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sitd_sched_init(%struct.ehci_hcd* %0, %struct.ehci_iso_sched* %1, %struct.ehci_iso_stream* %2, %struct.urb* %3) #0 {
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

27:                                               ; preds = %128, %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.urb*, %struct.urb** %8, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %131

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
  %48 = and i32 %47, 1023
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.urb*, %struct.urb** %8, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %49, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @SITD_STS_ACTIVE, align 4
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  %62 = load %struct.urb*, %struct.urb** %8, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %33
  %67 = load %struct.urb*, %struct.urb** %8, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @URB_NO_INTERRUPT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @SITD_IOC, align 4
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %73, %66, %33
  %78 = load i32, i32* %12, align 4
  %79 = shl i32 %78, 16
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %14, align 4
  %82 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @cpu_to_hc32(%struct.ehci_hcd* %82, i32 %83)
  %85 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %86 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %89 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add i32 %90, %91
  %93 = and i32 %92, -4096
  %94 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %95 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %97 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, -4096
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %77
  %103 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %104 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %103, i32 0, i32 2
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %77
  %106 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %7, align 8
  %107 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @USB_DIR_IN, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %128

113:                                              ; preds = %105
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 187
  %116 = udiv i32 %115, 188
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ugt i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, 8
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.ehci_iso_packet*, %struct.ehci_iso_packet** %11, align 8
  %125 = getelementptr inbounds %struct.ehci_iso_packet, %struct.ehci_iso_packet* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %112
  %129 = load i32, i32* %9, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %27

131:                                              ; preds = %27
  ret void
}

declare dso_local i32 @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
