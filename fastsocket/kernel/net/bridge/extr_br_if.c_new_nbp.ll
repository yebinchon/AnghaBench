; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_new_nbp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_new_nbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i32, i32, i64, i32, %struct.net_device*, %struct.net_bridge* }
%struct.net_bridge = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BR_PORT_BITS = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_bridge_port* (%struct.net_bridge*, %struct.net_device*)* @new_nbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_bridge_port* @new_nbp(%struct.net_bridge* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %9 = call i32 @find_portno(%struct.net_bridge* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.net_bridge_port* @ERR_PTR(i32 %13)
  store %struct.net_bridge_port* %14, %struct.net_bridge_port** %3, align 8
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.net_bridge_port* @kzalloc(i32 48, i32 %16)
  store %struct.net_bridge_port* %17, %struct.net_bridge_port** %7, align 8
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %19 = icmp eq %struct.net_bridge_port* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.net_bridge_port* @ERR_PTR(i32 %22)
  store %struct.net_bridge_port* %23, %struct.net_bridge_port** %3, align 8
  br label %56

24:                                               ; preds = %15
  %25 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %26 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %27 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %26, i32 0, i32 6
  store %struct.net_bridge* %25, %struct.net_bridge** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @dev_hold(%struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %32 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %31, i32 0, i32 5
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @port_cost(%struct.net_device* %33)
  %35 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %36 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @BR_PORT_BITS, align 4
  %38 = ashr i32 32768, %37
  %39 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %40 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %43 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %45 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %47 = call i32 @br_init_port(%struct.net_bridge_port* %46)
  %48 = load i32, i32* @BR_STATE_DISABLED, align 4
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %50 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %52 = call i32 @br_stp_port_timer_init(%struct.net_bridge_port* %51)
  %53 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %54 = call i32 @br_multicast_add_port(%struct.net_bridge_port* %53)
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  store %struct.net_bridge_port* %55, %struct.net_bridge_port** %3, align 8
  br label %56

56:                                               ; preds = %24, %20, %12
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  ret %struct.net_bridge_port* %57
}

declare dso_local i32 @find_portno(%struct.net_bridge*) #1

declare dso_local %struct.net_bridge_port* @ERR_PTR(i32) #1

declare dso_local %struct.net_bridge_port* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @port_cost(%struct.net_device*) #1

declare dso_local i32 @br_init_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_stp_port_timer_init(%struct.net_bridge_port*) #1

declare dso_local i32 @br_multicast_add_port(%struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
