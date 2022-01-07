; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_write_ep0_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_write_ep0_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_ep = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pxa25x_request = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@UDDR0 = common dso_local global i32 0, align 4
@EP0_FIFO_SIZE = common dso_local global i32 0, align 4
@DBG_VERY_NOISY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ep0in %d bytes %d left %p\0A\00", align 1
@UDCCS0_IPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"short IN\00", align 1
@UDCCS0 = common dso_local global i32 0, align 4
@UDCCS0_OPR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa25x_ep*, %struct.pxa25x_request*)* @write_ep0_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ep0_fifo(%struct.pxa25x_ep* %0, %struct.pxa25x_request* %1) #0 {
  %3 = alloca %struct.pxa25x_ep*, align 8
  %4 = alloca %struct.pxa25x_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pxa25x_ep* %0, %struct.pxa25x_ep** %3, align 8
  store %struct.pxa25x_request* %1, %struct.pxa25x_request** %4, align 8
  %7 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %8 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %9 = call i32 @write_packet(i32* @UDDR0, %struct.pxa25x_request* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %12 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %17, %10
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @DBG_VERY_NOISY, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %26 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = zext i32 %28 to i64
  %30 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %31 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %29, %33
  %35 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %36 = call i32 @DBG(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %34, %struct.pxa25x_request* %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %87

40:                                               ; preds = %2
  %41 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %42 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %49 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i32, i32* @UDCCS0_IPR, align 4
  %52 = call i32 @ep0start(%struct.TYPE_9__* %50, i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @UDCCS0_IPR, align 4
  store i32 %54, i32* @UDCCS0, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %57 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %5, align 4
  %60 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %61 = load %struct.pxa25x_request*, %struct.pxa25x_request** %4, align 8
  %62 = call i32 @done(%struct.pxa25x_ep* %60, %struct.pxa25x_request* %61, i32 0)
  %63 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %64 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = call i32 @ep0_idle(%struct.TYPE_9__* %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %55
  store i32 100, i32* %5, align 4
  br label %71

71:                                               ; preds = %82, %70
  %72 = load i32, i32* @UDCCS0, align 4
  %73 = load i32, i32* @UDCCS0_OPR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @UDCCS0_OPR, align 4
  store i32 %77, i32* @UDCCS0, align 4
  br label %85

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %5, align 4
  %81 = call i32 @udelay(i32 1)
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %71, label %85

85:                                               ; preds = %82, %76
  br label %86

86:                                               ; preds = %85, %55
  br label %100

87:                                               ; preds = %2
  %88 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %89 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %3, align 8
  %96 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = call i32 @ep0start(%struct.TYPE_9__* %97, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %87
  br label %100

100:                                              ; preds = %99, %86
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @write_packet(i32*, %struct.pxa25x_request*, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i64, %struct.pxa25x_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ep0start(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @done(%struct.pxa25x_ep*, %struct.pxa25x_request*, i32) #1

declare dso_local i32 @ep0_idle(%struct.TYPE_9__*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
