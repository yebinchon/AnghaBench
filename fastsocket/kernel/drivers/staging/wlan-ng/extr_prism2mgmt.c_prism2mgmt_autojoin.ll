; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_autojoin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_autojoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@WLAN_MACMODE_NONE = common dso_local global i32 0, align 4
@HFA384x_RID_TXRATECNTL = common dso_local global i32 0, align 4
@P80211ENUM_authalg_sharedkey = common dso_local global i64 0, align 8
@HFA384x_CNFAUTHENTICATION_SHAREDKEY = common dso_local global i32 0, align 4
@HFA384x_CNFAUTHENTICATION_OPENSYSTEM = common dso_local global i32 0, align 4
@HFA384x_RID_CNFAUTHENTICATION = common dso_local global i32 0, align 4
@HFA384x_RID_CNFDESIREDSSID = common dso_local global i32 0, align 4
@HFA384x_RID_CNFDESIREDSSID_LEN = common dso_local global i32 0, align 4
@HFA384x_PORTTYPE_BSS = common dso_local global i32 0, align 4
@HFA384x_RID_CNFPORTTYPE = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_data_ok = common dso_local global i32 0, align 4
@P80211ENUM_resultcode_success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_autojoin(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [256 x i32], align 16
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* @WLAN_MACMODE_NONE, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @memcpy(i32* %23, i32* %26, i32 4)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @hfa384x_drvr_disable(i32* %28, i32 0)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @HFA384x_RID_TXRATECNTL, align 4
  %32 = call i32 @hfa384x_drvr_setconfig16(i32* %30, i32 %31, i32 15)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @P80211ENUM_authalg_sharedkey, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @HFA384x_CNFAUTHENTICATION_SHAREDKEY, align 4
  store i32 %40, i32* %7, align 4
  br label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @HFA384x_CNFAUTHENTICATION_OPENSYSTEM, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @HFA384x_RID_CNFAUTHENTICATION, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hfa384x_drvr_setconfig16(i32* %44, i32 %45, i32 %46)
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %49 = call i32 @memset(i32* %48, i32 0, i32 256)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @prism2mgmt_pstr2bytestr(i32* %53, i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @HFA384x_RID_CNFDESIREDSSID, align 4
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %59 = load i32, i32* @HFA384x_RID_CNFDESIREDSSID_LEN, align 4
  %60 = call i32 @hfa384x_drvr_setconfig(i32* %56, i32 %57, i32* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @HFA384x_PORTTYPE_BSS, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @HFA384x_RID_CNFPORTTYPE, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @hfa384x_drvr_setconfig16(i32* %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @hfa384x_drvr_enable(i32* %66, i32 0)
  %68 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hfa384x_drvr_disable(i32*, i32) #1

declare dso_local i32 @hfa384x_drvr_setconfig16(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @prism2mgmt_pstr2bytestr(i32*, i32*) #1

declare dso_local i32 @hfa384x_drvr_setconfig(i32*, i32, i32*, i32) #1

declare dso_local i32 @hfa384x_drvr_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
