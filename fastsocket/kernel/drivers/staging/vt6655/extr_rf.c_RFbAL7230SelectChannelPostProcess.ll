; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_RFbAL7230SelectChannelPostProcess.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_RFbAL7230SelectChannelPostProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@CB_MAX_CHANNEL_24G = common dso_local global i64 0, align 8
@dwAL7230InitTableAMode = common dso_local global i32* null, align 8
@dwAL7230InitTable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFbAL7230SelectChannelPostProcess(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IFRFbWriteEmbeded(i32 %17, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IFRFbWriteEmbeded(i32 %24, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IFRFbWriteEmbeded(i32 %31, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IFRFbWriteEmbeded(i32 %38, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 10
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IFRFbWriteEmbeded(i32 %45, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 12
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IFRFbWriteEmbeded(i32 %52, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 15
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IFRFbWriteEmbeded(i32 %59, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %125

66:                                               ; preds = %12, %3
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %124

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %124

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = load i32*, i32** @dwAL7230InitTable, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @IFRFbWriteEmbeded(i32 %75, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** @dwAL7230InitTable, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IFRFbWriteEmbeded(i32 %82, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32*, i32** @dwAL7230InitTable, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @IFRFbWriteEmbeded(i32 %89, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32*, i32** @dwAL7230InitTable, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 7
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @IFRFbWriteEmbeded(i32 %96, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32*, i32** @dwAL7230InitTable, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 10
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @IFRFbWriteEmbeded(i32 %103, i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32*, i32** @dwAL7230InitTable, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 12
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @IFRFbWriteEmbeded(i32 %110, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32*, i32** @dwAL7230InitTable, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 15
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @IFRFbWriteEmbeded(i32 %117, i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %74, %70, %66
  br label %125

125:                                              ; preds = %124, %16
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @IFRFbWriteEmbeded(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
