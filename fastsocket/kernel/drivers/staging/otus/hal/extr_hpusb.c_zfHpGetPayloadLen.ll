; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfHpGetPayloadLen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfHpGetPayloadLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpGetPayloadLen(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i64 0, i64* %22, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @zmw_get_wlan_dev(i32* %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @zmw_rx_buf_readb(i32* %25, i32* %26, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @zmw_rx_buf_readb(i32* %30, i32* %31, i32 %33)
  %35 = and i32 %34, 3
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %17, align 4
  switch i32 %38, label %143 [
    i32 0, label %39
    i32 1, label %64
    i32 2, label %97
  ]

39:                                               ; preds = %8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @zmw_rx_buf_readb(i32* %40, i32* %41, i32 2)
  store i32 %42, i32* %19, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @zmw_rx_buf_readb(i32* %43, i32* %44, i32 3)
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %20, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = sub nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %22, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %39
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @zmw_rx_buf_readb(i32* %57, i32* %58, i32 0)
  %60 = load i32*, i32** %14, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %15, align 8
  store i32 0, i32* %61, align 4
  %62 = load i32*, i32** %16, align 8
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %39
  br label %144

64:                                               ; preds = %8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @zmw_rx_buf_readb(i32* %65, i32* %66, i32 0)
  %68 = ashr i32 %67, 5
  store i32 %68, i32* %19, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @zmw_rx_buf_readb(i32* %69, i32* %70, i32 1)
  store i32 %71, i32* %20, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @zmw_rx_buf_readb(i32* %72, i32* %73, i32 2)
  %75 = and i32 %74, 1
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %20, align 4
  %78 = shl i32 %77, 3
  %79 = or i32 %76, %78
  %80 = load i32, i32* %21, align 4
  %81 = shl i32 %80, 11
  %82 = or i32 %79, %81
  %83 = sub nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %22, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %64
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @zfcConvertRateOFDM(i32* %90, i32* %91)
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %15, align 8
  store i32 0, i32* %94, align 4
  %95 = load i32*, i32** %16, align 8
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %64
  br label %144

97:                                               ; preds = %8
  %98 = load i32, i32* %18, align 4
  %99 = and i32 %98, 48
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %18, align 4
  %103 = and i32 %102, 48
  %104 = icmp eq i32 %103, 16
  br i1 %104, label %105, label %112

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %106, 24
  %108 = sub nsw i32 %107, 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %22, align 8
  br label %119

112:                                              ; preds = %101
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, 4
  %115 = sub nsw i32 %114, 4
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %22, align 8
  br label %119

119:                                              ; preds = %112, %105
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load i32*, i32** %9, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @zmw_rx_buf_readb(i32* %125, i32* %126, i32 3)
  %128 = and i32 %127, 127
  %129 = load i32*, i32** %14, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @zmw_rx_buf_readb(i32* %130, i32* %131, i32 3)
  %133 = ashr i32 %132, 7
  %134 = and i32 %133, 1
  %135 = load i32*, i32** %15, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @zmw_rx_buf_readb(i32* %136, i32* %137, i32 6)
  %139 = ashr i32 %138, 7
  %140 = and i32 %139, 1
  %141 = load i32*, i32** %16, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %124, %119
  br label %144

143:                                              ; preds = %8
  br label %144

144:                                              ; preds = %143, %142, %96, %63
  %145 = load i64, i64* %22, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i64 0, i64* %22, align 8
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i64, i64* %22, align 8
  %150 = trunc i64 %149 to i32
  ret i32 %150
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfcConvertRateOFDM(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
