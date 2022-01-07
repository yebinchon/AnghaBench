; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApGetRxMicKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApGetRxMicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.zsMicVar }
%struct.zsMicVar = type { i32 }

@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zsMicVar* @zfApGetRxMicKey(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.zsMicVar*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* @ZM_WLAN_HEADER_A2_OFFSET, align 4
  %15 = call i32 @zfCopyFromRxBuffer(i32* %11, i32* %12, i32* %13, i32 %14, i32 6)
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = add nsw i32 %17, %20
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = add nsw i32 %24, %27
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  %31 = load i32, i32* %30, align 16
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = add nsw i32 %31, %34
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %39 = call i32 @zfApFindSta(i32* %37, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = icmp ne i32 %39, 65535
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.zsMicVar* %49, %struct.zsMicVar** %3, align 8
  br label %51

50:                                               ; preds = %2
  store %struct.zsMicVar* null, %struct.zsMicVar** %3, align 8
  br label %51

51:                                               ; preds = %50, %41
  %52 = load %struct.zsMicVar*, %struct.zsMicVar** %3, align 8
  ret %struct.zsMicVar* %52
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
