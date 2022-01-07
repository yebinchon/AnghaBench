; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetDefaultKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetDefaultKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i64 }

@ZM_USER_KEY_DEFAULT = common dso_local global i64 0, align 8
@ZM_TKIP = common dso_local global i64 0, align 8
@ZM_CENC = common dso_local global i64 0, align 8
@ZM_HAL_80211_MODE_IBSS_WPA2PSK = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpSetDefaultKey(i32* %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [3 x i32], align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* @ZM_USER_KEY_DEFAULT, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @zfHpSetKey(i32* %13, i64 %16, i32 0, i64 %17, i32* %18, i32* %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @ZM_TKIP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* @ZM_USER_KEY_DEFAULT, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @zfHpSetKey(i32* %25, i64 %28, i32 1, i64 %29, i32* %30, i32* %31)
  br label %33

33:                                               ; preds = %24, %5
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zfHpSetKey(i32*, i64, i32, i64, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
