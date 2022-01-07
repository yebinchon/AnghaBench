; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_gen_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_gen_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32*, i64 }

@MAX_WPA_IE_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"return error out, len:%zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"len:%zu, ie:%d\0A\00", align 1
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
  store i32* null, i32** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @MAX_WPA_IE_LEN, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %3
  %19 = load i64, i64* %7, align 8
  %20 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %15, %12
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %27, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i64, i64* %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i64, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %35, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %82

42:                                               ; preds = %26
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* @kmalloc(i64 %43, i32 %44)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %82

51:                                               ; preds = %42
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @memcpy(i32* %52, i32* %53, i64 %54)
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %81

66:                                               ; preds = %23
  %67 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %76, %51
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %48, %34, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @printk(i8*, i64, ...) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
