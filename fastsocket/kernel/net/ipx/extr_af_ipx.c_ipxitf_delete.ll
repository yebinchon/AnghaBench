; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i32 }
%struct.ipx_interface_definition = type { i64, i32, i32 }
%struct.net_device = type { i32 }

@ipx_interfaces_lock = common dso_local global i32 0, align 4
@IPX_INTERNAL = common dso_local global i64 0, align 8
@ipx_internal_net = common dso_local global %struct.ipx_interface* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipx_interface_definition*)* @ipxitf_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipxitf_delete(%struct.ipx_interface_definition* %0) #0 {
  %2 = alloca %struct.ipx_interface_definition*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ipx_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.ipx_interface_definition* %0, %struct.ipx_interface_definition** %2, align 8
  store %struct.net_device* null, %struct.net_device** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @spin_lock_bh(i32* @ipx_interfaces_lock)
  %8 = load %struct.ipx_interface_definition*, %struct.ipx_interface_definition** %2, align 8
  %9 = getelementptr inbounds %struct.ipx_interface_definition, %struct.ipx_interface_definition* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPX_INTERNAL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_internal_net, align 8
  %15 = icmp ne %struct.ipx_interface* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_internal_net, align 8
  %18 = call i32 @__ipxitf_put(%struct.ipx_interface* %17)
  br label %54

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.ipx_interface_definition*, %struct.ipx_interface_definition** %2, align 8
  %24 = getelementptr inbounds %struct.ipx_interface_definition, %struct.ipx_interface_definition* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ipx_map_frame_type(i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i32, i32* @EPROTONOSUPPORT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %54

32:                                               ; preds = %22
  %33 = load %struct.ipx_interface_definition*, %struct.ipx_interface_definition** %2, align 8
  %34 = getelementptr inbounds %struct.ipx_interface_definition, %struct.ipx_interface_definition* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.net_device* @__dev_get_by_name(i32* @init_net, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %3, align 8
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %54

42:                                               ; preds = %32
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call %struct.ipx_interface* @__ipxitf_find_using_phys(%struct.net_device* %43, i64 %44)
  store %struct.ipx_interface* %45, %struct.ipx_interface** %5, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %49 = icmp ne %struct.ipx_interface* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %53 = call i32 @__ipxitf_put(%struct.ipx_interface* %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %50, %41, %31, %19, %16
  %55 = call i32 @spin_unlock_bh(i32* @ipx_interfaces_lock)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__ipxitf_put(%struct.ipx_interface*) #1

declare dso_local i64 @ipx_map_frame_type(i32) #1

declare dso_local %struct.net_device* @__dev_get_by_name(i32*, i32) #1

declare dso_local %struct.ipx_interface* @__ipxitf_find_using_phys(%struct.net_device*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
