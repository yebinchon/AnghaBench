; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfiDbgReadTally.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfiDbgReadTally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsHpPriv = type { i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_CMD_TALLY = common dso_local global i32 0, align 4
@ZM_OID_TALLY = common dso_local global i32 0, align 4
@ZM_CMD_TALLY_APD = common dso_local global i32 0, align 4
@ZM_OID_TALLY_APD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfiDbgReadTally(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.zsHpPriv*
  %12 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i32, i32* @ZM_CMD_TALLY, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 0, %18
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %23 = load i32, i32* @ZM_OID_TALLY, align 4
  %24 = call i32 @zfIssueCmd(i32* %21, i32* %22, i32 4, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @ZM_CMD_TALLY_APD, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 0, %26
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %31 = load i32, i32* @ZM_OID_TALLY_APD, align 4
  %32 = call i32 @zfIssueCmd(i32* %29, i32* %30, i32 4, i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %16, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfIssueCmd(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
