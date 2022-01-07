; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApFlushBufferedPsFrame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApFlushBufferedPsFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64*, i64*, i32***, i32** }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_UNI_ARRAY_SIZE = common dso_local global i32 0, align 4
@ZM_ERR_FLUSH_PS_QUEUE = common dso_local global i32 0, align 4
@ZM_MAX_AP_SUPPORT = common dso_local global i64 0, align 8
@ZM_BCMC_ARRAY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfApFlushBufferedPsFrame(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = call i32 (...) @zmw_declare_for_critical_section()
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %1, %68
  store i32* null, i32** %6, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @zmw_enter_critical_section(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %10
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32*, i32** %26, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* @ZM_UNI_ARRAY_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = and i64 %37, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %46

45:                                               ; preds = %10
  store i64 1, i64* %3, align 8
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @zmw_leave_critical_section(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @ZM_ERR_FLUSH_PS_QUEUE, align 4
  %55 = call i32 @zfwBufFree(i32* %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %4, align 8
  %59 = load i32, i32* @ZM_UNI_ARRAY_SIZE, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %57, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @zm_assert(i32 %63)
  %65 = load i64, i64* %3, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %69

68:                                               ; preds = %56
  br label %10

69:                                               ; preds = %67
  store i64 0, i64* %5, align 8
  br label %70

70:                                               ; preds = %153, %69
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @ZM_MAX_AP_SUPPORT, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %156

74:                                               ; preds = %70
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %75

75:                                               ; preds = %74, %151
  store i32* null, i32** %6, align 8
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @zmw_enter_critical_section(i32* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %84, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %75
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = load i32***, i32**** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i32**, i32*** %97, i64 %98
  %100 = load i32**, i32*** %99, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32*, i32** %100, i64 %107
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %6, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  %118 = load i32, i32* @ZM_BCMC_ARRAY_SIZE, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = and i64 %117, %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %5, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  store i64 %121, i64* %127, align 8
  br label %129

128:                                              ; preds = %75
  store i64 1, i64* %3, align 8
  br label %129

129:                                              ; preds = %128, %93
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @zmw_leave_critical_section(i32* %130)
  %132 = load i32*, i32** %6, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32*, i32** %2, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* @ZM_ERR_FLUSH_PS_QUEUE, align 4
  %138 = call i32 @zfwBufFree(i32* %135, i32* %136, i32 %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i64, i64* %4, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %4, align 8
  %142 = load i32, i32* @ZM_BCMC_ARRAY_SIZE, align 4
  %143 = mul nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = icmp ult i64 %140, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @zm_assert(i32 %146)
  %148 = load i64, i64* %3, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %152

151:                                              ; preds = %139
  br label %75

152:                                              ; preds = %150
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %5, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %5, align 8
  br label %70

156:                                              ; preds = %70
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

declare dso_local i32 @zm_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
