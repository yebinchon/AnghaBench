; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hub.c_ehci_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hub.c_ehci_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ehci_hcd = type { i32, i64*, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@ignore_oc = common dso_local global i32 0, align 4
@PORT_CSC = common dso_local global i32 0, align 4
@PORT_PEC = common dso_local global i32 0, align 4
@PORT_OCC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@STS_PCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @ehci_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ehci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %16 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %15)
  store %struct.ehci_hcd* %16, %struct.ehci_hcd** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HC_IS_RUNNING(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %166

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %27 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @HCS_N_PORTS(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 7
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %32, %23
  %38 = load i32, i32* @ignore_oc, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @PORT_CSC, align 4
  %42 = load i32, i32* @PORT_PEC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PORT_OCC, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %9, align 4
  br label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @PORT_CSC, align 4
  %48 = load i32, i32* @PORT_PEC, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %52 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %51, i32 0, i32 0
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %61 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %62 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @ehci_readl(%struct.ehci_hcd* %60, i32* %64)
  %66 = ashr i32 %65, 16
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %59, %50
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %151, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %154

72:                                               ; preds = %68
  %73 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %74 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 1, %79
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %151

84:                                               ; preds = %77, %72
  %85 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %86 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %87 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @ehci_readl(%struct.ehci_hcd* %85, i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %125, label %99

99:                                               ; preds = %84
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %102 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %101, i32 0, i32 2
  %103 = call i64 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %99
  %106 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %107 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %150

114:                                              ; preds = %105
  %115 = load i32, i32* @jiffies, align 4
  %116 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %117 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @time_after_eq(i32 %115, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %114, %99, %84
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %126, 7
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  %131 = shl i32 1, %130
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = or i32 %135, %131
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %133, align 1
  br label %148

138:                                              ; preds = %125
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 %139, 7
  %141 = shl i32 1, %140
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = or i32 %145, %141
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  br label %148

148:                                              ; preds = %138, %128
  %149 = load i32, i32* @STS_PCD, align 4
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %148, %114, %105
  br label %151

151:                                              ; preds = %150, %83
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %68

154:                                              ; preds = %68
  %155 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %156 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %155, i32 0, i32 0
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* %12, align 4
  br label %164

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %22
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
