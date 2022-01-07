; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaIbssPSSend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaIbssPSSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@__const.zfStaIbssPSSend.bcastAddr = private unnamed_addr constant [3 x i32] [i32 65535, i32 65535, i32 65535], align 4
@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_MAX_PS_STA = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_ATIM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaIbssPSSend(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [3 x i32], align 4
  store i32* %0, i32** %2, align 8
  %5 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([3 x i32]* @__const.zfStaIbssPSSend.bcastAddr to i8*), i64 12, i1 false)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @zfStaIsConnected(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %116

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZM_MODE_IBSS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %116

19:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %80, %19
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ZM_MAX_PS_STA, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %20
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %24
  %36 = load i64, i64* %3, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @ZM_WLAN_FRAME_TYPE_ATIM, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %42 = call i32 @zfSendMmFrame(i32* %39, i32 %40, i32* %41, i32 0, i32 0, i32 0)
  br label %69

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %43
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @ZM_WLAN_FRAME_TYPE_ATIM, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @zfSendMmFrame(i32* %55, i32 %56, i32* %66, i32 0, i32 0, i32 0)
  br label %68

68:                                               ; preds = %54, %43
  br label %69

69:                                               ; preds = %68, %38
  %70 = load i64, i64* @FALSE, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 %70, i64* %78, align 8
  br label %79

79:                                               ; preds = %69, %24
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %20

83:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i64, i64* %3, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = load i32*, i32** %2, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %101 = call i32 @zfTxSendEth(i32* %92, i32 %99, i32 0, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %91
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %3, align 8
  br label %84

105:                                              ; preds = %84
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i64 %109, i64* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %105, %18, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zfStaIsConnected(i32*) #2

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @zfTxSendEth(i32*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
