; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_Complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_Complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.wbsoft_priv* }
%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { i64, i64, %struct.wb35_rx }
%struct.wb35_rx = type { i64, i64, i32*, i32, i32*, i8*, i32, i32*, i32, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@VM_COMPLETED = common dso_local global i8* null, align 8
@VM_STOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @Wb35Rx_Complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Wb35Rx_Complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.wbsoft_priv*, align 8
  %5 = alloca %struct.hw_data*, align 8
  %6 = alloca %struct.wb35_rx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 2
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %13, align 8
  store %struct.ieee80211_hw* %14, %struct.ieee80211_hw** %3, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %16, align 8
  store %struct.wbsoft_priv* %17, %struct.wbsoft_priv** %4, align 8
  %18 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %4, align 8
  %19 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %18, i32 0, i32 0
  store %struct.hw_data* %19, %struct.hw_data** %5, align 8
  %20 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %21 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %20, i32 0, i32 2
  store %struct.wb35_rx* %21, %struct.wb35_rx** %6, align 8
  %22 = load i8*, i8** @VM_COMPLETED, align 8
  %23 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %24 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %29 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %31 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %34 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %7, align 8
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** @VM_COMPLETED, align 8
  %41 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %42 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %44 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %1
  %48 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %49 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %1
  br label %148

53:                                               ; preds = %47
  %54 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %55 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %148

59:                                               ; preds = %53
  %60 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %61 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 0, i32* %64, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = bitcast i32* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @le32_to_cpu(i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %71 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = load i8*, i8** @VM_STOP, align 8
  %76 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %77 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  br label %148

78:                                               ; preds = %59
  %79 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %80 = call i32 @HAL_USB_MODE_BURST(%struct.hw_data* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %119, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = and i64 %85, 3
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %89, 4
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 3
  %94 = and i64 %93, -4
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 12
  store i64 %96, i64* %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 1600
  br i1 %98, label %110, label %99

99:                                               ; preds = %91
  %100 = load i64, i64* %8, align 8
  %101 = icmp ugt i64 %100, 1600
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %107, %102, %99, %91
  %111 = load i8*, i8** @VM_STOP, align 8
  %112 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %113 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %115 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %110, %107
  br label %119

119:                                              ; preds = %118, %78
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %122 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %127 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %132 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %119
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %140 = call i32 @Wb35Rx_indicate(%struct.ieee80211_hw* %139)
  br label %141

141:                                              ; preds = %138, %119
  %142 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %143 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @kfree(i32* %144)
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %147 = call i32 @Wb35Rx(%struct.ieee80211_hw* %146)
  br label %160

148:                                              ; preds = %74, %58, %52
  %149 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %150 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %10, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 1, i32* %153, align 4
  %154 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %155 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %154, i32 0, i32 6
  %156 = call i32 @atomic_dec(i32* %155)
  %157 = load i8*, i8** @VM_STOP, align 8
  %158 = load %struct.wb35_rx*, %struct.wb35_rx** %6, align 8
  %159 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %158, i32 0, i32 5
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %148, %141
  ret void
}

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @HAL_USB_MODE_BURST(%struct.hw_data*) #1

declare dso_local i32 @Wb35Rx_indicate(%struct.ieee80211_hw*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @Wb35Rx(%struct.ieee80211_hw*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
