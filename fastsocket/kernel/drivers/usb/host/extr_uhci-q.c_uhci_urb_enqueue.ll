; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.uhci_qh* }
%struct.uhci_qh = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.uhci_hcd = type { i32 }
%struct.urb_priv = type { i32, %struct.uhci_qh* }

@ENOMEM = common dso_local global i32 0, align 4
@QH_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @uhci_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uhci_hcd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.urb_priv*, align 8
  %11 = alloca %struct.uhci_qh*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %13 = call %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd* %12)
  store %struct.uhci_hcd* %13, %struct.uhci_hcd** %8, align 8
  %14 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %15 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = call i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd* %18, %struct.urb* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %141

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = call %struct.urb_priv* @uhci_alloc_urb_priv(%struct.uhci_hcd* %27, %struct.urb* %28)
  store %struct.urb_priv* %29, %struct.urb_priv** %10, align 8
  %30 = load %struct.urb_priv*, %struct.urb_priv** %10, align 8
  %31 = icmp ne %struct.urb_priv* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %133

33:                                               ; preds = %24
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.uhci_qh*, %struct.uhci_qh** %37, align 8
  %39 = icmp ne %struct.uhci_qh* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.urb*, %struct.urb** %5, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.uhci_qh*, %struct.uhci_qh** %44, align 8
  store %struct.uhci_qh* %45, %struct.uhci_qh** %11, align 8
  br label %59

46:                                               ; preds = %33
  %47 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %48 = load %struct.urb*, %struct.urb** %5, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.urb*, %struct.urb** %5, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call %struct.uhci_qh* @uhci_alloc_qh(%struct.uhci_hcd* %47, i32 %50, %struct.TYPE_3__* %53)
  store %struct.uhci_qh* %54, %struct.uhci_qh** %11, align 8
  %55 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %56 = icmp ne %struct.uhci_qh* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %129

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %61 = load %struct.urb_priv*, %struct.urb_priv** %10, align 8
  %62 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %61, i32 0, i32 1
  store %struct.uhci_qh* %60, %struct.uhci_qh** %62, align 8
  %63 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %64 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %88 [
    i32 130, label %66
    i32 131, label %71
    i32 129, label %76
    i32 128, label %81
  ]

66:                                               ; preds = %59
  %67 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %68 = load %struct.urb*, %struct.urb** %5, align 8
  %69 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %70 = call i32 @uhci_submit_control(%struct.uhci_hcd* %67, %struct.urb* %68, %struct.uhci_qh* %69)
  store i32 %70, i32* %7, align 4
  br label %88

71:                                               ; preds = %59
  %72 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %73 = load %struct.urb*, %struct.urb** %5, align 8
  %74 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %75 = call i32 @uhci_submit_bulk(%struct.uhci_hcd* %72, %struct.urb* %73, %struct.uhci_qh* %74)
  store i32 %75, i32* %7, align 4
  br label %88

76:                                               ; preds = %59
  %77 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %78 = load %struct.urb*, %struct.urb** %5, align 8
  %79 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %80 = call i32 @uhci_submit_interrupt(%struct.uhci_hcd* %77, %struct.urb* %78, %struct.uhci_qh* %79)
  store i32 %80, i32* %7, align 4
  br label %88

81:                                               ; preds = %59
  %82 = load %struct.urb*, %struct.urb** %5, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %85 = load %struct.urb*, %struct.urb** %5, align 8
  %86 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %87 = call i32 @uhci_submit_isochronous(%struct.uhci_hcd* %84, %struct.urb* %85, %struct.uhci_qh* %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %59, %81, %76, %71, %66
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %118

92:                                               ; preds = %88
  %93 = load %struct.urb_priv*, %struct.urb_priv** %10, align 8
  %94 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %93, i32 0, i32 0
  %95 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %96 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %95, i32 0, i32 3
  %97 = call i32 @list_add_tail(i32* %94, %struct.TYPE_4__* %96)
  %98 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %99 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.urb_priv*, %struct.urb_priv** %10, align 8
  %103 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %102, i32 0, i32 0
  %104 = icmp eq i32* %101, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %92
  %106 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %107 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %105
  %111 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %112 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %113 = call i32 @uhci_activate_qh(%struct.uhci_hcd* %111, %struct.uhci_qh* %112)
  %114 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %115 = load %struct.urb_priv*, %struct.urb_priv** %10, align 8
  %116 = call i32 @uhci_urbp_wants_fsbr(%struct.uhci_hcd* %114, %struct.urb_priv* %115)
  br label %117

117:                                              ; preds = %110, %105, %92
  br label %133

118:                                              ; preds = %91
  %119 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %120 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @QH_STATE_IDLE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %126 = load %struct.uhci_qh*, %struct.uhci_qh** %11, align 8
  %127 = call i32 @uhci_make_qh_idle(%struct.uhci_hcd* %125, %struct.uhci_qh* %126)
  br label %128

128:                                              ; preds = %124, %118
  br label %129

129:                                              ; preds = %128, %57
  %130 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %131 = load %struct.urb_priv*, %struct.urb_priv** %10, align 8
  %132 = call i32 @uhci_free_urb_priv(%struct.uhci_hcd* %130, %struct.urb_priv* %131)
  br label %133

133:                                              ; preds = %129, %117, %32
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %138 = load %struct.urb*, %struct.urb** %5, align 8
  %139 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %137, %struct.urb* %138)
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %23
  %142 = load %struct.uhci_hcd*, %struct.uhci_hcd** %8, align 8
  %143 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %142, i32 0, i32 0
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local %struct.urb_priv* @uhci_alloc_urb_priv(%struct.uhci_hcd*, %struct.urb*) #1

declare dso_local %struct.uhci_qh* @uhci_alloc_qh(%struct.uhci_hcd*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @uhci_submit_control(%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_submit_bulk(%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_submit_interrupt(%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_submit_isochronous(%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @uhci_activate_qh(%struct.uhci_hcd*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_urbp_wants_fsbr(%struct.uhci_hcd*, %struct.urb_priv*) #1

declare dso_local i32 @uhci_make_qh_idle(%struct.uhci_hcd*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_free_urb_priv(%struct.uhci_hcd*, %struct.urb_priv*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
