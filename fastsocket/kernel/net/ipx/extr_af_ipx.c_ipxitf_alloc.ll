; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i8, i32, i32, i32, i32, i32, %struct.datalink_proto*, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.datalink_proto = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPX_MIN_EPHEMERAL_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipx_interface* (%struct.net_device*, i32, i32, %struct.datalink_proto*, i8, i32)* @ipxitf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipx_interface* @ipxitf_alloc(%struct.net_device* %0, i32 %1, i32 %2, %struct.datalink_proto* %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.datalink_proto*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipx_interface*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.datalink_proto* %3, %struct.datalink_proto** %10, align 8
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.ipx_interface* @kmalloc(i32 48, i32 %14)
  store %struct.ipx_interface* %15, %struct.ipx_interface** %13, align 8
  %16 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %17 = icmp ne %struct.ipx_interface* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %6
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %21 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %20, i32 0, i32 9
  store %struct.net_device* %19, %struct.net_device** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %24 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %27 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.datalink_proto*, %struct.datalink_proto** %10, align 8
  %29 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %30 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %29, i32 0, i32 6
  store %struct.datalink_proto* %28, %struct.datalink_proto** %30, align 8
  %31 = load i8, i8* %11, align 1
  %32 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %33 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %32, i32 0, i32 0
  store i8 %31, i8* %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %36 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @IPX_MIN_EPHEMERAL_SOCKET, align 4
  %38 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %39 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %41 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %40, i32 0, i32 4
  %42 = call i32 @INIT_HLIST_HEAD(i32* %41)
  %43 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %44 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %43, i32 0, i32 3
  %45 = call i32 @atomic_set(i32* %44, i32 1)
  %46 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  %47 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %46, i32 0, i32 2
  %48 = call i32 @spin_lock_init(i32* %47)
  br label %49

49:                                               ; preds = %18, %6
  %50 = load %struct.ipx_interface*, %struct.ipx_interface** %13, align 8
  ret %struct.ipx_interface* %50
}

declare dso_local %struct.ipx_interface* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
