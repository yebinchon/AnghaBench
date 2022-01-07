; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_psnap.c_register_snap_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_psnap.c_register_snap_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink_proto = type { i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)*, i32, i32, i32, i32 }
%struct.sk_buff = type opaque
%struct.packet_type = type opaque
%struct.net_device = type opaque
%struct.sk_buff.0 = type opaque
%struct.packet_type.2 = type opaque
%struct.net_device.1 = type opaque

@snap_lock = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@snap_request = common dso_local global i32 0, align 4
@snap_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.datalink_proto* @register_snap_client(i8* %0, i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)*, align 8
  %5 = alloca %struct.datalink_proto*, align 8
  store i8* %0, i8** %3, align 8
  store i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)* %1, i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)** %4, align 8
  store %struct.datalink_proto* null, %struct.datalink_proto** %5, align 8
  %6 = call i32 @spin_lock_bh(i32* @snap_lock)
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @find_snap_client(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.datalink_proto* @kmalloc(i32 24, i32 %12)
  store %struct.datalink_proto* %13, %struct.datalink_proto** %5, align 8
  %14 = load %struct.datalink_proto*, %struct.datalink_proto** %5, align 8
  %15 = icmp ne %struct.datalink_proto* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load %struct.datalink_proto*, %struct.datalink_proto** %5, align 8
  %18 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @memcpy(i32 %19, i8* %20, i32 5)
  %22 = load i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)*, i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)** %4, align 8
  %23 = bitcast i32 (%struct.sk_buff.0*, %struct.net_device.1*, %struct.packet_type.2*, %struct.net_device.1*)* %22 to i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)*
  %24 = load %struct.datalink_proto*, %struct.datalink_proto** %5, align 8
  %25 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %24, i32 0, i32 0
  store i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* %23, i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)** %25, align 8
  %26 = load %struct.datalink_proto*, %struct.datalink_proto** %5, align 8
  %27 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %26, i32 0, i32 1
  store i32 8, i32* %27, align 8
  %28 = load i32, i32* @snap_request, align 4
  %29 = load %struct.datalink_proto*, %struct.datalink_proto** %5, align 8
  %30 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.datalink_proto*, %struct.datalink_proto** %5, align 8
  %32 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %31, i32 0, i32 2
  %33 = call i32 @list_add_rcu(i32* %32, i32* @snap_list)
  br label %34

34:                                               ; preds = %16, %11
  br label %35

35:                                               ; preds = %34, %10
  %36 = call i32 @spin_unlock_bh(i32* @snap_lock)
  %37 = call i32 (...) @synchronize_net()
  %38 = load %struct.datalink_proto*, %struct.datalink_proto** %5, align 8
  ret %struct.datalink_proto* %38
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @find_snap_client(i8*) #1

declare dso_local %struct.datalink_proto* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
