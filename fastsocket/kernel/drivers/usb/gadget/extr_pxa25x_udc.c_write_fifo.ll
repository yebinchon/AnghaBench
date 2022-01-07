; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_ep = type { i32*, i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pxa25x_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }

@DBG_VERY_NOISY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"wrote %s %d bytes%s%s %d left %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/L\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@UDCCS_BI_TPC = common dso_local global i32 0, align 4
@UDCCS_BI_TSP = common dso_local global i32 0, align 4
@UDCCS_BI_TFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa25x_ep*, %struct.pxa25x_request*)* @write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fifo(%struct.pxa25x_ep* %0, %struct.pxa25x_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa25x_ep*, align 8
  %5 = alloca %struct.pxa25x_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pxa25x_ep* %0, %struct.pxa25x_ep** %4, align 8
  store %struct.pxa25x_request* %1, %struct.pxa25x_request** %5, align 8
  %10 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %11 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %10, i32 0, i32 6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %114, %2
  %17 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %18 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @write_packet(i32 %19, %struct.pxa25x_request* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @unlikely(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %59

30:                                               ; preds = %16
  %31 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %32 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %36 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %30
  %44 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %45 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %30
  store i32 0, i32* %8, align 4
  br label %51

50:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %54 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @unlikely(i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %51, %29
  %60 = load i32, i32* @DBG_VERY_NOISY, align 4
  %61 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %62 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %74 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %75 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %79 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %77, %81
  %83 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %84 = call i32 @DBG(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i8* %69, i8* %73, i64 %82, %struct.pxa25x_request* %83)
  %85 = load i32, i32* @UDCCS_BI_TPC, align 4
  %86 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %87 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %59
  %92 = load i32, i32* @UDCCS_BI_TSP, align 4
  %93 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %94 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %59
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %101 = load %struct.pxa25x_request*, %struct.pxa25x_request** %5, align 8
  %102 = call i32 @done(%struct.pxa25x_ep* %100, %struct.pxa25x_request* %101, i32 0)
  %103 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %104 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %103, i32 0, i32 3
  %105 = call i64 @list_empty(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %109 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pio_irq_disable(i32 %110)
  br label %112

112:                                              ; preds = %107, %99
  store i32 1, i32* %3, align 4
  br label %123

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %116 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @UDCCS_BI_TFS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %16, label %122

122:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %112
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @write_packet(i32, %struct.pxa25x_request*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32, i8*, i8*, i64, %struct.pxa25x_request*) #1

declare dso_local i32 @done(%struct.pxa25x_ep*, %struct.pxa25x_request*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pio_irq_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
