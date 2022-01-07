; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_indicate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_indicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wbsoft_priv* }
%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { %struct.wb35_rx }
%struct.wb35_rx = type { i64, i32*, i32*, i32, i32, i32* }
%struct.wb35_descriptor = type { i32*, i32, i32, i64, i32**, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64, i8* }

@MAX_USB_RX_BUFFER_NUMBER = common dso_local global i64 0, align 8
@RX_END_TAG = common dso_local global i32 0, align 4
@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@VM_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @Wb35Rx_indicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Wb35Rx_indicate(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.wbsoft_priv*, align 8
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca %struct.wb35_descriptor, align 8
  %6 = alloca %struct.wb35_rx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %14, align 8
  store %struct.wbsoft_priv* %15, %struct.wbsoft_priv** %3, align 8
  %16 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %17 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %16, i32 0, i32 0
  store %struct.hw_data* %17, %struct.hw_data** %4, align 8
  %18 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %19 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %18, i32 0, i32 0
  store %struct.wb35_rx* %19, %struct.wb35_rx** %6, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %144, %1
  %21 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %22 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %25 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %145

32:                                               ; preds = %20
  %33 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %34 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* @MAX_USB_RX_BUFFER_NUMBER, align 8
  %38 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %39 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = urem i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %43 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %7, align 8
  %45 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %46 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %99, %32
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %52, 4
  br i1 %53, label %54, label %138

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = bitcast i32* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @cpu_to_le32(i64 %57)
  %59 = and i32 %58, 268435455
  %60 = load i32, i32* @RX_END_TAG, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %138

63:                                               ; preds = %54
  %64 = load i32*, i32** %7, align 8
  %65 = bitcast i32* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @le32_to_cpu(i64 %66)
  %68 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = bitcast i32* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @le32_to_cpu(i64 %77)
  %79 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 3
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %63
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %63
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32, i32* @VM_STOP, align 4
  %93 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %94 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %96 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %138

99:                                               ; preds = %87
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 8
  store i32 %101, i32* %10, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  store i32* %103, i32** %7, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 4
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 0
  store i32* %104, i32** %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %108, i32* %111, align 4
  %112 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 1
  store i32 1, i32* %112, align 8
  %113 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %5, i32 0, i32 2
  store i32 %117, i32* %118, align 4
  %119 = call i32 @Wb35Rx_adjust(%struct.wb35_descriptor* %5)
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @packet_came(%struct.ieee80211_hw* %120, i32* %121, i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 3
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = and i32 %126, -4
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %51

138:                                              ; preds = %91, %62, %51
  %139 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %140 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 1, i32* %143, align 4
  br label %144

144:                                              ; preds = %138
  br i1 true, label %20, label %145

145:                                              ; preds = %144, %31
  %146 = load i32, i32* %11, align 4
  ret i32 %146
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @Wb35Rx_adjust(%struct.wb35_descriptor*) #1

declare dso_local i32 @packet_came(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
