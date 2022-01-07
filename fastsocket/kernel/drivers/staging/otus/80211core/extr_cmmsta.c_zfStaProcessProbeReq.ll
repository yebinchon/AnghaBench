; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessProbeReq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessProbeReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64*, i32*, i64** }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_LV_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Ignore probe req\00", align 1
@ZM_WLAN_EID_SSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"probe req SSID not found\00", align 1
@ZM_MAX_AP_SUPPORT = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_PROBERSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaProcessProbeReq(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ZM_MODE_AP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZM_MODE_IBSS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @ZM_LV_3, align 4
  %27 = call i32 @zm_msg0_mm(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %135

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @ZM_WLAN_EID_SSID, align 4
  %32 = call i32 @zfFindElement(i32* %29, i32* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp eq i32 %32, 65535
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ZM_LV_3, align 4
  %36 = call i32 @zm_msg0_mm(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %135

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i64 @zmw_rx_buf_readb(i32* %38, i32* %39, i32 %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %132, %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ZM_MAX_AP_SUPPORT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %135

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %131

58:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 1, i32* %11, align 4
  br label %121

72:                                               ; preds = %61, %58
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %111, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i64 @zmw_rx_buf_readb(i32* %89, i32* %90, i32 %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i64**, i64*** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64*, i64** %99, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %95, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %88
  br label %114

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %84

114:                                              ; preds = %109, %84
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 1, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %114
  br label %120

120:                                              ; preds = %119, %72
  br label %121

121:                                              ; preds = %120, %71
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* @ZM_WLAN_FRAME_TYPE_PROBERSP, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @zfSendMmFrame(i32* %125, i32 %126, i32* %127, i32 %128, i32 0, i32 0)
  br label %130

130:                                              ; preds = %124, %121
  br label %131

131:                                              ; preds = %130, %48
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %44

135:                                              ; preds = %25, %34, %44
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i64 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
