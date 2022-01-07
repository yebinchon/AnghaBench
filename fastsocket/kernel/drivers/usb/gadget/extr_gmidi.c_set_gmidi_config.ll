; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_set_gmidi_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gmidi.c_set_gmidi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmidi_device = type { %struct.usb_ep*, %struct.usb_ep* }
%struct.usb_ep = type { i32, %struct.gmidi_device* }
%struct.usb_request = type { i32 }

@bulk_in_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can't start %s: %d\0A\00", align 1
@bulk_out_desc = common dso_local global i32 0, align 4
@qlen = common dso_local global i32 0, align 4
@buflen = common dso_local global i32 0, align 4
@gmidi_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s queue req: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmidi_device*, i32)* @set_gmidi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_gmidi_config(%struct.gmidi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.gmidi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca %struct.usb_ep*, align 8
  %8 = alloca i32, align 4
  store %struct.gmidi_device* %0, %struct.gmidi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %10 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %9, i32 0, i32 1
  %11 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %12 = call i32 @usb_ep_enable(%struct.usb_ep* %11, i32* @bulk_in_desc)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %17 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %18 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %17, i32 0, i32 1
  %19 = load %struct.usb_ep*, %struct.usb_ep** %18, align 8
  %20 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ERROR(%struct.gmidi_device* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %95

24:                                               ; preds = %2
  %25 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %26 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %27 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %26, i32 0, i32 1
  %28 = load %struct.usb_ep*, %struct.usb_ep** %27, align 8
  %29 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %28, i32 0, i32 1
  store %struct.gmidi_device* %25, %struct.gmidi_device** %29, align 8
  %30 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %31 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %30, i32 0, i32 0
  %32 = load %struct.usb_ep*, %struct.usb_ep** %31, align 8
  %33 = call i32 @usb_ep_enable(%struct.usb_ep* %32, i32* @bulk_out_desc)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %38 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %39 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %38, i32 0, i32 0
  %40 = load %struct.usb_ep*, %struct.usb_ep** %39, align 8
  %41 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ERROR(%struct.gmidi_device* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %95

45:                                               ; preds = %24
  %46 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %47 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %48 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %47, i32 0, i32 0
  %49 = load %struct.usb_ep*, %struct.usb_ep** %48, align 8
  %50 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %49, i32 0, i32 1
  store %struct.gmidi_device* %46, %struct.gmidi_device** %50, align 8
  %51 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %52 = getelementptr inbounds %struct.gmidi_device, %struct.gmidi_device* %51, i32 0, i32 0
  %53 = load %struct.usb_ep*, %struct.usb_ep** %52, align 8
  store %struct.usb_ep* %53, %struct.usb_ep** %7, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %91, %45
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @qlen, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ]
  br i1 %62, label %63, label %94

63:                                               ; preds = %61
  %64 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %65 = load i32, i32* @buflen, align 4
  %66 = call %struct.usb_request* @alloc_ep_req(%struct.usb_ep* %64, i32 %65)
  store %struct.usb_request* %66, %struct.usb_request** %6, align 8
  %67 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %68 = icmp ne %struct.usb_request* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load i32, i32* @gmidi_complete, align 4
  %71 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %72 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %74 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call i32 @usb_ep_queue(%struct.usb_ep* %73, %struct.usb_request* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load %struct.gmidi_device*, %struct.gmidi_device** %3, align 8
  %81 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %82 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @DBG(%struct.gmidi_device* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %69
  br label %90

87:                                               ; preds = %63
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %54

94:                                               ; preds = %61
  br label %95

95:                                               ; preds = %94, %36, %15
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @usb_ep_enable(%struct.usb_ep*, i32*) #1

declare dso_local i32 @ERROR(%struct.gmidi_device*, i8*, i32, i32) #1

declare dso_local %struct.usb_request* @alloc_ep_req(%struct.usb_ep*, i32) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @DBG(%struct.gmidi_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
