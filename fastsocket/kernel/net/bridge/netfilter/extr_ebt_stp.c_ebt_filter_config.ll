; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_stp.c_ebt_filter_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_stp.c_ebt_filter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_stp_info = type { i32, %struct.ebt_stp_config_info }
%struct.ebt_stp_config_info = type { i64, i64, i64, i32*, i32*, i64, i64, i64, i64, i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.stp_config_pdu = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@EBT_STP_FLAGS = common dso_local global i32 0, align 4
@EBT_STP_ROOTPRIO = common dso_local global i32 0, align 4
@EBT_STP_ROOTADDR = common dso_local global i32 0, align 4
@EBT_STP_ROOTCOST = common dso_local global i32 0, align 4
@EBT_STP_SENDERPRIO = common dso_local global i32 0, align 4
@EBT_STP_SENDERADDR = common dso_local global i32 0, align 4
@EBT_STP_PORT = common dso_local global i32 0, align 4
@EBT_STP_MSGAGE = common dso_local global i32 0, align 4
@EBT_STP_MAXAGE = common dso_local global i32 0, align 4
@EBT_STP_HELLOTIME = common dso_local global i32 0, align 4
@EBT_STP_FWDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_stp_info*, %struct.stp_config_pdu*)* @ebt_filter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_filter_config(%struct.ebt_stp_info* %0, %struct.stp_config_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebt_stp_info*, align 8
  %5 = alloca %struct.stp_config_pdu*, align 8
  %6 = alloca %struct.ebt_stp_config_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ebt_stp_info* %0, %struct.ebt_stp_info** %4, align 8
  store %struct.stp_config_pdu* %1, %struct.stp_config_pdu** %5, align 8
  %11 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %12 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %11, i32 0, i32 1
  store %struct.ebt_stp_config_info* %12, %struct.ebt_stp_config_info** %6, align 8
  %13 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %14 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EBT_STP_FLAGS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %21 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %24 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @EBT_STP_FLAGS, align 4
  %29 = call i64 @FWINV(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %381

32:                                               ; preds = %19, %2
  %33 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %34 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @EBT_STP_ROOTPRIO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %41 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @NR16(i32* %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %46 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %52 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br label %55

55:                                               ; preds = %49, %39
  %56 = phi i1 [ true, %39 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* @EBT_STP_ROOTPRIO, align 4
  %59 = call i64 @FWINV(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %381

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %32
  %64 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %65 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EBT_STP_ROOTADDR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 6
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %76 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %84 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %82, %89
  %91 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %92 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %90, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %74
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %71

104:                                              ; preds = %71
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* @EBT_STP_ROOTADDR, align 4
  %109 = call i64 @FWINV(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %381

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %63
  %114 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %115 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @EBT_STP_ROOTCOST, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %113
  %121 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %122 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @NR32(i32 %123)
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %127 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %120
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %133 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %131, %134
  br label %136

136:                                              ; preds = %130, %120
  %137 = phi i1 [ true, %120 ], [ %135, %130 ]
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* @EBT_STP_ROOTCOST, align 4
  %140 = call i64 @FWINV(i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %381

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %113
  %145 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %146 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @EBT_STP_SENDERPRIO, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %144
  %152 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %153 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i64 @NR16(i32* %154)
  store i64 %155, i64* %7, align 8
  %156 = load i64, i64* %7, align 8
  %157 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %158 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %151
  %162 = load i64, i64* %7, align 8
  %163 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %164 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %163, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %162, %165
  br label %167

167:                                              ; preds = %161, %151
  %168 = phi i1 [ true, %151 ], [ %166, %161 ]
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* @EBT_STP_SENDERPRIO, align 4
  %171 = call i64 @FWINV(i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %381

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %144
  %176 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %177 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @EBT_STP_SENDERADDR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %225

182:                                              ; preds = %175
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %213, %182
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 6
  br i1 %185, label %186, label %216

186:                                              ; preds = %183
  %187 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %188 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 2, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %196 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %195, i32 0, i32 9
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = xor i32 %194, %201
  %203 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %204 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %203, i32 0, i32 10
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %202, %209
  %211 = load i32, i32* %9, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %186
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %183

216:                                              ; preds = %183
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* @EBT_STP_SENDERADDR, align 4
  %221 = call i64 @FWINV(i32 %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  store i32 0, i32* %3, align 4
  br label %381

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224, %175
  %226 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %227 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @EBT_STP_PORT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %256

232:                                              ; preds = %225
  %233 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %234 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = call i64 @NR16(i32* %235)
  store i64 %236, i64* %7, align 8
  %237 = load i64, i64* %7, align 8
  %238 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %239 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %238, i32 0, i32 11
  %240 = load i64, i64* %239, align 8
  %241 = icmp slt i64 %237, %240
  br i1 %241, label %248, label %242

242:                                              ; preds = %232
  %243 = load i64, i64* %7, align 8
  %244 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %245 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %244, i32 0, i32 12
  %246 = load i64, i64* %245, align 8
  %247 = icmp sgt i64 %243, %246
  br label %248

248:                                              ; preds = %242, %232
  %249 = phi i1 [ true, %232 ], [ %247, %242 ]
  %250 = zext i1 %249 to i32
  %251 = load i32, i32* @EBT_STP_PORT, align 4
  %252 = call i64 @FWINV(i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  store i32 0, i32* %3, align 4
  br label %381

255:                                              ; preds = %248
  br label %256

256:                                              ; preds = %255, %225
  %257 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %258 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @EBT_STP_MSGAGE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %287

263:                                              ; preds = %256
  %264 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %265 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %264, i32 0, i32 4
  %266 = load i32*, i32** %265, align 8
  %267 = call i64 @NR16(i32* %266)
  store i64 %267, i64* %7, align 8
  %268 = load i64, i64* %7, align 8
  %269 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %270 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %269, i32 0, i32 13
  %271 = load i64, i64* %270, align 8
  %272 = icmp slt i64 %268, %271
  br i1 %272, label %279, label %273

273:                                              ; preds = %263
  %274 = load i64, i64* %7, align 8
  %275 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %276 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %275, i32 0, i32 14
  %277 = load i64, i64* %276, align 8
  %278 = icmp sgt i64 %274, %277
  br label %279

279:                                              ; preds = %273, %263
  %280 = phi i1 [ true, %263 ], [ %278, %273 ]
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* @EBT_STP_MSGAGE, align 4
  %283 = call i64 @FWINV(i32 %281, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  store i32 0, i32* %3, align 4
  br label %381

286:                                              ; preds = %279
  br label %287

287:                                              ; preds = %286, %256
  %288 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %289 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @EBT_STP_MAXAGE, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %318

294:                                              ; preds = %287
  %295 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %296 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %295, i32 0, i32 5
  %297 = load i32*, i32** %296, align 8
  %298 = call i64 @NR16(i32* %297)
  store i64 %298, i64* %7, align 8
  %299 = load i64, i64* %7, align 8
  %300 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %301 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %300, i32 0, i32 15
  %302 = load i64, i64* %301, align 8
  %303 = icmp slt i64 %299, %302
  br i1 %303, label %310, label %304

304:                                              ; preds = %294
  %305 = load i64, i64* %7, align 8
  %306 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %307 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %306, i32 0, i32 16
  %308 = load i64, i64* %307, align 8
  %309 = icmp sgt i64 %305, %308
  br label %310

310:                                              ; preds = %304, %294
  %311 = phi i1 [ true, %294 ], [ %309, %304 ]
  %312 = zext i1 %311 to i32
  %313 = load i32, i32* @EBT_STP_MAXAGE, align 4
  %314 = call i64 @FWINV(i32 %312, i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %310
  store i32 0, i32* %3, align 4
  br label %381

317:                                              ; preds = %310
  br label %318

318:                                              ; preds = %317, %287
  %319 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %320 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @EBT_STP_HELLOTIME, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %349

325:                                              ; preds = %318
  %326 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %327 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %326, i32 0, i32 6
  %328 = load i32*, i32** %327, align 8
  %329 = call i64 @NR16(i32* %328)
  store i64 %329, i64* %7, align 8
  %330 = load i64, i64* %7, align 8
  %331 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %332 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %331, i32 0, i32 17
  %333 = load i64, i64* %332, align 8
  %334 = icmp slt i64 %330, %333
  br i1 %334, label %341, label %335

335:                                              ; preds = %325
  %336 = load i64, i64* %7, align 8
  %337 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %338 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %337, i32 0, i32 18
  %339 = load i64, i64* %338, align 8
  %340 = icmp sgt i64 %336, %339
  br label %341

341:                                              ; preds = %335, %325
  %342 = phi i1 [ true, %325 ], [ %340, %335 ]
  %343 = zext i1 %342 to i32
  %344 = load i32, i32* @EBT_STP_HELLOTIME, align 4
  %345 = call i64 @FWINV(i32 %343, i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %341
  store i32 0, i32* %3, align 4
  br label %381

348:                                              ; preds = %341
  br label %349

349:                                              ; preds = %348, %318
  %350 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %351 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @EBT_STP_FWDD, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %380

356:                                              ; preds = %349
  %357 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %5, align 8
  %358 = getelementptr inbounds %struct.stp_config_pdu, %struct.stp_config_pdu* %357, i32 0, i32 7
  %359 = load i32*, i32** %358, align 8
  %360 = call i64 @NR16(i32* %359)
  store i64 %360, i64* %7, align 8
  %361 = load i64, i64* %7, align 8
  %362 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %363 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %362, i32 0, i32 19
  %364 = load i64, i64* %363, align 8
  %365 = icmp slt i64 %361, %364
  br i1 %365, label %372, label %366

366:                                              ; preds = %356
  %367 = load i64, i64* %7, align 8
  %368 = load %struct.ebt_stp_config_info*, %struct.ebt_stp_config_info** %6, align 8
  %369 = getelementptr inbounds %struct.ebt_stp_config_info, %struct.ebt_stp_config_info* %368, i32 0, i32 20
  %370 = load i64, i64* %369, align 8
  %371 = icmp sgt i64 %367, %370
  br label %372

372:                                              ; preds = %366, %356
  %373 = phi i1 [ true, %356 ], [ %371, %366 ]
  %374 = zext i1 %373 to i32
  %375 = load i32, i32* @EBT_STP_FWDD, align 4
  %376 = call i64 @FWINV(i32 %374, i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %372
  store i32 0, i32* %3, align 4
  br label %381

379:                                              ; preds = %372
  br label %380

380:                                              ; preds = %379, %349
  store i32 1, i32* %3, align 4
  br label %381

381:                                              ; preds = %380, %378, %347, %316, %285, %254, %223, %173, %142, %111, %61, %31
  %382 = load i32, i32* %3, align 4
  ret i32 %382
}

declare dso_local i64 @FWINV(i32, i32) #1

declare dso_local i64 @NR16(i32*) #1

declare dso_local i64 @NR32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
