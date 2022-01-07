; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_dma.c_dma_init_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_dma.c_dma_init_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_18__, i32*, %struct.TYPE_16__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__, %struct.TYPE_21__ }

@dma_mem = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@fw = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@__AR9170_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@AR9170_TERMINATOR_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Blocks:%d [tx:%d, rx:%d] Terminators:%d/%d\0A\00", align 1
@AR9170_BLOCK_NUMBER = common dso_local global i32 0, align 4
@AR9170_TX_BLOCK_NUMBER = common dso_local global i32 0, align 4
@AR9170_RX_BLOCK_NUMBER = common dso_local global i32 0, align 4
@AR9170_BLOCK_SIZE = common dso_local global i32 0, align 4
@AR9170_PTA_REG_DN_DMA_ADDRH = common dso_local global i32 0, align 4
@AR9170_PTA_REG_DN_DMA_ADDRL = common dso_local global i32 0, align 4
@AR9170_PTA_REG_UP_DMA_ADDRH = common dso_local global i32 0, align 4
@AR9170_PTA_REG_UP_DMA_ADDRL = common dso_local global i32 0, align 4
@AR9170_MAC_REG_DMA_RXQ_ADDR = common dso_local global i32 0, align 4
@AR9170_INT_MAGIC_HEADER_SIZE = common dso_local global i32 0, align 4
@CARL9170_INTF_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_init_descriptors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i32, i32* %1, align 4
  %5 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %6 = call i32 @ARRAY_SIZE(%struct.TYPE_22__* %5)
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %10 = load i32, i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i64 %11
  %13 = call i32 @clear_descriptor(%struct.TYPE_22__* %12)
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %1, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %3

17:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %19 = load i32, i32* %1, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %1, align 4
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i64 %21
  %23 = call i32 @init_queue(%struct.TYPE_21__* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 2, i32 0), %struct.TYPE_22__* %22)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %25 = load i32, i32* %1, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %1, align 4
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %27
  %29 = call i32 @init_queue(%struct.TYPE_21__* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 2, i32 1), %struct.TYPE_22__* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %45, %17
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @__AR9170_NUM_TX_QUEUES, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 3), align 8
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i64 %37
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %40 = load i32, i32* %1, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %1, align 4
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i64 %42
  %44 = call i32 @init_queue(%struct.TYPE_21__* %38, %struct.TYPE_22__* %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %2, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %50 = load i32, i32* %1, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %1, align 4
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i64 %52
  %54 = call i32 @init_queue(%struct.TYPE_21__* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 5), %struct.TYPE_22__* %53)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %56 = load i32, i32* %1, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %1, align 4
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i64 %58
  %60 = call i32 @init_queue(%struct.TYPE_21__* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 2), %struct.TYPE_22__* %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %62 = load i32, i32* %1, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %1, align 4
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i64 %64
  store %struct.TYPE_22__* %65, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 1, i32 1), align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 3), align 8
  %67 = load i32, i32* %1, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %1, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i64 %69
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 1), align 8
  %71 = load i32, i32* @AR9170_TERMINATOR_NUMBER, align 4
  %72 = load i32, i32* %1, align 4
  %73 = icmp ne i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load i32, i32* @AR9170_BLOCK_NUMBER, align 4
  %77 = load i32, i32* @AR9170_TX_BLOCK_NUMBER, align 4
  %78 = load i32, i32* @AR9170_RX_BLOCK_NUMBER, align 4
  %79 = load i32, i32* @AR9170_TERMINATOR_NUMBER, align 4
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 0, i32* %1, align 4
  br label %82

82:                                               ; preds = %115, %48
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @AR9170_BLOCK_NUMBER, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %82
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 1), align 8
  %88 = load i32, i32* %1, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* @AR9170_BLOCK_SIZE, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 2), align 8
  %93 = load i32, i32* %1, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @fill_descriptor(i32* %90, i32 %91, i32 %97)
  %99 = load i32, i32* %1, align 4
  %100 = load i32, i32* @AR9170_TX_BLOCK_NUMBER, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %86
  %103 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 1), align 8
  %104 = load i32, i32* %1, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @dma_reclaim(%struct.TYPE_21__* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 2, i32 1), i32* %106)
  br label %114

108:                                              ; preds = %86
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dma_mem, i32 0, i32 1), align 8
  %110 = load i32, i32* %1, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i32 @dma_reclaim(%struct.TYPE_21__* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 2), i32* %112)
  br label %114

114:                                              ; preds = %108, %102
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %1, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %1, align 4
  br label %82

118:                                              ; preds = %82
  %119 = load i32, i32* @AR9170_PTA_REG_DN_DMA_ADDRH, align 4
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 2, i32 1, i32 0), align 8
  %121 = trunc i64 %120 to i32
  %122 = ashr i32 %121, 16
  %123 = call i32 @set(i32 %119, i32 %122)
  %124 = load i32, i32* @AR9170_PTA_REG_DN_DMA_ADDRL, align 4
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 2, i32 1, i32 0), align 8
  %126 = trunc i64 %125 to i32
  %127 = and i32 %126, 65535
  %128 = call i32 @set(i32 %124, i32 %127)
  %129 = load i32, i32* @AR9170_PTA_REG_UP_DMA_ADDRH, align 4
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 2, i32 0, i32 0), align 8
  %131 = trunc i64 %130 to i32
  %132 = ashr i32 %131, 16
  %133 = call i32 @set(i32 %129, i32 %132)
  %134 = load i32, i32* @AR9170_PTA_REG_UP_DMA_ADDRL, align 4
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 2, i32 0, i32 0), align 8
  %136 = trunc i64 %135 to i32
  %137 = and i32 %136, 65535
  %138 = call i32 @set(i32 %134, i32 %137)
  store i32 0, i32* %1, align 4
  br label %139

139:                                              ; preds = %153, %118
  %140 = load i32, i32* %1, align 4
  %141 = load i32, i32* @__AR9170_NUM_TX_QUEUES, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load i32, i32* %1, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 3), align 8
  %146 = load i32, i32* %1, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @set_wlan_txq_dma_addr(i32 %144, i32 %151)
  br label %153

153:                                              ; preds = %143
  %154 = load i32, i32* %1, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %1, align 4
  br label %139

156:                                              ; preds = %139
  %157 = load i32, i32* @AR9170_MAC_REG_DMA_RXQ_ADDR, align 4
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 2, i32 0), align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @set(i32 %157, i32 %159)
  %161 = load i32, i32* @AR9170_BLOCK_SIZE, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 1, i32 1), align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 1, i32 1), align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  store i8* bitcast (%struct.TYPE_15__* @dma_mem to i8*), i8** %165, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 1, i32 1), align 8
  %167 = call i32 @DESC_PAYLOAD(%struct.TYPE_22__* %166)
  %168 = load i32, i32* @AR9170_INT_MAGIC_HEADER_SIZE, align 4
  %169 = call i32 @memset(i32 %167, i32 255, i32 %168)
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 1, i32 1), align 8
  %171 = load i32, i32* @AR9170_INT_MAGIC_HEADER_SIZE, align 4
  %172 = call i32 @DESC_PAYLOAD_OFF(%struct.TYPE_22__* %170, i32 %171)
  %173 = load i32, i32* @AR9170_BLOCK_SIZE, align 4
  %174 = load i32, i32* @AR9170_INT_MAGIC_HEADER_SIZE, align 4
  %175 = sub nsw i32 %173, %174
  %176 = call i32 @memset(i32 %172, i32 0, i32 %175)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 1, i32 0), align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 1), align 8
  %178 = call i32 @DESC_PAYLOAD(%struct.TYPE_22__* %177)
  %179 = call i32 @memset(i32 %178, i32 0, i32 128)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @fw, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_22__*) #1

declare dso_local i32 @clear_descriptor(%struct.TYPE_22__*) #1

declare dso_local i32 @init_queue(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fill_descriptor(i32*, i32, i32) #1

declare dso_local i32 @dma_reclaim(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @set(i32, i32) #1

declare dso_local i32 @set_wlan_txq_dma_addr(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @DESC_PAYLOAD(%struct.TYPE_22__*) #1

declare dso_local i32 @DESC_PAYLOAD_OFF(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
