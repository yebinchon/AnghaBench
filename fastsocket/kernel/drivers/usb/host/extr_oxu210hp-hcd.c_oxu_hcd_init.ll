; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_hcd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_hcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.oxu_hcd = type { i32, i32, i32, %struct.TYPE_9__*, i64, i32*, %struct.TYPE_6__*, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@oxu_watchdog = common dso_local global i32 0, align 4
@DEFAULT_I_TDPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QH_HEAD = common dso_local global i32 0, align 4
@QTD_STS_HALT = common dso_local global i32 0, align 4
@EHCI_LIST_END = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i32 0, align 4
@log2_irq_thresh = common dso_local global i32 0, align 4
@park = common dso_local global i32 0, align 4
@CMD_PARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"park %d\0A\00", align 1
@EHCI_TUNE_FLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @oxu_hcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_hcd_init(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.oxu_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %8)
  store %struct.oxu_hcd* %9, %struct.oxu_hcd** %4, align 8
  %10 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %10, i32 0, i32 9
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %14 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %13, i32 0, i32 8
  %15 = call i32 @init_timer(%struct.TYPE_10__* %14)
  %16 = load i32, i32* @oxu_watchdog, align 4
  %17 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %21 = ptrtoint %struct.oxu_hcd* %20 to i64
  %22 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load i32, i32* @DEFAULT_I_TDPS, align 4
  %26 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %27 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @ehci_mem_init(%struct.oxu_hcd* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %154

35:                                               ; preds = %1
  %36 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %37 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %36, i32 0, i32 6
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @readl(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @HCC_ISOC_CACHE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %45, i32 0, i32 0
  store i32 8, i32* %46, align 8
  br label %53

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @HCC_ISOC_THRES(i32 %48)
  %50 = add nsw i32 2, %49
  %51 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %52 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %44
  %54 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %55 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %54, i32 0, i32 5
  store i32* null, i32** %55, align 8
  %56 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %57 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %59 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %61 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %60, i32 0, i32 3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %66 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %65, i32 0, i32 3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @QH_NEXT(i32 %69)
  %71 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %72 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %71, i32 0, i32 3
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 7
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @QH_HEAD, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %78 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %77, i32 0, i32 3
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* @QTD_STS_HALT, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %84 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %83, i32 0, i32 3
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  store i8* %82, i8** %86, align 8
  %87 = load i32, i32* @EHCI_LIST_END, align 4
  %88 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %89 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %88, i32 0, i32 3
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 8
  %92 = load i32, i32* @QH_STATE_LINKED, align 4
  %93 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %94 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %93, i32 0, i32 3
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  %97 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %98 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %97, i32 0, i32 3
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @QTD_NEXT(i32 %103)
  %105 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %106 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %105, i32 0, i32 3
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 8
  %109 = load i32, i32* @log2_irq_thresh, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %53
  %112 = load i32, i32* @log2_irq_thresh, align 4
  %113 = icmp sgt i32 %112, 6
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %53
  store i32 0, i32* @log2_irq_thresh, align 4
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i32, i32* @log2_irq_thresh, align 4
  %117 = add nsw i32 16, %116
  %118 = shl i32 1, %117
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @HCC_CANPARK(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %115
  %123 = load i32, i32* @park, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* @park, align 4
  %127 = call i32 @min(i32 %126, i32 3)
  store i32 %127, i32* @park, align 4
  %128 = load i32, i32* @CMD_PARK, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @park, align 4
  %132 = shl i32 %131, 8
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %125, %122
  %136 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %137 = load i32, i32* @park, align 4
  %138 = call i32 @oxu_dbg(%struct.oxu_hcd* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %115
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @HCC_PGM_FRAMELISTLEN(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32, i32* %5, align 4
  %145 = and i32 %144, -13
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* @EHCI_TUNE_FLS, align 4
  %147 = shl i32 %146, 2
  %148 = load i32, i32* %5, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %143, %139
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %153 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %150, %33
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @ehci_mem_init(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @HCC_ISOC_CACHE(i32) #1

declare dso_local i32 @HCC_ISOC_THRES(i32) #1

declare dso_local i32 @QH_NEXT(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @QTD_NEXT(i32) #1

declare dso_local i64 @HCC_CANPARK(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*, i32) #1

declare dso_local i64 @HCC_PGM_FRAMELISTLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
