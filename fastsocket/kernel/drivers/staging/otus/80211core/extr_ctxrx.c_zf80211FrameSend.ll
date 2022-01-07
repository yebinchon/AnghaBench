; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zf80211FrameSend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zf80211FrameSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_SUCCESS = common dso_local global i32 0, align 4
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zf80211FrameSend(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32* %8, i32* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %16, align 8
  store i32* %1, i32** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32* %4, i32** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 @zmw_get_wlan_dev(i32* %33)
  %35 = load i32*, i32** %16, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = call i32 @zfwBufGetSize(i32* %35, i32* %36)
  store i32 %37, i32* %32, align 4
  %38 = load i32*, i32** %20, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %15
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %32, align 4
  %50 = load i32, i32* %19, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %91

57:                                               ; preds = %15
  %58 = load i32*, i32** %20, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 65535
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %32, align 4
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %68, %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %90

76:                                               ; preds = %57
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %32, align 4
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %82, %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %84
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %76, %62
  br label %91

91:                                               ; preds = %90, %43
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32*, i32** %16, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load i32, i32* %23, align 4
  %100 = load i32*, i32** %24, align 8
  %101 = load i32, i32* %19, align 4
  %102 = load i32*, i32** %25, align 8
  %103 = load i32, i32* %26, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %27, align 4
  %106 = load i32, i32* %28, align 4
  %107 = load i32, i32* %29, align 4
  %108 = load i32, i32* %30, align 4
  %109 = call i32 @zfHpSend(i32* %97, i32* %98, i32 %99, i32* %100, i32 %101, i32* %102, i32 %103, i32* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %31, align 4
  %110 = load i32, i32* @ZM_SUCCESS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %91
  %113 = load i32, i32* %28, align 4
  %114 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32*, i32** %16, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = load i32, i32* %31, align 4
  %120 = call i32 @zfwBufFree(i32* %117, i32* %118, i32 %119)
  br label %132

121:                                              ; preds = %112
  %122 = load i32, i32* %28, align 4
  %123 = load i32, i32* @ZM_INTERNAL_ALLOC_BUF, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32*, i32** %16, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 @zfwBufFree(i32* %126, i32* %127, i32 0)
  br label %131

129:                                              ; preds = %121
  %130 = call i32 @zm_assert(i32 0)
  br label %131

131:                                              ; preds = %129, %125
  br label %132

132:                                              ; preds = %131, %116
  br label %133

133:                                              ; preds = %132, %91
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfHpSend(i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

declare dso_local i32 @zm_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
