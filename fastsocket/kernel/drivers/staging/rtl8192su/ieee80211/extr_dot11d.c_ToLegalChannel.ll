; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_dot11d.c_ToLegalChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_dot11d.c_ToLegalChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.TYPE_3__ = type { i64* }

@MAX_CHANNEL_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"IsLegalChannel(): Invalid Channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ToLegalChannel(%struct.ieee80211_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %10 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %8, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %7, align 8
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  br label %11

29:                                               ; preds = %23, %11
  %30 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %37
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %45, %33
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
