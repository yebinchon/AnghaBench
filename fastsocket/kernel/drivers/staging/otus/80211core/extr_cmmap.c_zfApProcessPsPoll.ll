; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApProcessPsPoll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApProcessPsPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32** }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_UNI_ARRAY_SIZE = common dso_local global i32 0, align 4
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfApProcessPsPoll(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i64], align 16
  %6 = alloca [3 x i64], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = call i32 (...) @zmw_declare_for_critical_section()
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @zmw_tx_buf_readh(i32* %13, i32* %14, i32 10)
  %16 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  store i64 %15, i64* %16, align 16
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @zmw_tx_buf_readh(i32* %17, i32* %18, i32 12)
  %20 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %19, i64* %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @zmw_tx_buf_readh(i32* %21, i32* %22, i32 14)
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %23, i64* %24, align 16
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @zmw_enter_critical_section(i32* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %81, %2
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %88

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @zmw_tx_buf_readh(i32* %46, i32* %47, i32 0)
  %49 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 %48, i64* %49, align 16
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @zmw_tx_buf_readh(i32* %50, i32* %51, i32 2)
  %53 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %52, i64* %53, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @zmw_tx_buf_readh(i32* %54, i32* %55, i32 4)
  %57 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 %56, i64* %57, align 16
  %58 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %59 = load i64, i64* %58, align 16
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %61 = load i64, i64* %60, align 16
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %38
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %71 = load i64, i64* %70, align 16
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %73 = load i64, i64* %72, align 16
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32*, i32** %3, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %79 = call i32 @zfApRemoveFromPsQueue(i32* %76, i64 %77, i64* %78)
  store i32 %79, i32* %9, align 4
  br label %88

80:                                               ; preds = %69, %63, %38
  store i32* null, i32** %7, align 8
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 1
  %84 = load i32, i32* @ZM_UNI_ARRAY_SIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = and i64 %83, %86
  store i64 %87, i64* %8, align 8
  br label %31

88:                                               ; preds = %75, %31
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @zmw_leave_critical_section(i32* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32*, i32** %3, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @zfTxSendEth(i32* %94, i32* %95, i32 0, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i64 @zmw_tx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfApRemoveFromPsQueue(i32*, i64, i64*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfTxSendEth(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
