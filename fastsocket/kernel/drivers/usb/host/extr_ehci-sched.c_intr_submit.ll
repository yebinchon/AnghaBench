; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_intr_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_intr_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.list_head = type { i32 }
%struct.ehci_qh = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QH_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, %struct.urb*, %struct.list_head*, i32)* @intr_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intr_submit(%struct.ehci_hcd* %0, %struct.urb* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ehci_qh*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.list_head, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.urb*, %struct.urb** %6, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %25 = call %struct.TYPE_11__* @ehci_to_hcd(%struct.ehci_hcd* %24)
  %26 = call i32 @HCD_HW_ACCESSIBLE(%struct.TYPE_11__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @ESHUTDOWN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %102

35:                                               ; preds = %4
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %37 = call %struct.TYPE_11__* @ehci_to_hcd(%struct.ehci_hcd* %36)
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = call i32 @usb_hcd_link_urb_to_ep(%struct.TYPE_11__* %37, %struct.urb* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %102

44:                                               ; preds = %35
  %45 = call i32 @INIT_LIST_HEAD(%struct.list_head* %13)
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.urb*, %struct.urb** %6, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = call %struct.ehci_qh* @qh_append_tds(%struct.ehci_hcd* %46, %struct.urb* %47, %struct.list_head* %13, i32 %48, i32* %52)
  store %struct.ehci_qh* %53, %struct.ehci_qh** %11, align 8
  %54 = load %struct.ehci_qh*, %struct.ehci_qh** %11, align 8
  %55 = icmp eq %struct.ehci_qh* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %92

59:                                               ; preds = %44
  %60 = load %struct.ehci_qh*, %struct.ehci_qh** %11, align 8
  %61 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QH_STATE_IDLE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %67 = load %struct.ehci_qh*, %struct.ehci_qh** %11, align 8
  %68 = call i32 @qh_schedule(%struct.ehci_hcd* %66, %struct.ehci_qh* %67)
  store i32 %68, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %92

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %74 = load %struct.urb*, %struct.urb** %6, align 8
  %75 = load %struct.list_head*, %struct.list_head** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.urb*, %struct.urb** %6, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = call %struct.ehci_qh* @qh_append_tds(%struct.ehci_hcd* %73, %struct.urb* %74, %struct.list_head* %75, i32 %76, i32* %80)
  store %struct.ehci_qh* %81, %struct.ehci_qh** %11, align 8
  %82 = load %struct.ehci_qh*, %struct.ehci_qh** %11, align 8
  %83 = icmp eq %struct.ehci_qh* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUG_ON(i32 %84)
  %86 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %87 = call %struct.TYPE_11__* @ehci_to_hcd(%struct.ehci_hcd* %86)
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %72, %70, %56
  %93 = load i32, i32* %12, align 4
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %98 = call %struct.TYPE_11__* @ehci_to_hcd(%struct.ehci_hcd* %97)
  %99 = load %struct.urb*, %struct.urb** %6, align 8
  %100 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.TYPE_11__* %98, %struct.urb* %99)
  br label %101

101:                                              ; preds = %96, %92
  br label %102

102:                                              ; preds = %101, %43, %32
  %103 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %104 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %103, i32 0, i32 0
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %111 = load %struct.urb*, %struct.urb** %6, align 8
  %112 = load %struct.list_head*, %struct.list_head** %7, align 8
  %113 = call i32 @qtd_list_free(%struct.ehci_hcd* %110, %struct.urb* %111, %struct.list_head* %112)
  br label %114

114:                                              ; preds = %109, %102
  %115 = load i32, i32* %12, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(%struct.TYPE_11__*, %struct.urb*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.ehci_qh* @qh_append_tds(%struct.ehci_hcd*, %struct.urb*, %struct.list_head*, i32, i32*) #1

declare dso_local i32 @qh_schedule(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.TYPE_11__*, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qtd_list_free(%struct.ehci_hcd*, %struct.urb*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
