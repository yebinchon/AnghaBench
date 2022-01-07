; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_LineMonitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_LineMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32*, i64, %struct.TYPE_23__, i32, %struct.TYPE_22__, %struct.TYPE_20__, i32, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@SIG_DTMF_READY = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@ixjdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"IXJ phone%d saw CIDCW Ack DTMF %d from display at %ld\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @LineMonitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LineMonitor(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %144

9:                                                ; preds = %1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = call i64 @ixj_WriteDSPCommand(i32 28672, %struct.TYPE_14__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %144

16:                                               ; preds = %9
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 11
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 10
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %16
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %44, %37, %16
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %141

59:                                               ; preds = %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %141, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %110, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 79
  br i1 %89, label %90, label %93

90:                                               ; preds = %71
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %71
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = load i32, i32* @SIG_DTMF_READY, align 4
  %107 = load i32, i32* @POLL_IN, align 4
  %108 = call i32 @ixj_kill_fasync(%struct.TYPE_14__* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %93
  br label %138

110:                                              ; preds = %66
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 13
  br i1 %119, label %120, label %137

120:                                              ; preds = %115, %110
  %121 = load i32, i32* @ixjdebug, align 4
  %122 = and i32 %121, 32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @jiffies, align 4
  %132 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %124, %120
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %115
  br label %138

138:                                              ; preds = %137, %109
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %59, %54
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %141, %15, %8
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @ixj_WriteDSPCommand(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ixj_kill_fasync(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
