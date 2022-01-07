; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_et131x_Mii_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_et131x_Mii_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__, i8*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@NETIF_STATUS_MEDIA_CONNECT = common dso_local global i64 0, align 8
@fMP_ADAPTER_LINK_DETECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Link down - cable problem ?\0A\00", align 1
@TRUEPHY_SPEED_10MBPS = common dso_local global i64 0, align 8
@NETIF_STATUS_MEDIA_DISCONNECT = common dso_local global i64 0, align 8
@TRUEPHY_SPEED_1000MBPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_Mii_check(%struct.et131x_adapter* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.et131x_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = bitcast %struct.TYPE_10__* %6 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  store i64 %1, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  store i64 %2, i64* %21, align 8
  %22 = bitcast %struct.TYPE_10__* %7 to { i64, i64 }*
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  store i64 %3, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  store i64 %4, i64* %24, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %153

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %36 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 20, i32* %37, align 4
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %39 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %38, i32 0, i32 10
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i64, i64* @NETIF_STATUS_MEDIA_CONNECT, align 8
  %43 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %44 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @fMP_ADAPTER_LINK_DETECTION, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %48 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %52 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %51, i32 0, i32 10
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %56 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %34
  %60 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %61 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @netif_carrier_on(i32 %62)
  br label %64

64:                                               ; preds = %59, %34
  br label %152

65:                                               ; preds = %29
  %66 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %67 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %66, i32 0, i32 11
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %72 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TRUEPHY_SPEED_10MBPS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %65
  %77 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %78 = call i32 @MiRead(%struct.et131x_adapter* %77, i32 18, i32* %17)
  %79 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %80 = load i32, i32* %17, align 4
  %81 = or i32 %80, 4
  %82 = call i32 @MiWrite(%struct.et131x_adapter* %79, i32 18, i32 %81)
  %83 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %84 = load i32, i32* %17, align 4
  %85 = or i32 %84, 33794
  %86 = call i32 @MiWrite(%struct.et131x_adapter* %83, i32 16, i32 %85)
  %87 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %88 = load i32, i32* %17, align 4
  %89 = or i32 %88, 511
  %90 = call i32 @MiWrite(%struct.et131x_adapter* %87, i32 17, i32 %89)
  %91 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @MiWrite(%struct.et131x_adapter* %91, i32 18, i32 %92)
  br label %94

94:                                               ; preds = %76, %65
  %95 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %96 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @fMP_ADAPTER_LINK_DETECTION, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %103 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NETIF_STATUS_MEDIA_DISCONNECT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %101, %94
  %108 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %109 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %108, i32 0, i32 10
  %110 = load i64, i64* %16, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load i64, i64* @NETIF_STATUS_MEDIA_DISCONNECT, align 8
  %113 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %114 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %116 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %115, i32 0, i32 10
  %117 = load i64, i64* %16, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %120 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %107
  %124 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %125 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @netif_carrier_off(i32 %126)
  br label %128

128:                                              ; preds = %123, %107
  br label %129

129:                                              ; preds = %128, %101
  %130 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %131 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %133 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %132, i32 0, i32 8
  store i8* null, i8** %133, align 8
  %134 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %135 = call i32 @et131x_free_busy_send_packets(%struct.et131x_adapter* %134)
  %136 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %137 = call i32 @et131x_init_send(%struct.et131x_adapter* %136)
  %138 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %139 = call i32 @et131x_reset_recv(%struct.et131x_adapter* %138)
  %140 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %141 = call i32 @et131x_soft_reset(%struct.et131x_adapter* %140)
  %142 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %143 = call i32 @et131x_adapter_setup(%struct.et131x_adapter* %142)
  %144 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %145 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %129
  %149 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %150 = call i32 @EnablePhyComa(%struct.et131x_adapter* %149)
  br label %151

151:                                              ; preds = %148, %129
  br label %152

152:                                              ; preds = %151, %64
  br label %153

153:                                              ; preds = %152, %5
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %153
  %159 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %160 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %163, label %236

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %236

168:                                              ; preds = %163, %153
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %175 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %235

178:                                              ; preds = %173, %168
  %179 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %180 = call i32 @ET1310_PhyLinkStatus(%struct.et131x_adapter* %179, i32* %9, i8** %10, i8** %11, i8** %12, i8** %13, i8** %14, i8** %15)
  %181 = load i8*, i8** %11, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %184 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %183, i32 0, i32 3
  store i64 %182, i64* %184, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %187 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %186, i32 0, i32 8
  store i8* %185, i8** %187, align 8
  %188 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %189 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  store i32 20, i32* %190, align 4
  %191 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %192 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @TRUEPHY_SPEED_10MBPS, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %214

196:                                              ; preds = %178
  %197 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %198 = call i32 @MiRead(%struct.et131x_adapter* %197, i32 18, i32* %18)
  %199 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %200 = load i32, i32* %18, align 4
  %201 = or i32 %200, 4
  %202 = call i32 @MiWrite(%struct.et131x_adapter* %199, i32 18, i32 %201)
  %203 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %204 = load i32, i32* %18, align 4
  %205 = or i32 %204, 33794
  %206 = call i32 @MiWrite(%struct.et131x_adapter* %203, i32 16, i32 %205)
  %207 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %208 = load i32, i32* %18, align 4
  %209 = or i32 %208, 511
  %210 = call i32 @MiWrite(%struct.et131x_adapter* %207, i32 17, i32 %209)
  %211 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %212 = load i32, i32* %18, align 4
  %213 = call i32 @MiWrite(%struct.et131x_adapter* %211, i32 18, i32 %212)
  br label %214

214:                                              ; preds = %196, %178
  %215 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %216 = call i32 @ConfigFlowControl(%struct.et131x_adapter* %215)
  %217 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %218 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TRUEPHY_SPEED_1000MBPS, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %214
  %223 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %224 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %225, 2048
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %229 = call i32 @ET1310_PhyAndOrReg(%struct.et131x_adapter* %228, i32 22, i32 53247, i32 8192)
  br label %230

230:                                              ; preds = %227, %222, %214
  %231 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %232 = call i32 @SetRxDmaTimer(%struct.et131x_adapter* %231)
  %233 = load %struct.et131x_adapter*, %struct.et131x_adapter** %8, align 8
  %234 = call i32 @ConfigMACRegs2(%struct.et131x_adapter* %233)
  br label %235

235:                                              ; preds = %230, %173
  br label %236

236:                                              ; preds = %235, %163, %158
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @MiRead(%struct.et131x_adapter*, i32, i32*) #1

declare dso_local i32 @MiWrite(%struct.et131x_adapter*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @et131x_free_busy_send_packets(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_init_send(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_reset_recv(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_soft_reset(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_adapter_setup(%struct.et131x_adapter*) #1

declare dso_local i32 @EnablePhyComa(%struct.et131x_adapter*) #1

declare dso_local i32 @ET1310_PhyLinkStatus(%struct.et131x_adapter*, i32*, i8**, i8**, i8**, i8**, i8**, i8**) #1

declare dso_local i32 @ConfigFlowControl(%struct.et131x_adapter*) #1

declare dso_local i32 @ET1310_PhyAndOrReg(%struct.et131x_adapter*, i32, i32, i32) #1

declare dso_local i32 @SetRxDmaTimer(%struct.et131x_adapter*) #1

declare dso_local i32 @ConfigMACRegs2(%struct.et131x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
