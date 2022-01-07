; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_CARDbSetMediaChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_CARDbSetMediaChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, i32*, i32* }

@TRUE = common dso_local global i32 0, align 4
@BB_TYPE_11A = common dso_local global i64 0, align 8
@CB_MAX_CHANNEL_24G = common dso_local global i32 0, align 4
@CB_MAX_CHANNEL = common dso_local global i32 0, align 4
@MAC_REG_MACCR = common dso_local global i32 0, align 4
@MACCR_CLRNAV = common dso_local global i32 0, align 4
@MAC_REG_CHANNEL = common dso_local global i32 0, align 4
@MESSAGE_TYPE_SELECT_CHANNLE = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i32 0, align 4
@BB_TYPE_11G = common dso_local global i64 0, align 8
@RATE_1M = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARDbSetMediaChannel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BB_TYPE_11A, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CB_MAX_CHANNEL, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %16
  %26 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %38

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %29
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = load i32, i32* @MAC_REG_MACCR, align 4
  %41 = load i32, i32* @MACCR_CLRNAV, align 4
  %42 = call i32 @MACvRegBitsOn(%struct.TYPE_7__* %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i32, i32* @MAC_REG_CHANNEL, align 4
  %45 = call i32 @MACvRegBitsOff(%struct.TYPE_7__* %43, i32 %44, i32 128)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = load i32, i32* @MESSAGE_TYPE_SELECT_CHANNLE, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @CONTROLnsRequestOut(%struct.TYPE_7__* %46, i32 %47, i32 %48, i32 0, i32 0, i32* null)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BB_TYPE_11A, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %38
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 255, i32* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, 15
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RATE_54M, align 4
  %68 = call i32 @RFbRawSetPower(%struct.TYPE_7__* %58, i32 %66, i32 %67)
  br label %104

69:                                               ; preds = %38
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BB_TYPE_11G, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 255, i32* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RATE_54M, align 4
  %88 = call i32 @RFbRawSetPower(%struct.TYPE_7__* %78, i32 %86, i32 %87)
  br label %103

89:                                               ; preds = %69
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 255, i32* %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RATE_1M, align 4
  %102 = call i32 @RFbRawSetPower(%struct.TYPE_7__* %92, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %89, %75
  br label %104

104:                                              ; preds = %103, %55
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %107 = load i32, i32* @MAC_REG_CHANNEL, align 4
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, 128
  %110 = call i32 @ControlvWriteByte(%struct.TYPE_7__* %105, i32 %106, i32 %107, i32 %109)
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @MACvRegBitsOn(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @MACvRegBitsOff(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @CONTROLnsRequestOut(%struct.TYPE_7__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @RFbRawSetPower(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ControlvWriteByte(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
