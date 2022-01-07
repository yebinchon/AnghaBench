; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_ep_set_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_ep_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usba_ep = type { i64, i32, %struct.TYPE_2__, i64, i32, %struct.usba_udc* }
%struct.TYPE_2__ = type { i32 }
%struct.usba_udc = type { i32 }

@DBG_GADGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"endpoint %s: %s HALT\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@DBG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Attempted to halt uninitialized ep %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Attempted to halt isochronous ep %s\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@STA = common dso_local global i32 0, align 4
@BUSY_BANKS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SET_STA = common dso_local global i32 0, align 4
@USBA_FORCE_STALL = common dso_local global i32 0, align 4
@CLR_STA = common dso_local global i32 0, align 4
@USBA_TOGGLE_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, i32)* @usba_ep_set_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_ep_set_halt(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usba_ep*, align 8
  %7 = alloca %struct.usba_udc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %11 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %10)
  store %struct.usba_ep* %11, %struct.usba_ep** %6, align 8
  %12 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %13 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %12, i32 0, i32 5
  %14 = load %struct.usba_udc*, %struct.usba_udc** %13, align 8
  store %struct.usba_udc* %14, %struct.usba_udc** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @DBG_GADGET, align 4
  %16 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %17 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (i32, i8*, i32, ...) @DBG(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %23)
  %25 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %26 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @DBG_ERR, align 4
  %31 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %32 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @DBG(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %105

38:                                               ; preds = %2
  %39 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %40 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* @DBG_ERR, align 4
  %45 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %46 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i32, ...) @DBG(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOTTY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %105

52:                                               ; preds = %38
  %53 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %54 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %58 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %57, i32 0, i32 1
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %66 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %71 = load i32, i32* @STA, align 4
  %72 = call i32 @usba_ep_readl(%struct.usba_ep* %70, i32 %71)
  %73 = load i32, i32* @BUSY_BANKS, align 4
  %74 = call i32 @USBA_BF(i32 %73, i64 -1)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69, %52
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %99

80:                                               ; preds = %69, %64, %61
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %85 = load i32, i32* @SET_STA, align 4
  %86 = load i32, i32* @USBA_FORCE_STALL, align 4
  %87 = call i32 @usba_ep_writel(%struct.usba_ep* %84, i32 %85, i32 %86)
  br label %95

88:                                               ; preds = %80
  %89 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %90 = load i32, i32* @CLR_STA, align 4
  %91 = load i32, i32* @USBA_FORCE_STALL, align 4
  %92 = load i32, i32* @USBA_TOGGLE_CLR, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @usba_ep_writel(%struct.usba_ep* %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %88, %83
  %96 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %97 = load i32, i32* @STA, align 4
  %98 = call i32 @usba_ep_readl(%struct.usba_ep* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %77
  %100 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %101 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %100, i32 0, i32 0
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %43, %29
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local i32 @DBG(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @usba_ep_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @USBA_BF(i32, i64) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
