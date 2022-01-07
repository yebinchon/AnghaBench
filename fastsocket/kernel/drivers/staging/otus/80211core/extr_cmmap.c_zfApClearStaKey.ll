; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApClearStaKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApClearStaKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@__const.zfApClearStaKey.bcAddr = private unnamed_addr constant [3 x i32] [i32 65535, i32 65535, i32 65535], align 4
@TRUE = common dso_local global i64 0, align 8
@ZM_NO_WEP = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_LV_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't find STA address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfApClearStaKey(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.zfApClearStaKey.bcAddr to i8*), i64 12, i1 false)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @zfMemoryIsEqual(i32* %10, i32* %11, i32 12)
  %13 = load i64, i64* @TRUE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %44

16:                                               ; preds = %2
  %17 = call i32 (...) @zmw_declare_for_critical_section()
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @zmw_enter_critical_section(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @zfApFindSta(i32* %20, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 65535
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @zfHpRemoveKey(i32* %25, i32 %27)
  %29 = load i32, i32* @ZM_NO_WEP, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %29, i32* %37, align 4
  br label %41

38:                                               ; preds = %16
  %39 = load i32, i32* @ZM_LV_3, align 4
  %40 = call i32 @zm_msg0_mm(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %24
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @zmw_leave_critical_section(i32* %42)
  br label %44

44:                                               ; preds = %41, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i64 @zfMemoryIsEqual(i32*, i32*, i32) #2

declare dso_local i32 @zmw_declare_for_critical_section(...) #2

declare dso_local i32 @zmw_enter_critical_section(i32*) #2

declare dso_local i32 @zfApFindSta(i32*, i32*) #2

declare dso_local i32 @zfHpRemoveKey(i32*, i32) #2

declare dso_local i32 @zm_msg0_mm(i32, i8*) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
