; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_et131x_xcvr_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_et131x_xcvr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32*, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@MI_REGS_t = common dso_local global i32 0, align 4
@TxOnly = common dso_local global i64 0, align 8
@Both = common dso_local global i64 0, align 8
@TRUEPHY_BIT_SET = common dso_local global i32 0, align 4
@TRUEPHY_BIT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*)* @et131x_xcvr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_xcvr_init(%struct.et131x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %12 = load i32, i32* @MI_REGS_t, align 4
  %13 = call i64 @offsetof(i32 %12, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %16 = call i32 @MiRead(%struct.et131x_adapter* %11, i32 %14, i32* %15)
  %17 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %18 = load i32, i32* @MI_REGS_t, align 4
  %19 = call i64 @offsetof(i32 %18, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5)
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %22 = call i32 @MiRead(%struct.et131x_adapter* %17, i32 %20, i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %30 = load i32, i32* @MI_REGS_t, align 4
  %31 = call i64 @offsetof(i32 %30, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5)
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MiWrite(%struct.et131x_adapter* %29, i32 %32, i32 %34)
  %36 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %1
  %44 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %45 = load i32, i32* @MI_REGS_t, align 4
  %46 = call i64 @offsetof(i32 %45, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %49 = call i32 @MiRead(%struct.et131x_adapter* %44, i32 %47, i32* %48)
  %50 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i32 3, i32* %59, align 4
  br label %63

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  store i32 4, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  store i32 10, i32* %65, align 4
  %66 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %67 = load i32, i32* @MI_REGS_t, align 4
  %68 = call i64 @offsetof(i32 %67, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MiWrite(%struct.et131x_adapter* %66, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %63, %1
  %74 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %124

78:                                               ; preds = %73
  %79 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %124

83:                                               ; preds = %78
  %84 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TxOnly, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @Both, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89, %83
  %96 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %97 = load i32, i32* @TRUEPHY_BIT_SET, align 4
  %98 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %96, i32 %97, i32 4, i32 11, i32* null)
  br label %103

99:                                               ; preds = %89
  %100 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %101 = load i32, i32* @TRUEPHY_BIT_CLEAR, align 4
  %102 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %100, i32 %101, i32 4, i32 11, i32* null)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @Both, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %111 = load i32, i32* @TRUEPHY_BIT_SET, align 4
  %112 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %110, i32 %111, i32 4, i32 10, i32* null)
  br label %117

113:                                              ; preds = %103
  %114 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %115 = load i32, i32* @TRUEPHY_BIT_CLEAR, align 4
  %116 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %114, i32 %115, i32 4, i32 10, i32* null)
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %119 = call i32 @ET1310_PhyAutoNeg(%struct.et131x_adapter* %118, i32 1)
  %120 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %121 = load i32, i32* @TRUEPHY_BIT_SET, align 4
  %122 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %120, i32 %121, i32 0, i32 9, i32* null)
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %224

124:                                              ; preds = %78, %73
  %125 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %126 = call i32 @ET1310_PhyAutoNeg(%struct.et131x_adapter* %125, i32 0)
  %127 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 1
  br i1 %130, label %131, label %166

131:                                              ; preds = %124
  %132 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @TxOnly, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @Both, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137, %131
  %144 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %145 = load i32, i32* @TRUEPHY_BIT_SET, align 4
  %146 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %144, i32 %145, i32 4, i32 11, i32* null)
  br label %151

147:                                              ; preds = %137
  %148 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %149 = load i32, i32* @TRUEPHY_BIT_CLEAR, align 4
  %150 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %148, i32 %149, i32 4, i32 11, i32* null)
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @Both, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %159 = load i32, i32* @TRUEPHY_BIT_SET, align 4
  %160 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %158, i32 %159, i32 4, i32 10, i32* null)
  br label %165

161:                                              ; preds = %151
  %162 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %163 = load i32, i32* @TRUEPHY_BIT_CLEAR, align 4
  %164 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %162, i32 %163, i32 4, i32 10, i32* null)
  br label %165

165:                                              ; preds = %161, %157
  br label %173

166:                                              ; preds = %124
  %167 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %168 = load i32, i32* @TRUEPHY_BIT_CLEAR, align 4
  %169 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %167, i32 %168, i32 4, i32 10, i32* null)
  %170 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %171 = load i32, i32* @TRUEPHY_BIT_CLEAR, align 4
  %172 = call i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %170, i32 %171, i32 4, i32 11, i32* null)
  br label %173

173:                                              ; preds = %166, %165
  %174 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %175 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %222 [
    i32 10, label %177
    i32 100, label %198
    i32 1000, label %219
  ]

177:                                              ; preds = %173
  %178 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %179 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %184 = call i32 @TPAL_SetPhy10HalfDuplex(%struct.et131x_adapter* %183)
  br label %197

185:                                              ; preds = %177
  %186 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %187 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %192 = call i32 @TPAL_SetPhy10FullDuplex(%struct.et131x_adapter* %191)
  br label %196

193:                                              ; preds = %185
  %194 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %195 = call i32 @TPAL_SetPhy10Force(%struct.et131x_adapter* %194)
  br label %196

196:                                              ; preds = %193, %190
  br label %197

197:                                              ; preds = %196, %182
  br label %222

198:                                              ; preds = %173
  %199 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %205 = call i32 @TPAL_SetPhy100HalfDuplex(%struct.et131x_adapter* %204)
  br label %218

206:                                              ; preds = %198
  %207 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %208 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %213 = call i32 @TPAL_SetPhy100FullDuplex(%struct.et131x_adapter* %212)
  br label %217

214:                                              ; preds = %206
  %215 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %216 = call i32 @TPAL_SetPhy100Force(%struct.et131x_adapter* %215)
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217, %203
  br label %222

219:                                              ; preds = %173
  %220 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %221 = call i32 @TPAL_SetPhy1000FullDuplex(%struct.et131x_adapter* %220)
  br label %222

222:                                              ; preds = %173, %219, %218, %197
  %223 = load i32, i32* %4, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %222, %117
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @MiRead(%struct.et131x_adapter*, i32, i32*) #1

declare dso_local i64 @offsetof(i32, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i32 @MiWrite(%struct.et131x_adapter*, i32, i32) #1

declare dso_local i32 @ET1310_PhyAccessMiBit(%struct.et131x_adapter*, i32, i32, i32, i32*) #1

declare dso_local i32 @ET1310_PhyAutoNeg(%struct.et131x_adapter*, i32) #1

declare dso_local i32 @TPAL_SetPhy10HalfDuplex(%struct.et131x_adapter*) #1

declare dso_local i32 @TPAL_SetPhy10FullDuplex(%struct.et131x_adapter*) #1

declare dso_local i32 @TPAL_SetPhy10Force(%struct.et131x_adapter*) #1

declare dso_local i32 @TPAL_SetPhy100HalfDuplex(%struct.et131x_adapter*) #1

declare dso_local i32 @TPAL_SetPhy100FullDuplex(%struct.et131x_adapter*) #1

declare dso_local i32 @TPAL_SetPhy100Force(%struct.et131x_adapter*) #1

declare dso_local i32 @TPAL_SetPhy1000FullDuplex(%struct.et131x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
