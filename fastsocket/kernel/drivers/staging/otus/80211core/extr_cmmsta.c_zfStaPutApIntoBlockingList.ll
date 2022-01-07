; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaPutApIntoBlockingList.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaPutApIntoBlockingList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, i64 }

@ZM_MAX_BLOCKING_AP_LIST_SIZE = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaPutApIntoBlockingList(i32* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %134

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @zmw_enter_critical_section(i32* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %55, %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ZM_MAX_BLOCKING_AP_LIST_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %50

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %22

50:                                               ; preds = %45, %22
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %58

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %17

58:                                               ; preds = %53, %17
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @ZM_MAX_BLOCKING_AP_LIST_SIZE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ZM_MAX_BLOCKING_AP_LIST_SIZE, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %83

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %63

83:                                               ; preds = %78, %63
  br label %84

84:                                               ; preds = %83, %58
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @ZM_MAX_BLOCKING_AP_LIST_SIZE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i64*, i64** %5, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 5
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @ZM_MAX_BLOCKING_AP_LIST_SIZE, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = and i64 %91, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %88, %84
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %119, %97
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 6
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load i64*, i64** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 %106, i64* %118, align 8
  br label %119

119:                                              ; preds = %101
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %98

122:                                              ; preds = %98
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i64 %123, i64* %131, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @zmw_leave_critical_section(i32* %132)
  br label %134

134:                                              ; preds = %122, %3
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
