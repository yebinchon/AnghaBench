; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_gen_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_gen_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32*, i64 }

@MAX_WPA_IE_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"len: %Zd, ie:%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_gen_ie(%struct.ieee80211_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @MAX_WPA_IE_LEN, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %15, %12
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %80

40:                                               ; preds = %24
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32* @kmalloc(i64 %41, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %80

49:                                               ; preds = %40
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @memcpy(i32* %50, i32* %51, i64 %52)
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %79

64:                                               ; preds = %21
  %65 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %49
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %46, %32, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @printk(i8*, i64, i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
