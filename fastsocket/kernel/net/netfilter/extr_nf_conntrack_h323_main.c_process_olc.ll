; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_olc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_olc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_22__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_15__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"nf_ct_h323: OpenLogicalChannel\0A\00", align 1
@eOpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters = common dso_local global i64 0, align 8
@eOpenLogicalChannel_reverseLogicalChannelParameters = common dso_local global i32 0, align 4
@eOpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters = common dso_local global i32 0, align 4
@eOpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters = common dso_local global i64 0, align 8
@eOpenLogicalChannel_separateStack = common dso_local global i32 0, align 4
@eDataType_data = common dso_local global i64 0, align 8
@eDataApplicationCapability_application_t120 = common dso_local global i64 0, align 8
@eDataProtocolCapability_separateLANStack = common dso_local global i64 0, align 8
@eNetworkAccessParameters_networkAddress_localAreaAddress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, %struct.TYPE_14__*)* @process_olc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_olc(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, %struct.TYPE_14__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @eOpenLogicalChannel_forwardLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %6
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i8**, i8*** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = call i32 @process_h245_channel(%struct.sk_buff* %24, %struct.nf_conn* %25, i32 %26, i8** %27, i32 %28, i32* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %136

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %6
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @eOpenLogicalChannel_reverseLogicalChannelParameters, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @eOpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %45
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @eOpenLogicalChannel_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i8**, i8*** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = call i32 @process_h245_channel(%struct.sk_buff* %62, %struct.nf_conn* %63, i32 %64, i8** %65, i32 %66, i32* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  store i32 -1, i32* %7, align 4
  br label %136

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %53, %45, %38
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @eOpenLogicalChannel_separateStack, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %76
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @eDataType_data, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %83
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @eDataApplicationCapability_application_t120, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %135

101:                                              ; preds = %91
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @eDataProtocolCapability_separateLANStack, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %101
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @eNetworkAccessParameters_networkAddress_localAreaAddress, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %112
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i8**, i8*** %11, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = call i32 @expect_t120(%struct.sk_buff* %121, %struct.nf_conn* %122, i32 %123, i8** %124, i32 %125, i32* %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  store i32 -1, i32* %7, align 4
  br label %136

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %112, %101, %91, %83, %76
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %135, %133, %74, %36
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @process_h245_channel(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @expect_t120(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
