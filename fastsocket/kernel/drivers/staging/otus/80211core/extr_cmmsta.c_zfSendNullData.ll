; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfSendNullData.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfSendNullData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i64 }

@__const.zfSendNullData.bcastAddr = private unnamed_addr constant [3 x i32] [i32 65535, i32 65535, i32 65535], align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Alloc mm buf Fail!\00", align 1
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_WLAN_FRAME_TYPE_QOS_NULL = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_NULL = common dso_local global i32 0, align 4
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfSendNullData(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [21 x i32], align 16
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.zfSendNullData.bcastAddr to i8*), i64 12, i1 false)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @zfwBufAllocate(i32* %14, i32 1024)
  store i32* %15, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ZM_LV_0, align 4
  %19 = call i32 @zm_msg0_mm(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %93

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @zfwBufSetSize(i32* %21, i32* %22, i32 0)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZM_MODE_IBSS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32* %30, i32** %10, align 8
  br label %36

31:                                               ; preds = %20
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %10, align 8
  br label %36

36:                                               ; preds = %31, %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @ZM_WLAN_FRAME_TYPE_QOS_NULL, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 0
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @zfTxGenMmHeader(i32* %43, i32 %44, i32* %45, i32* %46, i32 0, i32* %47, i32 0, i32 0)
  store i32 %48, i32* %7, align 4
  br label %56

49:                                               ; preds = %36
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @ZM_WLAN_FRAME_TYPE_NULL, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 0
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @zfTxGenMmHeader(i32* %50, i32 %51, i32* %52, i32* %53, i32 0, i32* %54, i32 0, i32 0)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 4
  %64 = load i32, i32* %63, align 16
  %65 = or i32 %64, 256
  store i32 %65, i32* %63, align 16
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 4
  %71 = load i32, i32* %70, align 16
  %72 = or i32 %71, 4096
  store i32 %72, i32* %70, align 16
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 0
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @ZM_INTERNAL_ALLOC_BUF, align 4
  %84 = call i32 @zfHpSend(i32* %79, i32* %80, i32 %81, i32* null, i32 0, i32* null, i32 0, i32* %82, i32 0, i32 %83, i32 0, i32 255)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @ZM_SUCCESS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %89

88:                                               ; preds = %73
  br label %93

89:                                               ; preds = %87
  %90 = load i32*, i32** %3, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @zfwBufFree(i32* %90, i32* %91, i32 0)
  br label %93

93:                                               ; preds = %89, %88, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32* @zfwBufAllocate(i32*, i32) #2

declare dso_local i32 @zm_msg0_mm(i32, i8*) #2

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i32) #2

declare dso_local i32 @zfTxGenMmHeader(i32*, i32, i32*, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @zfHpSend(i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
