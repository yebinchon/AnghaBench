; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanSetDot11DMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanSetDot11DMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@NO_ENUMRD = common dso_local global i32 0, align 4
@ZM_REG_FLAG_CHANNEL_PASSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfiWlanSetDot11DMode(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 %8, i64* %11, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load i32, i32* @NO_ENUMRD, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %37, %14
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load i32, i32* @ZM_REG_FLAG_CHANNEL_PASSIVE, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %27
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %26
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %19

40:                                               ; preds = %19
  br label %65

41:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load i32, i32* @ZM_REG_FLAG_CHANNEL_PASSIVE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %51
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %42

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %40
  ret i64 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
