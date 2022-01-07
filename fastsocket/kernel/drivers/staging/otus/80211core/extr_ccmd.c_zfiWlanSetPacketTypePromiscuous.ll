; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfiWlanSetPacketTypePromiscuous.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfiWlanSetPacketTypePromiscuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wd->swSniffer \00", align 1
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"enalbe sniffer mode\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"disalbe sniffer mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfiWlanSetPacketTypePromiscuous(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load i32, i32* @ZM_LV_0, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @zm_msg1_mm(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @zfHpSetSnifferMode(i32* %18, i32 1)
  %20 = load i32, i32* @ZM_LV_1, align 4
  %21 = call i32 @zm_msg0_mm(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %27

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @zfHpSetSnifferMode(i32* %23, i32 0)
  %25 = load i32, i32* @ZM_LV_0, align 4
  %26 = call i32 @zm_msg0_mm(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg1_mm(i32, i8*, i64) #1

declare dso_local i32 @zfHpSetSnifferMode(i32*, i32) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
