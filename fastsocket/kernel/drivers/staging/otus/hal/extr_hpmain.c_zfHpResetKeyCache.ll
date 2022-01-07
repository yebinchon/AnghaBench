; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpResetKeyCache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpResetKeyCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_WEP64 = common dso_local global i32 0, align 4
@ZM_MAC_REG_ROLL_CALL_TBL_L = common dso_local global i32 0, align 4
@ZM_MAC_REG_ROLL_CALL_TBL_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpResetKeyCache(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %2, align 8
  %6 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 16, i1 false)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  store %struct.zsHpPriv* %11, %struct.zsHpPriv** %5, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ZM_WEP64, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %20 = call i32 @zfHpSetDefaultKey(i32* %16, i32 %17, i32 %18, i32* %19, i32* null)
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %12

24:                                               ; preds = %12
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @ZM_MAC_REG_ROLL_CALL_TBL_L, align 4
  %27 = call i32 @zfDelayWriteInternalReg(i32* %25, i32 %26, i32 0)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @ZM_MAC_REG_ROLL_CALL_TBL_H, align 4
  %30 = call i32 @zfDelayWriteInternalReg(i32* %28, i32 %29, i32 0)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @zfFlushDelayWrite(i32* %31)
  %33 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %34 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zfHpSetDefaultKey(i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #2

declare dso_local i32 @zfFlushDelayWrite(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
