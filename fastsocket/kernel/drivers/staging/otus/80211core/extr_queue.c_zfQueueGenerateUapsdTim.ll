; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueGenerateUapsdTim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueGenerateUapsdTim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.zsQueue = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@wd = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfQueueGenerateUapsdTim(i32* %0, %struct.zsQueue* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsQueue*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [6 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.zsQueue* %1, %struct.zsQueue** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @zmw_get_wlan_dev(i32* %17)
  %19 = call i32 (...) @zmw_declare_for_critical_section()
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @zmw_enter_critical_section(i32* %20)
  %22 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %23 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  br label %25

25:                                               ; preds = %118, %4
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %28 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %119

31:                                               ; preds = %25
  %32 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %33 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %49, %31
  %40 = load i64, i64* %14, align 8
  %41 = icmp ult i64 %40, 6
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i64 @zmw_buf_readb(i32* %43, i32* %44, i64 %45)
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 %47
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %14, align 8
  br label %39

52:                                               ; preds = %39
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 0
  %55 = call i64 @zfApFindSta(i32* %53, i64* %54)
  store i64 %55, i64* %11, align 8
  %56 = icmp ne i64 %55, 65535
  br i1 %56, label %57, label %109

57:                                               ; preds = %52
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %57
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 15
  %77 = icmp eq i32 %76, 15
  br i1 %77, label %78, label %102

78:                                               ; preds = %67
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = and i64 %81, 7
  %83 = trunc i64 %82 to i32
  %84 = shl i32 1, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %12, align 8
  %87 = lshr i64 %86, 3
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = or i64 %92, %88
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ugt i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %78
  %99 = load i64, i64* %16, align 8
  %100 = load i64*, i64** %8, align 8
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %78
  br label %102

102:                                              ; preds = %101, %67
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 1
  %105 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %106 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = and i64 %104, %107
  store i64 %108, i64* %13, align 8
  br label %118

109:                                              ; preds = %57, %52
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds [6 x i64], [6 x i64]* %10, i64 0, i64 0
  %114 = call i32 @zfQueueRemovewithIndex(i32* %110, %struct.zsQueue* %111, i64 %112, i64* %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @zfwBufFree(i32* %115, i32* %116, i32 0)
  br label %118

118:                                              ; preds = %109, %102
  br label %25

119:                                              ; preds = %25
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @zmw_leave_critical_section(i32* %120)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i64 @zmw_buf_readb(i32*, i32*, i64) #1

declare dso_local i64 @zfApFindSta(i32*, i64*) #1

declare dso_local i32 @zfQueueRemovewithIndex(i32*, %struct.zsQueue*, i64, i64*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
