; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApGetStaEncryType.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApGetStaEncryType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_NO_WEP = common dso_local global i32 0, align 4
@ZM_LV_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"encyrType=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfApGetStaEncryType(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = call i32 (...) @zmw_declare_for_critical_section()
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @zmw_enter_critical_section(i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @zfApFindSta(i32* %13, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, 65535
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ZM_NO_WEP, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @zmw_leave_critical_section(i32* %32)
  %34 = load i32, i32* @ZM_LV_3, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @zm_msg2_mm(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %36)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_msg2_mm(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
