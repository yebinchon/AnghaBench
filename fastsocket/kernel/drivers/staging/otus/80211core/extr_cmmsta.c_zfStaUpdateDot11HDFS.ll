; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaUpdateDot11HDFS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaUpdateDot11HDFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@ZM_WLAN_EID_CHANNEL_SWITCH_ANNOUNCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EID(Channel Switch Announcement) found\00", align 1
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"CWY - jump to frequency = \00", align 1
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaUpdateDot11HDFS(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @ZM_WLAN_EID_CHANNEL_SWITCH_ANNOUNCE, align 4
  %11 = call i32 @zfFindElement(i32* %8, i32* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %90

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @zmw_rx_buf_readb(i32* %15, i32* %16, i32 %18)
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %89

21:                                               ; preds = %14
  %22 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 2
  %27 = call i32 @zmw_rx_buf_readb(i32* %23, i32* %24, i32 %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i64, i64* @TRUE, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @zfHpStartRecv(i32* %41)
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 4
  %49 = call i32 @zmw_rx_buf_readb(i32* %45, i32* %46, i32 %48)
  %50 = icmp sle i32 %49, 2
  br i1 %50, label %51, label %88

51:                                               ; preds = %44
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @zfHpDeleteAllowChannel(i32* %52, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 3
  %63 = call i32 @zmw_rx_buf_readb(i32* %59, i32* %60, i32 %62)
  %64 = call i32 @zfChNumToFreq(i32* %58, i32 %63, i32 0)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @zfCoreSetFrequency(i32* %71, i32 %74)
  %76 = load i64, i64* @FALSE, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i64 @zfStaIsConnected(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %51
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 64, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %51
  br label %88

88:                                               ; preds = %87, %44
  br label %89

89:                                               ; preds = %88, %14
  br label %90

90:                                               ; preds = %13, %89
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfHpStartRecv(i32*) #1

declare dso_local i32 @zfHpDeleteAllowChannel(i32*, i32) #1

declare dso_local i32 @zfChNumToFreq(i32*, i32, i32) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zfCoreSetFrequency(i32*, i32) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
