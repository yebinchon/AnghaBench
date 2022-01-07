; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_rpipe_get_by_ep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_rpipe_get_by_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_5__, %struct.wa_rpipe* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.wa_rpipe = type { %struct.TYPE_6__, %struct.usb_host_endpoint* }
%struct.TYPE_6__ = type { i32 }
%struct.urb = type { i32 }

@CONFIG_BUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ep 0x%02x: reusing rpipe %u\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ep 0x%02x: using rpipe %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpipe_get_by_ep(%struct.wahc* %0, %struct.usb_host_endpoint* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca %struct.wahc*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.wa_rpipe*, align 8
  %12 = alloca i32, align 4
  store %struct.wahc* %0, %struct.wahc** %5, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %6, align 8
  store %struct.urb* %2, %struct.urb** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.wahc*, %struct.wahc** %5, align 8
  %14 = getelementptr inbounds %struct.wahc, %struct.wahc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.wahc*, %struct.wahc** %5, align 8
  %18 = getelementptr inbounds %struct.wahc, %struct.wahc* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %21 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %20, i32 0, i32 1
  %22 = load %struct.wa_rpipe*, %struct.wa_rpipe** %21, align 8
  store %struct.wa_rpipe* %22, %struct.wa_rpipe** %11, align 8
  %23 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %24 = icmp ne %struct.wa_rpipe* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %4
  %26 = load i32, i32* @CONFIG_BUG, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %30 = load %struct.wahc*, %struct.wahc** %5, align 8
  %31 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %32 = load %struct.urb*, %struct.urb** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @rpipe_check_aim(%struct.wa_rpipe* %29, %struct.wahc* %30, %struct.usb_host_endpoint* %31, %struct.urb* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %102

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %41 = call i32 @__rpipe_get(%struct.wa_rpipe* %40)
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %48 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %51)
  br label %101

53:                                               ; preds = %4
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %57 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 3
  store i32 %60, i32* %12, align 4
  %61 = load %struct.wahc*, %struct.wahc** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @rpipe_get_idle(%struct.wa_rpipe** %11, %struct.wahc* %61, i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %102

69:                                               ; preds = %53
  %70 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %71 = load %struct.wahc*, %struct.wahc** %5, align 8
  %72 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %73 = load %struct.urb*, %struct.urb** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @rpipe_aim(%struct.wa_rpipe* %70, %struct.wahc* %71, %struct.usb_host_endpoint* %72, %struct.urb* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %80 = call i32 @rpipe_put(%struct.wa_rpipe* %79)
  br label %102

81:                                               ; preds = %69
  %82 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %83 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %84 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %83, i32 0, i32 1
  store %struct.wa_rpipe* %82, %struct.wa_rpipe** %84, align 8
  %85 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %86 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %87 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %86, i32 0, i32 1
  store %struct.usb_host_endpoint* %85, %struct.usb_host_endpoint** %87, align 8
  %88 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %89 = call i32 @__rpipe_get(%struct.wa_rpipe* %88)
  %90 = load %struct.device*, %struct.device** %10, align 8
  %91 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %92 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  %96 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = call i32 @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %81, %39
  br label %102

102:                                              ; preds = %101, %78, %68, %37
  %103 = load %struct.wahc*, %struct.wahc** %5, align 8
  %104 = getelementptr inbounds %struct.wahc, %struct.wahc* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpipe_check_aim(%struct.wa_rpipe*, %struct.wahc*, %struct.usb_host_endpoint*, %struct.urb*, i32) #1

declare dso_local i32 @__rpipe_get(%struct.wa_rpipe*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rpipe_get_idle(%struct.wa_rpipe**, %struct.wahc*, i32, i32) #1

declare dso_local i32 @rpipe_aim(%struct.wa_rpipe*, %struct.wahc*, %struct.usb_host_endpoint*, %struct.urb*, i32) #1

declare dso_local i32 @rpipe_put(%struct.wa_rpipe*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
