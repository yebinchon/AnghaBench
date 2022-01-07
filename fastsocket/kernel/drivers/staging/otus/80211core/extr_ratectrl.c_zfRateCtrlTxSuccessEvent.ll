; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlTxSuccessEvent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlTxSuccessEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32*, i32*, i32 }
%struct.zsRcCell = type { i32, i32, i64*, i32, i32, i64, i64, i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Raise Tx Rate=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfRateCtrlTxSuccessEvent(i32* %0, %struct.zsRcCell* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.zsRcCell*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.zsRcCell* %1, %struct.zsRcCell** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = call i32 (...) @zmw_declare_for_critical_section()
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %158

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 100
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %8, align 4
  br label %40

39:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %43 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 16
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 80, i32 100
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %158

50:                                               ; preds = %40
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %154, %50
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %58 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %157

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %64 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %62, %69
  br i1 %70, label %71, label %153

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %74 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %152

77:                                               ; preds = %71
  %78 = load i32, i32* @ZM_LV_0, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @zm_msg1_tx(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %82 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sle i32 %83, 15
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load i64, i64* %6, align 8
  %87 = icmp sgt i64 %86, 15
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @zmw_leave_critical_section(i32* %89)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @zfHpSetAggPktNum(i32* %91, i32 16)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @zmw_enter_critical_section(i32* %93)
  br label %95

95:                                               ; preds = %88, %85, %77
  %96 = load i64, i64* %6, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %99 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = trunc i64 %101 to i32
  %103 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %104 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %106 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %108 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %107, i32 0, i32 7
  store i64 0, i64* %108, align 8
  %109 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %110 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %109, i32 0, i32 5
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %115 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %120 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %130 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  store i32 %125, i32* %133, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %138 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.zsRcCell*, %struct.zsRcCell** %5, align 8
  %148 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  store i32 %143, i32* %151, align 4
  br label %152

152:                                              ; preds = %95, %71
  br label %153

153:                                              ; preds = %152, %61
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %55

157:                                              ; preds = %55
  br label %158

158:                                              ; preds = %157, %49, %24
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_msg1_tx(i32, i8*, i64) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfHpSetAggPktNum(i32*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
