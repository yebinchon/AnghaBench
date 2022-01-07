; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_transmit_qos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_transmit_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%union.cvmx_buf_ptr = type { i64, [8 x i8] }
%struct.TYPE_21__ = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.octeon_ethernet = type { %struct.TYPE_19__, i64, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__, i32, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: Device not up\0A\00", align 1
@CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 = common dso_local global i32 0, align 4
@CVMX_PKO_LOCK_CMD_QUEUE = common dso_local global i32 0, align 4
@CVMX_FPA_PACKET_POOL = common dso_local global i32 0, align 4
@CVMX_FPA_PACKET_POOL_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: Failed to send the packet\0A\00", align 1
@CVMX_FPA_WQE_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_transmit_qos(%struct.net_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %union.cvmx_buf_ptr, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.octeon_ethernet*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %16)
  store %struct.octeon_ethernet* %17, %struct.octeon_ethernet** %14, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %15, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %4
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DEBUGPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %35 = call i32 @cvm_oct_free_work(%struct.TYPE_20__* %34)
  br label %36

36:                                               ; preds = %33, %26
  store i32 -1, i32* %5, align 4
  br label %191

37:                                               ; preds = %4
  %38 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE0, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @CVMX_PKO_QUEUES_PER_PORT_INTERFACE1, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %57

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %14, align 8
  %50 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @cvmx_pko_get_num_queues(i32 %51)
  %53 = icmp sge i32 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %55, %46
  br label %58

57:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %56
  store i32 0, i32* %13, align 4
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @local_irq_save(i64 %59)
  %61 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %14, align 8
  %62 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %14, align 8
  %65 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = load i32, i32* @CVMX_PKO_LOCK_CMD_QUEUE, align 4
  %71 = call i32 @cvmx_pko_send_packet_prepare(i32 %63, i64 %69, i32 %70)
  %72 = bitcast %union.cvmx_buf_ptr* %11 to i64*
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = bitcast %union.cvmx_buf_ptr* %11 to %struct.TYPE_13__*
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %81 = bitcast %union.cvmx_buf_ptr* %11 to %struct.TYPE_13__*
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @CVMX_FPA_PACKET_POOL_SIZE, align 4
  %84 = bitcast %union.cvmx_buf_ptr* %11 to %struct.TYPE_13__*
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = bitcast %union.cvmx_buf_ptr* %11 to %struct.TYPE_13__*
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %58
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %120, %58
  %128 = phi i1 [ true, %58 ], [ %126, %120 ]
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  store i32 0, i32* %134, align 8
  br label %138

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  store i32 5, i32* %137, align 8
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %14, align 8
  %140 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %14, align 8
  %143 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = load i32, i32* @CVMX_PKO_LOCK_CMD_QUEUE, align 4
  %149 = bitcast %union.cvmx_buf_ptr* %11 to { i64, i64 }*
  %150 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %149, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @cvmx_pko_send_packet_finish(i32 %141, i64 %147, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %12, i64 %151, i64 %153, i32 %148)
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %138
  %158 = load %struct.net_device*, %struct.net_device** %6, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @DEBUGPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  store i32 -1, i32* %13, align 4
  br label %162

162:                                              ; preds = %157, %138
  %163 = load i64, i64* %10, align 8
  %164 = call i32 @local_irq_restore(i64 %163)
  %165 = load i32, i32* %13, align 4
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %173 = call i32 @cvm_oct_free_work(%struct.TYPE_20__* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %14, align 8
  %176 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  br label %189

180:                                              ; preds = %162
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %185 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %186 = call i32 @DONT_WRITEBACK(i32 1)
  %187 = call i32 @cvmx_fpa_free(%struct.TYPE_20__* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %180
  br label %189

189:                                              ; preds = %188, %174
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %189, %36
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUGPRINT(i8*, i32) #1

declare dso_local i32 @cvm_oct_free_work(%struct.TYPE_20__*) #1

declare dso_local i32 @cvmx_pko_get_num_queues(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @cvmx_pko_send_packet_prepare(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cvmx_pko_send_packet_finish(i32, i64, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, i64, i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @cvmx_fpa_free(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @DONT_WRITEBACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
