; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_CARDvSetBSSMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_CARDvSetBSSMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32*, i32 }

@RF_AIROHA7230 = common dso_local global i64 0, align 8
@BB_TYPE_11A = common dso_local global i64 0, align 8
@BB_TYPE_11G = common dso_local global i64 0, align 8
@MESSAGE_REQUEST_BBREG = common dso_local global i32 0, align 4
@BB_TYPE_11B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvSetBSSMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = inttoptr i64 %5 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RF_AIROHA7230, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BB_TYPE_11A, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load i64, i64* @BB_TYPE_11G, align 8
  %21 = call i32 @MACvSetBBType(%struct.TYPE_7__* %19, i64 %20)
  br label %28

22:                                               ; preds = %12, %1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @MACvSetBBType(%struct.TYPE_7__* %23, i64 %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = call i32 @CARDbyGetPktType(%struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BB_TYPE_11A, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %41 = call i32 @ControlvWriteByte(%struct.TYPE_7__* %39, i32 %40, i32 136, i32 3)
  br label %64

42:                                               ; preds = %28
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BB_TYPE_11B, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %51 = call i32 @ControlvWriteByte(%struct.TYPE_7__* %49, i32 %50, i32 136, i32 2)
  br label %63

52:                                               ; preds = %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BB_TYPE_11G, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %61 = call i32 @ControlvWriteByte(%struct.TYPE_7__* %59, i32 %60, i32 136, i32 8)
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %38
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = call i32 @vUpdateIFS(%struct.TYPE_7__* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @CARDvSetRSPINF(%struct.TYPE_7__* %67, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BB_TYPE_11A, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %64
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RF_AIROHA7230, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 32, i32* %88, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ControlvWriteByte(%struct.TYPE_7__* %89, i32 %90, i32 231, i32 %95)
  br label %97

97:                                               ; preds = %84, %78
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 16, i32* %101, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 16, i32* %105, align 4
  br label %134

106:                                              ; preds = %64
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RF_AIROHA7230, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 28, i32* %116, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ControlvWriteByte(%struct.TYPE_7__* %117, i32 %118, i32 231, i32 %123)
  br label %125

125:                                              ; preds = %112, %106
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 0, i32* %129, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %125, %97
  ret void
}

declare dso_local i32 @MACvSetBBType(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @CARDbyGetPktType(%struct.TYPE_7__*) #1

declare dso_local i32 @ControlvWriteByte(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @vUpdateIFS(%struct.TYPE_7__*) #1

declare dso_local i32 @CARDvSetRSPINF(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
