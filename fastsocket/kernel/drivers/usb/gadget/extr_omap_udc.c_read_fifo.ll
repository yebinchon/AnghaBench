; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_read_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ep = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32* }

@UDC_STAT_FLG = common dso_local global i32 0, align 4
@FIFO_EMPTY = common dso_local global i32 0, align 4
@UDC_EP_HALTED = common dso_local global i32 0, align 4
@UDC_FIFO_FULL = common dso_local global i32 0, align 4
@UDC_RXFSTAT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@UDC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_ep*, %struct.omap_req*)* @read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_fifo(%struct.omap_ep* %0, %struct.omap_req* %1) #0 {
  %3 = alloca %struct.omap_ep*, align 8
  %4 = alloca %struct.omap_req*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_ep* %0, %struct.omap_ep** %3, align 8
  store %struct.omap_req* %1, %struct.omap_req** %4, align 8
  %10 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %11 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %15 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @prefetchw(i32* %19)
  br label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @UDC_STAT_FLG, align 4
  %23 = call i8* @omap_readw(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @FIFO_EMPTY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %31 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %123

35:                                               ; preds = %29
  %36 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %37 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %21
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @UDC_EP_HALTED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %123

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @UDC_FIFO_FULL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %51 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  br label %63

54:                                               ; preds = %44
  %55 = load i32, i32* @UDC_RXFSTAT, align 4
  %56 = call i8* @omap_readw(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %59 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %62 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %49
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @read_packet(i32* %64, %struct.omap_req* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %70 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %68, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load i32, i32* @EOVERFLOW, align 4
  %80 = sub nsw i32 0, %79
  %81 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %82 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %91, %78
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %7, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @UDC_DATA, align 4
  %93 = call i8* @omap_readw(i32 %92)
  br label %87

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %74
  br label %109

96:                                               ; preds = %63
  %97 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %98 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %102 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 1, i32* %8, align 4
  br label %108

107:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %106
  br label %109

109:                                              ; preds = %108, %95
  %110 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %111 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %123

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %120 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %121 = call i32 @done(%struct.omap_ep* %119, %struct.omap_req* %120, i32 0)
  br label %122

122:                                              ; preds = %118, %115
  br label %123

123:                                              ; preds = %122, %114, %43, %34
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i32 @prefetchw(i32*) #1

declare dso_local i8* @omap_readw(i32) #1

declare dso_local i32 @read_packet(i32*, %struct.omap_req*, i32) #1

declare dso_local i32 @done(%struct.omap_ep*, %struct.omap_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
