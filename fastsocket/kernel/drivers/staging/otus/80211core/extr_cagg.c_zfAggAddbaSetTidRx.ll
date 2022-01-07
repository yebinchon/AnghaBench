; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggAddbaSetTidRx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggAddbaSetTidRx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.agg_tid_rx** }
%struct.agg_tid_rx = type { i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.aggBaFrameParameter = type { i64, i32 }

@zcUpToAc = common dso_local global i32* null, align 8
@ZM_AGG_POOL_SIZE = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_MAX_STA_SUPPORT = common dso_local global i64 0, align 8
@ZM_AGG_ADDBA_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfAggAddbaSetTidRx(i32* %0, i32* %1, %struct.aggBaFrameParameter* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aggBaFrameParameter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.agg_tid_rx*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.aggBaFrameParameter* %2, %struct.aggBaFrameParameter** %7, align 8
  store i64 0, i64* %13, align 8
  store %struct.agg_tid_rx* null, %struct.agg_tid_rx** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @zmw_get_wlan_dev(i32* %16)
  %18 = call i32 (...) @zmw_declare_for_critical_section()
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %13, align 8
  %22 = add i64 %21, 10
  %23 = call i64 @zmw_rx_buf_readh(i32* %19, i32* %20, i64 %22)
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %13, align 8
  %28 = add i64 %27, 12
  %29 = call i64 @zmw_rx_buf_readh(i32* %25, i32* %26, i64 %28)
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  store i64 %29, i64* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %33, 14
  %35 = call i64 @zmw_rx_buf_readh(i32* %31, i32* %32, i64 %34)
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  store i64 %35, i64* %36, align 16
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %39 = call i64 @zfApFindSta(i32* %37, i64* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @zfTxGetIpTosAndFrag(i32* %40, i32* %41, i32* %14, i64* %11)
  %43 = load i32*, i32** @zcUpToAc, align 8
  %44 = load i32, i32* %14, align 4
  %45 = and i32 %44, 7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %9, align 8
  %51 = load %struct.aggBaFrameParameter*, %struct.aggBaFrameParameter** %7, align 8
  %52 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %88, %3
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @ZM_AGG_POOL_SIZE, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %61, i64 %62
  %64 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %63, align 8
  %65 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %58
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %72, i64 %73
  %75 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %74, align 8
  %76 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %83, i64 %84
  %86 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %85, align 8
  store %struct.agg_tid_rx* %86, %struct.agg_tid_rx** %15, align 8
  br label %91

87:                                               ; preds = %69, %58
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %54

91:                                               ; preds = %80, %54
  %92 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %93 = icmp ne %struct.agg_tid_rx* %92, null
  br i1 %93, label %126, label %94

94:                                               ; preds = %91
  store i64 0, i64* %8, align 8
  br label %95

95:                                               ; preds = %118, %94
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @ZM_AGG_POOL_SIZE, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %102, i64 %103
  %105 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %104, align 8
  %106 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ZM_MAX_STA_SUPPORT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %99
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %113, i64 %114
  %116 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %115, align 8
  store %struct.agg_tid_rx* %116, %struct.agg_tid_rx** %15, align 8
  br label %121

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %8, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %95

121:                                              ; preds = %110, %95
  %122 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %123 = icmp ne %struct.agg_tid_rx* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i64 0, i64* %4, align 8
  br label %153

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %91
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @zmw_enter_critical_section(i32* %127)
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %131 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %134 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* @ZM_AGG_ADDBA_RESPONSE, align 4
  %136 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %137 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 4
  %138 = load %struct.aggBaFrameParameter*, %struct.aggBaFrameParameter** %7, align 8
  %139 = getelementptr inbounds %struct.aggBaFrameParameter, %struct.aggBaFrameParameter* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %142 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  %143 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %144 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %143, i32 0, i32 4
  store i64 0, i64* %144, align 8
  %145 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %146 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %145, i32 0, i32 5
  store i64 0, i64* %146, align 8
  %147 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %148 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %15, align 8
  %150 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @zmw_leave_critical_section(i32* %151)
  store i64 0, i64* %4, align 8
  br label %153

153:                                              ; preds = %126, %124
  %154 = load i64, i64* %4, align 8
  ret i64 %154
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i64 @zmw_rx_buf_readh(i32*, i32*, i64) #1

declare dso_local i64 @zfApFindSta(i32*, i64*) #1

declare dso_local i32 @zfTxGetIpTosAndFrag(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
