; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApUpdatePsBit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApUpdatePsBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32** }

@ZM_STATE_ASOC = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_DEAUTH = common dso_local global i32 0, align 4
@ZM_ERR_STA_NOT_ASSOCIATED = common dso_local global i32 0, align 4
@ZM_MAX_WDS_SUPPORT = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfApUpdatePsBit(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [1 x i32], align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @zmw_get_wlan_dev(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @zmw_rx_buf_readh(i32* %18, i32* %19, i32 10)
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @zmw_rx_buf_readh(i32* %22, i32* %23, i32 12)
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @zmw_rx_buf_readh(i32* %26, i32* %27, i32 14)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @zmw_rx_buf_readb(i32* %30, i32* %31, i32 1)
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %70

35:                                               ; preds = %4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @zmw_rx_buf_readh(i32* %36, i32* %37, i32 4)
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @zmw_rx_buf_readb(i32* %40, i32* %41, i32 1)
  %43 = and i32 %42, 16
  %44 = ashr i32 %43, 4
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @zfApGetSTAInfoAndUpdatePs(i32* %45, i32* %46, i32* %10, i32* %47, i32 %48, i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 65535
  br i1 %52, label %57, label %53

53:                                               ; preds = %35
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ZM_STATE_ASOC, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53, %35
  %58 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @ZM_WLAN_FRAME_TYPE_DEAUTH, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %66 = call i32 @zfSendMmFrame(i32* %63, i32 %64, i32* %65, i32 7, i32 0, i32 0)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @ZM_ERR_STA_NOT_ASSOCIATED, align 4
  store i32 %68, i32* %5, align 4
  br label %142

69:                                               ; preds = %53
  br label %140

70:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %136, %70
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @ZM_MAX_WDS_SUPPORT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %139

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %135

85:                                               ; preds = %75
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %87, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %85
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %102, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %100
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %117, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %115
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 32, %131
  %133 = load i32*, i32** %8, align 8
  store i32 %132, i32* %133, align 4
  br label %139

134:                                              ; preds = %115, %100, %85
  br label %135

135:                                              ; preds = %134, %75
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %71

139:                                              ; preds = %130, %71
  br label %140

140:                                              ; preds = %139, %69
  %141 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %67
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfApGetSTAInfoAndUpdatePs(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
