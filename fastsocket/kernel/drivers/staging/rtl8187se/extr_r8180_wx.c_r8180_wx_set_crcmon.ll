; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_crcmon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_wx.c_r8180_wx_set_crcmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.r8180_priv = type { i16, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"bad CRC in monitor mode are %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"accepted\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rejected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8180_wx_set_crcmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8180_wx_set_crcmon(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8180_priv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8180_priv* %15, %struct.r8180_priv** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %24 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 8
  store i16 %25, i16* %13, align 2
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

33:                                               ; preds = %4
  %34 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %35 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %34, i32 0, i32 1
  %36 = call i32 @down(i32* %35)
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %41 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %40, i32 0, i32 0
  store i16 1, i16* %41, align 8
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %44 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %43, i32 0, i32 0
  store i16 0, i16* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %47 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %46, i32 0, i32 0
  %48 = load i16, i16* %47, align 8
  %49 = sext i16 %48 to i32
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @DMESG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i16, i16* %13, align 2
  %55 = sext i16 %54 to i32
  %56 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %57 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 8
  %59 = sext i16 %58 to i32
  %60 = icmp ne i32 %55, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %45
  %62 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %63 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i32 @rtl8180_down(%struct.net_device* %67)
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = call i32 @rtl8180_up(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %66, %61, %45
  %72 = load %struct.r8180_priv*, %struct.r8180_priv** %10, align 8
  %73 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %72, i32 0, i32 1
  %74 = call i32 @up(i32* %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %32
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @DMESG(i8*, i8*) #1

declare dso_local i32 @rtl8180_down(%struct.net_device*) #1

declare dso_local i32 @rtl8180_up(%struct.net_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
