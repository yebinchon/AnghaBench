; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApGetTxMicKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApGetTxMicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.zsMicVar* }
%struct.TYPE_4__ = type { i32, %struct.zsMicVar }
%struct.zsMicVar = type { i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zsMicVar* @zfApGetTxMicKey(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.zsMicVar*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @zmw_get_wlan_dev(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %16 = call i32 @zfCopyFromIntTxBuffer(i32* %13, i32* %14, i32* %15, i32 0, i32 6)
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = add nsw i32 %18, %21
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = add nsw i32 %25, %28
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  %32 = load i32, i32* %31, align 16
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = add nsw i32 %32, %35
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.zsMicVar*, %struct.zsMicVar** %45, align 8
  %47 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %46, i64 0
  store %struct.zsMicVar* %47, %struct.zsMicVar** %4, align 8
  br label %74

48:                                               ; preds = %3
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %51 = call i32 @zfApFindSta(i32* %49, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = icmp ne i32 %51, 65535
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store %struct.zsMicVar* %71, %struct.zsMicVar** %4, align 8
  br label %74

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72
  store %struct.zsMicVar* null, %struct.zsMicVar** %4, align 8
  br label %74

74:                                               ; preds = %73, %53, %42
  %75 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  ret %struct.zsMicVar* %75
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfCopyFromIntTxBuffer(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
