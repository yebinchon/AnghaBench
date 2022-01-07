; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_olca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_olca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"nf_ct_h323: OpenLogicalChannelAck\0A\00", align 1
@eOpenLogicalChannelAck_reverseLogicalChannelParameters = common dso_local global i32 0, align 4
@eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters = common dso_local global i32 0, align 4
@eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters = common dso_local global i64 0, align 8
@eOpenLogicalChannelAck_forwardMultiplexAckParameters = common dso_local global i32 0, align 4
@eOpenLogicalChannelAck_forwardMultiplexAckParameters_h2250LogicalChannelAckParameters = common dso_local global i64 0, align 8
@eH2250LogicalChannelAckParameters_mediaChannel = common dso_local global i32 0, align 4
@eH2250LogicalChannelAckParameters_mediaControlChannel = common dso_local global i32 0, align 4
@eOpenLogicalChannelAck_separateStack = common dso_local global i32 0, align 4
@eNetworkAccessParameters_networkAddress_localAreaAddress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, %struct.TYPE_14__*)* @process_olca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_olca(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32 %4, %struct.TYPE_14__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %13, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @eOpenLogicalChannelAck_reverseLogicalChannelParameters, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %6
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %23
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i8**, i8*** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = call i32 @process_h245_channel(%struct.sk_buff* %40, %struct.nf_conn* %41, i32 %42, i8** %43, i32 %44, i32* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 -1, i32* %7, align 4
  br label %143

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %31, %23, %6
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @eOpenLogicalChannelAck_forwardMultiplexAckParameters, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %54
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @eOpenLogicalChannelAck_forwardMultiplexAckParameters_h2250LogicalChannelAckParameters, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %61
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %14, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @eH2250LogicalChannelAckParameters_mediaChannel, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %68
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i8**, i8*** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = call i32 @expect_rtp_rtcp(%struct.sk_buff* %79, %struct.nf_conn* %80, i32 %81, i8** %82, i32 %83, i32* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  store i32 -1, i32* %7, align 4
  br label %143

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %68
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @eH2250LogicalChannelAckParameters_mediaControlChannel, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i8**, i8*** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = call i32 @expect_rtp_rtcp(%struct.sk_buff* %99, %struct.nf_conn* %100, i32 %101, i8** %102, i32 %103, i32* %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  store i32 -1, i32* %7, align 4
  br label %143

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %61, %54
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @eOpenLogicalChannelAck_separateStack, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %112
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @eNetworkAccessParameters_networkAddress_localAreaAddress, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %119
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i8**, i8*** %11, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = call i32 @expect_t120(%struct.sk_buff* %128, %struct.nf_conn* %129, i32 %130, i8** %131, i32 %132, i32* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  store i32 -1, i32* %7, align 4
  br label %143

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %141, %119, %112
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %142, %140, %109, %89, %52
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @process_h245_channel(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @expect_rtp_rtcp(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @expect_t120(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
