; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c_pn_set_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_phonet.c_pn_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_phonet = type { i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.net_device*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.f_phonet* }
%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_gadget* }
%struct.usb_gadget = type { i32 }
%struct.phonet_port = type { i32, %struct.f_phonet* }
%struct.usb_endpoint_descriptor = type { i32 }

@pn_control_intf_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@pn_data_intf_desc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@pn_hs_sink_desc = common dso_local global i32 0, align 4
@pn_fs_sink_desc = common dso_local global i32 0, align 4
@pn_hs_source_desc = common dso_local global i32 0, align 4
@pn_fs_source_desc = common dso_local global i32 0, align 4
@phonet_rxq_size = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @pn_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_phonet*, align 8
  %9 = alloca %struct.usb_gadget*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.phonet_port*, align 8
  %12 = alloca %struct.usb_endpoint_descriptor*, align 8
  %13 = alloca %struct.usb_endpoint_descriptor*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %16 = call %struct.f_phonet* @func_to_pn(%struct.usb_function* %15)
  store %struct.f_phonet* %16, %struct.f_phonet** %8, align 8
  %17 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %18 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.usb_gadget*, %struct.usb_gadget** %23, align 8
  store %struct.usb_gadget* %24, %struct.usb_gadget** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pn_control_intf_desc, i32 0, i32 0), align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  store i32 %36, i32* %4, align 4
  br label %116

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pn_data_intf_desc, i32 0, i32 0), align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %113

41:                                               ; preds = %37
  %42 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %43 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %42, i32 0, i32 3
  %44 = load %struct.net_device*, %struct.net_device** %43, align 8
  store %struct.net_device* %44, %struct.net_device** %10, align 8
  %45 = load %struct.net_device*, %struct.net_device** %10, align 8
  %46 = call %struct.phonet_port* @netdev_priv(%struct.net_device* %45)
  store %struct.phonet_port* %46, %struct.phonet_port** %11, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %116

52:                                               ; preds = %41
  %53 = load %struct.phonet_port*, %struct.phonet_port** %11, align 8
  %54 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %57 = call i32 @__pn_reset(%struct.usb_function* %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %109

60:                                               ; preds = %52
  %61 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  %62 = call %struct.usb_endpoint_descriptor* @ep_choose(%struct.usb_gadget* %61, i32* @pn_hs_sink_desc, i32* @pn_fs_sink_desc)
  store %struct.usb_endpoint_descriptor* %62, %struct.usb_endpoint_descriptor** %12, align 8
  %63 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  %64 = call %struct.usb_endpoint_descriptor* @ep_choose(%struct.usb_gadget* %63, i32* @pn_hs_source_desc, i32* @pn_fs_source_desc)
  store %struct.usb_endpoint_descriptor* %64, %struct.usb_endpoint_descriptor** %13, align 8
  %65 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %66 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %69 = call i32 @usb_ep_enable(%struct.TYPE_10__* %67, %struct.usb_endpoint_descriptor* %68)
  %70 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %71 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %74 = call i32 @usb_ep_enable(%struct.TYPE_10__* %72, %struct.usb_endpoint_descriptor* %73)
  %75 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %76 = load %struct.phonet_port*, %struct.phonet_port** %11, align 8
  %77 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %76, i32 0, i32 1
  store %struct.f_phonet* %75, %struct.f_phonet** %77, align 8
  %78 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %79 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %80 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store %struct.f_phonet* %78, %struct.f_phonet** %82, align 8
  %83 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %84 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %85 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store %struct.f_phonet* %83, %struct.f_phonet** %87, align 8
  %88 = load %struct.net_device*, %struct.net_device** %10, align 8
  %89 = call i32 @netif_carrier_on(%struct.net_device* %88)
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %105, %60
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @phonet_rxq_size, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %96 = load %struct.f_phonet*, %struct.f_phonet** %8, align 8
  %97 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @GFP_ATOMIC, align 4
  %104 = call i32 @pn_rx_submit(%struct.f_phonet* %95, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %90

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %52
  %110 = load %struct.phonet_port*, %struct.phonet_port** %11, align 8
  %111 = getelementptr inbounds %struct.phonet_port, %struct.phonet_port* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  store i32 0, i32* %4, align 4
  br label %116

113:                                              ; preds = %37
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %109, %49, %35
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.f_phonet* @func_to_pn(%struct.usb_function*) #1

declare dso_local %struct.phonet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__pn_reset(%struct.usb_function*) #1

declare dso_local %struct.usb_endpoint_descriptor* @ep_choose(%struct.usb_gadget*, i32*, i32*) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_10__*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @pn_rx_submit(%struct.f_phonet*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
