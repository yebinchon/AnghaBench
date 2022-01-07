; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_rpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_recv_rpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rfcomm_rpn = type { i64, i64, i64, i64, i32, i32, i32 }

@RFCOMM_RPN_PM_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"dlci %d cr %d len 0x%x bitr 0x%x line 0x%x flow 0x%x xonc 0x%x xoffc 0x%x pm 0x%x\00", align 1
@RFCOMM_RPN_BR_115200 = common dso_local global i64 0, align 8
@RFCOMM_RPN_DATA_8 = common dso_local global i64 0, align 8
@RFCOMM_RPN_STOP_1 = common dso_local global i64 0, align 8
@RFCOMM_RPN_PARITY_NONE = common dso_local global i64 0, align 8
@RFCOMM_RPN_FLOW_NONE = common dso_local global i64 0, align 8
@RFCOMM_RPN_XON_CHAR = common dso_local global i64 0, align 8
@RFCOMM_RPN_XOFF_CHAR = common dso_local global i64 0, align 8
@RFCOMM_RPN_PM_BITRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"RPN bit rate mismatch 0x%x\00", align 1
@RFCOMM_RPN_PM_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"RPN data bits mismatch 0x%x\00", align 1
@RFCOMM_RPN_PM_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"RPN stop bits mismatch 0x%x\00", align 1
@RFCOMM_RPN_PM_PARITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"RPN parity mismatch 0x%x\00", align 1
@RFCOMM_RPN_PM_FLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"RPN flow ctrl mismatch 0x%x\00", align 1
@RFCOMM_RPN_PM_XON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"RPN XON char mismatch 0x%x\00", align 1
@RFCOMM_RPN_PM_XOFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"RPN XOFF char mismatch 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, i32, %struct.sk_buff*)* @rfcomm_recv_rpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_recv_rpn(%struct.rfcomm_session* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rfcomm_rpn*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.rfcomm_rpn*
  store %struct.rfcomm_rpn* %24, %struct.rfcomm_rpn** %10, align 8
  %25 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %26 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @__get_dlci(i32 %27)
  store i64 %28, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %29 = load i32, i32* @RFCOMM_RPN_PM_ALL, align 4
  store i32 %29, i32* %19, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %34 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %37 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %40 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %43 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %46 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %49 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %31, i32 %32, i64 %35, i32 %38, i64 %41, i64 %44, i64 %47, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %243

55:                                               ; preds = %4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i64, i64* @RFCOMM_RPN_BR_115200, align 8
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* @RFCOMM_RPN_DATA_8, align 8
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* @RFCOMM_RPN_STOP_1, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* @RFCOMM_RPN_PARITY_NONE, align 8
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* @RFCOMM_RPN_FLOW_NONE, align 8
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* @RFCOMM_RPN_XON_CHAR, align 8
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* @RFCOMM_RPN_XOFF_CHAR, align 8
  store i64 %65, i64* %18, align 8
  br label %231

66:                                               ; preds = %55
  %67 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %68 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RFCOMM_RPN_PM_BITRATE, align 4
  %71 = call i32 @cpu_to_le16(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %76 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @RFCOMM_RPN_BR_115200, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i64, i64* %12, align 8
  %83 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* @RFCOMM_RPN_BR_115200, align 8
  store i64 %84, i64* %12, align 8
  %85 = load i32, i32* @RFCOMM_RPN_PM_BITRATE, align 4
  %86 = load i32, i32* %19, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %81, %74
  br label %89

89:                                               ; preds = %88, %66
  %90 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %91 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RFCOMM_RPN_PM_DATA, align 4
  %94 = call i32 @cpu_to_le16(i32 %93)
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %89
  %98 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %99 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @__get_rpn_data_bits(i32 %100)
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* @RFCOMM_RPN_DATA_8, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load i64, i64* %13, align 8
  %107 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  %108 = load i64, i64* @RFCOMM_RPN_DATA_8, align 8
  store i64 %108, i64* %13, align 8
  %109 = load i32, i32* @RFCOMM_RPN_PM_DATA, align 4
  %110 = load i32, i32* %19, align 4
  %111 = xor i32 %110, %109
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %105, %97
  br label %113

113:                                              ; preds = %112, %89
  %114 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %115 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @RFCOMM_RPN_PM_STOP, align 4
  %118 = call i32 @cpu_to_le16(i32 %117)
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %113
  %122 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %123 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @__get_rpn_stop_bits(i32 %124)
  store i64 %125, i64* %14, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* @RFCOMM_RPN_STOP_1, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load i64, i64* %14, align 8
  %131 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %130)
  %132 = load i64, i64* @RFCOMM_RPN_STOP_1, align 8
  store i64 %132, i64* %14, align 8
  %133 = load i32, i32* @RFCOMM_RPN_PM_STOP, align 4
  %134 = load i32, i32* %19, align 4
  %135 = xor i32 %134, %133
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %129, %121
  br label %137

137:                                              ; preds = %136, %113
  %138 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %139 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @RFCOMM_RPN_PM_PARITY, align 4
  %142 = call i32 @cpu_to_le16(i32 %141)
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %137
  %146 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %147 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @__get_rpn_parity(i32 %148)
  store i64 %149, i64* %15, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* @RFCOMM_RPN_PARITY_NONE, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load i64, i64* %15, align 8
  %155 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %154)
  %156 = load i64, i64* @RFCOMM_RPN_PARITY_NONE, align 8
  store i64 %156, i64* %15, align 8
  %157 = load i32, i32* @RFCOMM_RPN_PM_PARITY, align 4
  %158 = load i32, i32* %19, align 4
  %159 = xor i32 %158, %157
  store i32 %159, i32* %19, align 4
  br label %160

160:                                              ; preds = %153, %145
  br label %161

161:                                              ; preds = %160, %137
  %162 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %163 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @RFCOMM_RPN_PM_FLOW, align 4
  %166 = call i32 @cpu_to_le16(i32 %165)
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %161
  %170 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %171 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %16, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* @RFCOMM_RPN_FLOW_NONE, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %169
  %177 = load i64, i64* %16, align 8
  %178 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %177)
  %179 = load i64, i64* @RFCOMM_RPN_FLOW_NONE, align 8
  store i64 %179, i64* %16, align 8
  %180 = load i32, i32* @RFCOMM_RPN_PM_FLOW, align 4
  %181 = load i32, i32* %19, align 4
  %182 = xor i32 %181, %180
  store i32 %182, i32* %19, align 4
  br label %183

183:                                              ; preds = %176, %169
  br label %184

184:                                              ; preds = %183, %161
  %185 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %186 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @RFCOMM_RPN_PM_XON, align 4
  %189 = call i32 @cpu_to_le16(i32 %188)
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %184
  %193 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %194 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %17, align 8
  %196 = load i64, i64* %17, align 8
  %197 = load i64, i64* @RFCOMM_RPN_XON_CHAR, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = load i64, i64* %17, align 8
  %201 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %200)
  %202 = load i64, i64* @RFCOMM_RPN_XON_CHAR, align 8
  store i64 %202, i64* %17, align 8
  %203 = load i32, i32* @RFCOMM_RPN_PM_XON, align 4
  %204 = load i32, i32* %19, align 4
  %205 = xor i32 %204, %203
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %199, %192
  br label %207

207:                                              ; preds = %206, %184
  %208 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %209 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @RFCOMM_RPN_PM_XOFF, align 4
  %212 = call i32 @cpu_to_le16(i32 %211)
  %213 = and i32 %210, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %207
  %216 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %10, align 8
  %217 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %18, align 8
  %219 = load i64, i64* %18, align 8
  %220 = load i64, i64* @RFCOMM_RPN_XOFF_CHAR, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %215
  %223 = load i64, i64* %18, align 8
  %224 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %223)
  %225 = load i64, i64* @RFCOMM_RPN_XOFF_CHAR, align 8
  store i64 %225, i64* %18, align 8
  %226 = load i32, i32* @RFCOMM_RPN_PM_XOFF, align 4
  %227 = load i32, i32* %19, align 4
  %228 = xor i32 %227, %226
  store i32 %228, i32* %19, align 4
  br label %229

229:                                              ; preds = %222, %215
  br label %230

230:                                              ; preds = %229, %207
  br label %231

231:                                              ; preds = %230, %58
  %232 = load %struct.rfcomm_session*, %struct.rfcomm_session** %6, align 8
  %233 = load i64, i64* %11, align 8
  %234 = load i64, i64* %12, align 8
  %235 = load i64, i64* %13, align 8
  %236 = load i64, i64* %14, align 8
  %237 = load i64, i64* %15, align 8
  %238 = load i64, i64* %16, align 8
  %239 = load i64, i64* %17, align 8
  %240 = load i64, i64* %18, align 8
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @rfcomm_send_rpn(%struct.rfcomm_session* %232, i32 0, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i32 %241)
  store i32 0, i32* %5, align 4
  br label %243

243:                                              ; preds = %231, %54
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i64 @__get_dlci(i32) #1

declare dso_local i32 @BT_DBG(i8*, i64, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @__get_rpn_data_bits(i32) #1

declare dso_local i64 @__get_rpn_stop_bits(i32) #1

declare dso_local i64 @__get_rpn_parity(i32) #1

declare dso_local i32 @rfcomm_send_rpn(%struct.rfcomm_session*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
