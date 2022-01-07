; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_auto_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_auto_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink_proto = type { i64 }
%struct.ipx_interface = type { i32, i32, i32* }
%struct.net_device = type { i64, i32, i64 }

@IPX_NODE_LEN = common dso_local global i64 0, align 8
@pEII_datalink = common dso_local global %struct.datalink_proto* null, align 8
@p8022_datalink = common dso_local global %struct.datalink_proto* null, align 8
@pSNAP_datalink = common dso_local global %struct.datalink_proto* null, align 8
@p8023_datalink = common dso_local global %struct.datalink_proto* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipx_interface* (%struct.net_device*, i32)* @ipxitf_auto_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipx_interface* @ipxitf_auto_create(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipx_interface*, align 8
  %6 = alloca %struct.datalink_proto*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ipx_interface* null, %struct.ipx_interface** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %77

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IPX_NODE_LEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %77

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ntohs(i32 %18)
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 131, label %22
    i32 128, label %24
    i32 130, label %26
  ]

20:                                               ; preds = %17
  %21 = load %struct.datalink_proto*, %struct.datalink_proto** @pEII_datalink, align 8
  store %struct.datalink_proto* %21, %struct.datalink_proto** %6, align 8
  br label %29

22:                                               ; preds = %17
  %23 = load %struct.datalink_proto*, %struct.datalink_proto** @p8022_datalink, align 8
  store %struct.datalink_proto* %23, %struct.datalink_proto** %6, align 8
  br label %29

24:                                               ; preds = %17
  %25 = load %struct.datalink_proto*, %struct.datalink_proto** @pSNAP_datalink, align 8
  store %struct.datalink_proto* %25, %struct.datalink_proto** %6, align 8
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.datalink_proto*, %struct.datalink_proto** @p8023_datalink, align 8
  store %struct.datalink_proto* %27, %struct.datalink_proto** %6, align 8
  br label %29

28:                                               ; preds = %17
  br label %77

29:                                               ; preds = %26, %24, %22, %20
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.datalink_proto*, %struct.datalink_proto** %6, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.datalink_proto*, %struct.datalink_proto** %6, align 8
  %37 = getelementptr inbounds %struct.datalink_proto, %struct.datalink_proto* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call %struct.ipx_interface* @ipxitf_alloc(%struct.net_device* %30, i32 0, i32 %31, %struct.datalink_proto* %32, i32 0, i64 %39)
  store %struct.ipx_interface* %40, %struct.ipx_interface** %5, align 8
  %41 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %42 = icmp ne %struct.ipx_interface* %41, null
  br i1 %42, label %43, label %76

43:                                               ; preds = %29
  %44 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %45 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @IPX_NODE_LEN, align 8
  %48 = call i32 @memset(i32* %46, i32 0, i64 %47)
  %49 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %50 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @IPX_NODE_LEN, align 8
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = bitcast i32* %57 to i8*
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @memcpy(i8* %58, i32 %61, i64 %64)
  %66 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %67 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %70 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %69, i32 0, i32 0
  %71 = call i32 @atomic_set(i32* %70, i32 1)
  %72 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  %73 = call i32 @ipxitf_insert(%struct.ipx_interface* %72)
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @dev_hold(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %43, %29
  br label %77

77:                                               ; preds = %76, %28, %16, %9
  %78 = load %struct.ipx_interface*, %struct.ipx_interface** %5, align 8
  ret %struct.ipx_interface* %78
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.ipx_interface* @ipxitf_alloc(%struct.net_device*, i32, i32, %struct.datalink_proto*, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ipxitf_insert(%struct.ipx_interface*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
