; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy = type { i32, i32, %struct.TYPE_10__, %struct.usb_gadget_driver*, %struct.TYPE_7__, %struct.dummy_ep*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32*, i64 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_10__*)*, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dummy_ep = type { %struct.TYPE_6__, i32, i32*, %struct.TYPE_10__*, i32, i64, i64, i64, i64 }

@the_controller = common dso_local global %struct.dummy* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUMMY_ENDPOINTS = common dso_local global i32 0, align 4
@ep_name = common dso_local global i64* null, align 8
@dummy_ep_ops = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"binding gadget driver '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.dummy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dummy_ep*, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %8 = load %struct.dummy*, %struct.dummy** @the_controller, align 8
  store %struct.dummy* %8, %struct.dummy** %4, align 8
  %9 = load %struct.dummy*, %struct.dummy** %4, align 8
  %10 = icmp ne %struct.dummy* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %186

14:                                               ; preds = %1
  %15 = load %struct.dummy*, %struct.dummy** %4, align 8
  %16 = getelementptr inbounds %struct.dummy, %struct.dummy* %15, i32 0, i32 3
  %17 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %16, align 8
  %18 = icmp ne %struct.usb_gadget_driver* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %186

22:                                               ; preds = %14
  %23 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %24 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_10__*)* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %29 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %34 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %27, %22
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %186

41:                                               ; preds = %32
  %42 = load %struct.dummy*, %struct.dummy** %4, align 8
  %43 = getelementptr inbounds %struct.dummy, %struct.dummy* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.dummy*, %struct.dummy** %4, align 8
  %45 = getelementptr inbounds %struct.dummy, %struct.dummy* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %108, %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DUMMY_ENDPOINTS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %48
  %53 = load %struct.dummy*, %struct.dummy** %4, align 8
  %54 = getelementptr inbounds %struct.dummy, %struct.dummy* %53, i32 0, i32 5
  %55 = load %struct.dummy_ep*, %struct.dummy_ep** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %55, i64 %57
  store %struct.dummy_ep* %58, %struct.dummy_ep** %7, align 8
  %59 = load i64*, i64** @ep_name, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  br label %111

66:                                               ; preds = %52
  %67 = load i64*, i64** @ep_name, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %73 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i64 %71, i64* %74, align 8
  %75 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %76 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i32* @dummy_ep_ops, i32** %77, align 8
  %78 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %79 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.dummy*, %struct.dummy** %4, align 8
  %82 = getelementptr inbounds %struct.dummy, %struct.dummy* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = call i32 @list_add_tail(i32* %80, i32* %83)
  %85 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %86 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %88 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %90 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %89, i32 0, i32 7
  store i64 0, i64* %90, align 8
  %91 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %92 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %91, i32 0, i32 8
  store i64 0, i64* %92, align 8
  %93 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %94 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 -1, i32* %95, align 8
  %96 = load i32, i32* @jiffies, align 4
  %97 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %98 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.dummy*, %struct.dummy** %4, align 8
  %100 = getelementptr inbounds %struct.dummy, %struct.dummy* %99, i32 0, i32 2
  %101 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %102 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %101, i32 0, i32 3
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %102, align 8
  %103 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %104 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %103, i32 0, i32 2
  store i32* null, i32** %104, align 8
  %105 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %106 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %105, i32 0, i32 1
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  br label %108

108:                                              ; preds = %66
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %48

111:                                              ; preds = %65, %48
  %112 = load %struct.dummy*, %struct.dummy** %4, align 8
  %113 = getelementptr inbounds %struct.dummy, %struct.dummy* %112, i32 0, i32 5
  %114 = load %struct.dummy_ep*, %struct.dummy_ep** %113, align 8
  %115 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %114, i64 0
  %116 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %115, i32 0, i32 0
  %117 = load %struct.dummy*, %struct.dummy** %4, align 8
  %118 = getelementptr inbounds %struct.dummy, %struct.dummy* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %119, align 8
  %120 = load %struct.dummy*, %struct.dummy** %4, align 8
  %121 = getelementptr inbounds %struct.dummy, %struct.dummy* %120, i32 0, i32 5
  %122 = load %struct.dummy_ep*, %struct.dummy_ep** %121, align 8
  %123 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %122, i64 0
  %124 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 64, i32* %125, align 8
  %126 = load %struct.dummy*, %struct.dummy** %4, align 8
  %127 = getelementptr inbounds %struct.dummy, %struct.dummy* %126, i32 0, i32 5
  %128 = load %struct.dummy_ep*, %struct.dummy_ep** %127, align 8
  %129 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %128, i64 0
  %130 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = call i32 @list_del_init(i32* %131)
  %133 = load %struct.dummy*, %struct.dummy** %4, align 8
  %134 = getelementptr inbounds %struct.dummy, %struct.dummy* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %138 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  %140 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %141 = load %struct.dummy*, %struct.dummy** %4, align 8
  %142 = getelementptr inbounds %struct.dummy, %struct.dummy* %141, i32 0, i32 3
  store %struct.usb_gadget_driver* %140, %struct.usb_gadget_driver** %142, align 8
  %143 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %144 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %143, i32 0, i32 2
  %145 = load %struct.dummy*, %struct.dummy** %4, align 8
  %146 = getelementptr inbounds %struct.dummy, %struct.dummy* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %148, align 8
  %149 = load %struct.dummy*, %struct.dummy** %4, align 8
  %150 = call i32 @udc_dev(%struct.dummy* %149)
  %151 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %152 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_dbg(i32 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %154)
  %156 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %157 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %157, align 8
  %159 = load %struct.dummy*, %struct.dummy** %4, align 8
  %160 = getelementptr inbounds %struct.dummy, %struct.dummy* %159, i32 0, i32 2
  %161 = call i32 %158(%struct.TYPE_10__* %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %111
  %165 = load %struct.dummy*, %struct.dummy** %4, align 8
  %166 = getelementptr inbounds %struct.dummy, %struct.dummy* %165, i32 0, i32 3
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %166, align 8
  %167 = load %struct.dummy*, %struct.dummy** %4, align 8
  %168 = getelementptr inbounds %struct.dummy, %struct.dummy* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %170, align 8
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %2, align 4
  br label %186

172:                                              ; preds = %111
  %173 = load %struct.dummy*, %struct.dummy** %4, align 8
  %174 = getelementptr inbounds %struct.dummy, %struct.dummy* %173, i32 0, i32 1
  %175 = call i32 @spin_lock_irq(i32* %174)
  %176 = load %struct.dummy*, %struct.dummy** %4, align 8
  %177 = getelementptr inbounds %struct.dummy, %struct.dummy* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load %struct.dummy*, %struct.dummy** %4, align 8
  %179 = call i32 @set_link_state(%struct.dummy* %178)
  %180 = load %struct.dummy*, %struct.dummy** %4, align 8
  %181 = getelementptr inbounds %struct.dummy, %struct.dummy* %180, i32 0, i32 1
  %182 = call i32 @spin_unlock_irq(i32* %181)
  %183 = load %struct.dummy*, %struct.dummy** %4, align 8
  %184 = call i32 @dummy_to_hcd(%struct.dummy* %183)
  %185 = call i32 @usb_hcd_poll_rh_status(i32 %184)
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %172, %164, %38, %19, %11
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @udc_dev(%struct.dummy*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_link_state(%struct.dummy*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_hcd_poll_rh_status(i32) #1

declare dso_local i32 @dummy_to_hcd(%struct.dummy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
