; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i8*, i8*, i8*, i32, i32 (i32, %struct.ieee80211_security*)*, i8*, i8* }
%struct.ieee80211_security = type { i8*, i32, i32 }

@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown WPA param: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, i32, i8*)* @ieee80211_wpa_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_wpa_set_param(%struct.ieee80211_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_security, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %84 [
    i32 128, label %11
    i32 130, label %15
    i32 133, label %19
    i32 131, label %58
    i32 134, label %62
    i32 132, label %66
    i32 129, label %70
  ]

11:                                               ; preds = %3
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @ieee80211_wpa_enable(%struct.ieee80211_device* %12, i8* %13)
  store i32 %14, i32* %7, align 4
  br label %89

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 8
  store i8* %16, i8** %18, align 8
  br label %89

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %9, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %9, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %9, i32 0, i32 2
  %24 = load i32, i32* @SEC_ENABLED, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @SEC_LEVEL, align 4
  %32 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %9, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @SEC_LEVEL_0, align 4
  %36 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  br label %44

37:                                               ; preds = %19
  %38 = load i32, i32* @SEC_LEVEL, align 4
  %39 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %9, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @SEC_LEVEL_1, align 4
  %43 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %9, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %45, i32 0, i32 6
  %47 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %46, align 8
  %48 = icmp ne i32 (i32, %struct.ieee80211_security*)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 6
  %52 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %51, align 8
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %52(i32 %55, %struct.ieee80211_security* %9)
  br label %57

57:                                               ; preds = %49, %44
  br label %89

58:                                               ; preds = %3
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  br label %89

62:                                               ; preds = %3
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @ieee80211_wpa_set_auth_algs(%struct.ieee80211_device* %63, i8* %64)
  store i32 %65, i32* %7, align 4
  br label %89

66:                                               ; preds = %3
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %89

70:                                               ; preds = %3
  %71 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %71, i32 0, i32 1
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %80, i32 0, i32 1
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %89

84:                                               ; preds = %3
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %84, %70, %66, %62, %58, %57, %15, %11
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @ieee80211_wpa_enable(%struct.ieee80211_device*, i8*) #1

declare dso_local i32 @ieee80211_wpa_set_auth_algs(%struct.ieee80211_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
