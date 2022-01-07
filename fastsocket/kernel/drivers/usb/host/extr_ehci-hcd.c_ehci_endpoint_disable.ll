; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.ehci_qh*, %struct.TYPE_8__ }
%struct.ehci_qh = type { i32, i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.ehci_qh* }
%struct.TYPE_8__ = type { i32 }
%struct.ehci_hcd = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ehci_qh* }

@.str = private unnamed_addr constant [11 x i8] c"iso delay\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"qh %p (#%02x) state %d%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(has tds)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @ehci_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ehci_qh*, align 8
  %8 = alloca %struct.ehci_qh*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %9)
  store %struct.ehci_hcd* %10, %struct.ehci_hcd** %5, align 8
  br label %11

11:                                               ; preds = %74, %2
  %12 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %13 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %17 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %16, i32 0, i32 0
  %18 = load %struct.ehci_qh*, %struct.ehci_qh** %17, align 8
  store %struct.ehci_qh* %18, %struct.ehci_qh** %7, align 8
  %19 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %20 = icmp ne %struct.ehci_qh* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %115

22:                                               ; preds = %11
  %23 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %24 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %29 = call i32 @ehci_vdbg(%struct.ehci_hcd* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %74

30:                                               ; preds = %22
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @HC_IS_RUNNING(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %38 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %37, i32 0, i32 0
  store i32 131, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %41 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %95 [
    i32 130, label %43
    i32 132, label %43
    i32 129, label %73
    i32 128, label %73
    i32 131, label %80
  ]

43:                                               ; preds = %39, %39
  %44 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %45 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.ehci_qh*, %struct.ehci_qh** %48, align 8
  store %struct.ehci_qh* %49, %struct.ehci_qh** %8, align 8
  br label %50

50:                                               ; preds = %60, %43
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %52 = icmp ne %struct.ehci_qh* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %55 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %56 = icmp ne %struct.ehci_qh* %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %65

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %62 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.ehci_qh*, %struct.ehci_qh** %63, align 8
  store %struct.ehci_qh* %64, %struct.ehci_qh** %8, align 8
  br label %50

65:                                               ; preds = %57
  %66 = load %struct.ehci_qh*, %struct.ehci_qh** %8, align 8
  %67 = icmp ne %struct.ehci_qh* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %70 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %71 = call i32 @unlink_async(%struct.ehci_hcd* %69, %struct.ehci_qh* %70)
  br label %72

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %39, %39, %72
  br label %74

74:                                               ; preds = %85, %73, %27
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %76 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %75, i32 0, i32 0
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %11

80:                                               ; preds = %39
  %81 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %82 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %74

86:                                               ; preds = %80
  %87 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %88 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %87, i32 0, i32 1
  %89 = call i32 @list_empty(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %93 = call i32 @qh_put(%struct.ehci_qh* %92)
  br label %112

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %39, %94
  %96 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %97 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %98 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %99 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %103 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %106 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %105, i32 0, i32 1
  %107 = call i32 @list_empty(i32* %106)
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %111 = call i32 @ehci_err(%struct.ehci_hcd* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.ehci_qh* %97, i32 %101, i32 %104, i8* %110)
  br label %112

112:                                              ; preds = %95, %91
  %113 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %114 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %113, i32 0, i32 0
  store %struct.ehci_qh* null, %struct.ehci_qh** %114, align 8
  br label %115

115:                                              ; preds = %112, %21
  %116 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %117 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %116, i32 0, i32 0
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  ret void
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ehci_vdbg(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @qh_put(%struct.ehci_qh*) #1

declare dso_local i32 @ehci_err(%struct.ehci_hcd*, i8*, %struct.ehci_qh*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
