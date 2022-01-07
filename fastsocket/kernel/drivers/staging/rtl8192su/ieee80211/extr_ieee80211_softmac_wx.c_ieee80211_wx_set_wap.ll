; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_wap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i16, i32, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.sockaddr = type { i64, i32 }

@IW_MODE_MASTER = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_wap(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca %struct.sockaddr*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  store i16 %17, i16* %12, align 2
  %18 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %19 = bitcast %union.iwreq_data* %18 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %13, align 8
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 4
  %24 = call i32 @down(i32* %23)
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IW_MODE_MASTER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %80

31:                                               ; preds = %4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ARPHRD_ETHER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %80

40:                                               ; preds = %31
  %41 = load i16, i16* %12, align 2
  %42 = icmp ne i16 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %45 = call i32 @ieee80211_stop_protocol(%struct.ieee80211_device* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 5
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ETH_ALEN, align 4
  %59 = call i32 @memcpy(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i64 @memcmp(i32 %62, i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 5
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i16, i16* %12, align 2
  %75 = icmp ne i16 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %46
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %78 = call i32 @ieee80211_start_protocol(%struct.ieee80211_device* %77)
  br label %79

79:                                               ; preds = %76, %46
  br label %80

80:                                               ; preds = %79, %37, %30
  %81 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %81, i32 0, i32 4
  %83 = call i32 @up(i32* %82)
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @down(i32*) #2

declare dso_local i32 @ieee80211_stop_protocol(%struct.ieee80211_device*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i64 @memcmp(i32, i32*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @ieee80211_start_protocol(%struct.ieee80211_device*) #2

declare dso_local i32 @up(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
