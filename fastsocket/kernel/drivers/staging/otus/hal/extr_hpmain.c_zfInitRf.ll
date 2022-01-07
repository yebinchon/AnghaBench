; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfInitRf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfInitRf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsHpPriv = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c" initRf frequency = \00", align 1
@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_CMD_RF_INIT = common dso_local global i32 0, align 4
@ZM_OID_INTERNAL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfInitRf(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @zmw_get_wlan_dev(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 2412, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @zfSetRfRegs(i32* %19, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @zfSetBank4AndPowerTable(i32* %22, i32 %23, i32 0, i32 0)
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.zsHpPriv*
  %31 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %30, i32 0, i32 0
  store i64 %26, i64* %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @zfGetHwTurnOffdynParam(i32* %32, i32 %33, i32 0, i32 0, i32* %7, i32* %8, i32* %9, i32* %10)
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 1000
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @ZM_CMD_RF_INIT, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 28, %38
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %45, i32* %46, align 16
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %55 = load i32, i32* @ZM_OID_INTERNAL_WRITE, align 4
  %56 = call i64 @zfIssueCmd(i32* %53, i32* %54, i32 32, i32 %55, i32 0)
  store i64 %56, i64* %6, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @zfwSleep(i32* %57, i32 1000)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zfSetRfRegs(i32*, i32) #1

declare dso_local i32 @zfSetBank4AndPowerTable(i32*, i32, i32, i32) #1

declare dso_local i32 @zfGetHwTurnOffdynParam(i32*, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @zfIssueCmd(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zfwSleep(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
