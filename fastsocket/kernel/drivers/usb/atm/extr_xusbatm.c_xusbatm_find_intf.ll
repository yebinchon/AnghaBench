; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_xusbatm.c_xusbatm_find_intf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_xusbatm.c_xusbatm_find_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.usb_interface**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_interface* (%struct.usb_device*, i32, i64)* @xusbatm_find_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_interface* @xusbatm_find_intf(%struct.usb_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %65, %3
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %12
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.usb_interface**, %struct.usb_interface*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %26, i64 %28
  %30 = load %struct.usb_interface*, %struct.usb_interface** %29, align 8
  store %struct.usb_interface* %30, %struct.usb_interface** %9, align 8
  %31 = icmp ne %struct.usb_interface* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %21
  %33 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %33, i32 %34)
  store %struct.usb_host_interface* %35, %struct.usb_host_interface** %8, align 8
  %36 = icmp ne %struct.usb_host_interface* %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %60, %37
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %41 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %47 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  store %struct.usb_interface* %58, %struct.usb_interface** %4, align 8
  br label %69

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %38

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %32, %21
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %12

68:                                               ; preds = %12
  store %struct.usb_interface* null, %struct.usb_interface** %4, align 8
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  ret %struct.usb_interface* %70
}

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
