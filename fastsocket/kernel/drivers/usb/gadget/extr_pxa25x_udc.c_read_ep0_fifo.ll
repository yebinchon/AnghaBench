; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_read_ep0_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_read_ep0_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_ep = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pxa25x_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64* }

@UDCCS0 = common dso_local global i32 0, align 4
@UDCCS0_RNE = common dso_local global i32 0, align 4
@UDDR0 = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s overflow\0A\00", align 1
@UDCCS0_OPR = common dso_local global i32 0, align 4
@UDCCS0_IPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa25x_ep*, %struct.pxa25x_request*)* @read_ep0_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ep0_fifo(%struct.pxa25x_ep* %0, %struct.pxa25x_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa25x_ep*, align 8
  %5 = alloca %struct.pxa25x_request*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pxa25x_ep* %0, %struct.pxa25x_ep** %4, align 8
  store %struct.pxa25x_request* %1, %struct.pxa25x_request** %5, align 8
  %9 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %10 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i64*, i64** %11, align 8
  %13 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %14 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %12, i64 %17
  store i64* %18, i64** %6, align 8
  %19 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %20 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %24 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub i32 %22, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %71, %2
  %29 = load i32, i32* @UDCCS0, align 4
  %30 = load i32, i32* @UDCCS0_RNE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  %34 = load i64, i64* @UDDR0, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %42 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EOVERFLOW, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %50 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DMSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32, i32* @EOVERFLOW, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %58 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  br label %71

60:                                               ; preds = %33
  %61 = load i64, i64* %7, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  %64 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %65 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %60, %54
  br label %28

72:                                               ; preds = %28
  %73 = load i32, i32* @UDCCS0_OPR, align 4
  %74 = load i32, i32* @UDCCS0_IPR, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* @UDCCS0, align 4
  %76 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %77 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %81 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp uge i32 %79, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %87

86:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMSG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
