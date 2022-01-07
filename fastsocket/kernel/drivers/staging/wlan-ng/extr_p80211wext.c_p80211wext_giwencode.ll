; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_giwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211wext.c_p80211wext_giwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32* }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@HOSTWEP_PRIVACYINVOKED = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@HOSTWEP_EXCLUDEUNENCRYPTED = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@HOSTWEP_DEFAULTKEY_MASK = common dso_local global i32 0, align 4
@NUM_WEPKEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @p80211wext_giwencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211wext_giwencode(%struct.TYPE_5__* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %16 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %19 = and i32 %17, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %31 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %41

35:                                               ; preds = %4
  %36 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %37 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %38 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HOSTWEP_EXCLUDEUNENCRYPTED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %50 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %51 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %60

54:                                               ; preds = %41
  %55 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %56 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %57 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %62 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %65 = and i32 %63, %64
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HOSTWEP_DEFAULTKEY_MASK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %69, %60
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @NUM_WEPKEYS, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %75
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %113

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  %88 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %89 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %100 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %110 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(i8* %101, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %85, %82
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
