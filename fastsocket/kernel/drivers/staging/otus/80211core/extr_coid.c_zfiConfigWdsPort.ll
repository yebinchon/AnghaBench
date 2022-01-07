; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiConfigWdsPort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiConfigWdsPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32**, i32, i64* }

@ZM_MAX_WDS_SUPPORT = common dso_local global i64 0, align 8
@ZM_ERR_WDS_PORT_ID = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_NO_WEP = common dso_local global i64 0, align 8
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfiConfigWdsPort(i32* %0, i64 %1, i32 %2, i32* %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca [3 x i32], align 4
  %15 = alloca [4 x i64], align 16
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @zmw_get_wlan_dev(i32* %16)
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @ZM_MAX_WDS_SUPPORT, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @ZM_ERR_WDS_PORT_ID, align 4
  store i32 %22, i32* %7, align 4
  br label %116

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %89

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %29, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %41, i32* %50, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %53, i32* %62, align 4
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %73, i64* %80, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i64, i64* @ZM_MAX_WDS_SUPPORT, align 8
  %83 = add i64 10, %82
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32*, i32** %11, align 8
  %87 = load i64*, i64** %13, align 8
  %88 = call i32 @zfCoreSetKey(i32* %81, i64 %83, i32 0, i64 %85, i32* %86, i64* %87)
  br label %114

89:                                               ; preds = %23
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 3
  store i64 0, i64* %93, align 8
  %94 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 2
  store i64 0, i64* %94, align 16
  %95 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 1
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  store i64 0, i64* %96, align 16
  %97 = load i64, i64* %9, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 1, %98
  %100 = xor i32 %99, -1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %100
  store i32 %106, i32* %104, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i64, i64* @ZM_MAX_WDS_SUPPORT, align 8
  %109 = add i64 10, %108
  %110 = load i64, i64* @ZM_NO_WEP, align 8
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %113 = call i32 @zfCoreSetKey(i32* %107, i64 %109, i32 0, i64 %110, i32* %111, i64* %112)
  br label %114

114:                                              ; preds = %89, %26
  %115 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %114, %21
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfCoreSetKey(i32*, i64, i32, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
