; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfIdlRsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfIdlRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.zsHpPriv*, i64, %struct.TYPE_5__ }
%struct.zsHpPriv = type { i64, i64, i32, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32* }

@ZM_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Error IdlRsp because none cmd!!\0A\00", align 1
@ZM_OID_READ = common dso_local global i64 0, align 8
@ZM_OID_FLASH_CHKSUM = common dso_local global i64 0, align 8
@ZM_OID_FLASH_READ = common dso_local global i64 0, align 8
@ZM_OID_FLASH_PROGRAM = common dso_local global i64 0, align 8
@ZM_OID_WRITE = common dso_local global i64 0, align 8
@ZM_OID_TALLY = common dso_local global i64 0, align 8
@ZM_OID_TALLY_APD = common dso_local global i64 0, align 8
@ZM_OID_DKTX_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"src = zm_OID_DKTX_STATUS\00", align 1
@ZM_CMD_SET_FREQUENCY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Set Frequency fail : ret = \00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Retry to issue the frequency change command(cold reset) counter = \00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\0A\0A\0A\0A  Fail twice cold reset \0A\0A\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Set Frequency fail 2 : ret = \00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"2 Retry to issue the frequency change command(cold reset) counter = \00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\0A\0A\0A\0A  2 Fail twice cold reset \0A\0A\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c" return complete, ret = \00", align 1
@ZM_CMD_SET_KEY = common dso_local global i64 0, align 8
@ZM_CWM_READ = common dso_local global i64 0, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"CWM rsp[1]=\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"CWM rsp[2]=\00", align 1
@ZM_MAC_READ = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"MAC rsp[1]=\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"MAC rsp[2]=\00", align 1
@ZM_MAC_REG_MAC_ADDR_L = common dso_local global i32 0, align 4
@ZM_MAC_REG_MAC_ADDR_H = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"ledMode[0]=\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ledMode[1]=\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"RegDomain rsp=\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"OpFlags+EepMisc=\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"OTUS 1x2\00", align 1
@ZM_HP_CAP_11N_ONE_TX_STREAM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"OTUS 2x2\00", align 1
@ZM_HP_CAP_5G = common dso_local global i32 0, align 4
@ZM_HP_CAP_2G = common dso_local global i32 0, align 4
@NO_ENUMRD = common dso_local global i64 0, align 8
@ZM_EEPROM_READ = common dso_local global i64 0, align 8
@ZM_HAL_MAX_EEPROM_PRQ = common dso_local global i64 0, align 8
@ZM_HAL_MAX_EEPROM_REQ = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"MAC [1]=\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"MAC [2]=\00", align 1
@ZM_EEPROM_WRITE = common dso_local global i64 0, align 8
@ZM_ANI_READ = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"ANI rsp[1]=\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"ANI rsp[2]=\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"ANI rsp[3]=\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"ANI rsp[4]=\00", align 1
@ZM_CMD_ECHO = common dso_local global i64 0, align 8
@ZM_OID_FW_DL_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfIdlRsp(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca %struct.zsHpPriv*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca [6 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %30 = load i32, i32* @ZM_MAX_CMD_SIZE, align 4
  %31 = sdiv i32 %30, 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %7, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %8, align 8
  %35 = load i32, i32* @ZM_MAX_CMD_SIZE, align 4
  %36 = sdiv i32 %35, 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @zmw_get_wlan_dev(i32* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.zsHpPriv*, %struct.zsHpPriv** %42, align 8
  store %struct.zsHpPriv* %43, %struct.zsHpPriv** %19, align 8
  %44 = call i32 (...) @zmw_declare_for_critical_section()
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @zmw_enter_critical_section(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @zfGetCmd(i32* %47, i32* %34, i64* %9, i64* %10, i32** %11)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %3
  %52 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @zmw_leave_critical_section(i32* %53)
  store i32 1, i32* %20, align 4
  br label %870

55:                                               ; preds = %3
  %56 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %57 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %60 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %55
  store i64 1, i64* %15, align 8
  %64 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %65 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %64, i32 0, i32 22
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %68 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %13, align 8
  store i64 0, i64* %16, align 8
  br label %73

73:                                               ; preds = %93, %63
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %13, align 8
  %76 = ashr i64 %75, 2
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %80 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %79, i32 0, i32 22
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %83 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds i32, i32* %38, i64 %91
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %78
  %94 = load i64, i64* %16, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %16, align 8
  br label %73

96:                                               ; preds = %73
  br label %100

97:                                               ; preds = %55
  %98 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %99 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %98, i32 0, i32 21
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %96
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @zmw_leave_critical_section(i32* %101)
  %103 = load i64, i64* %15, align 8
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32*, i32** %4, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @zfIdlCmd(i32* %106, i32* %38, i64 %107)
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @ZM_OID_READ, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ZM_PERFORMANCE_REG(i32* %114, i32 1144620, i32 %117)
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %34, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @zfwDbgReadRegDone(i32* %119, i32 %121, i32 %124)
  br label %869

126:                                              ; preds = %109
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @ZM_OID_FLASH_CHKSUM, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32*, i32** %4, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = call i32 @zfwDbgGetFlashChkSumDone(i32* %131, i32* %133)
  br label %868

135:                                              ; preds = %126
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* @ZM_OID_FLASH_READ, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 255
  store i32 %143, i32* %21, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %34, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %21, align 4
  %150 = call i32 @zfwDbgReadFlashDone(i32* %144, i32 %146, i32* %148, i32 %149)
  br label %867

151:                                              ; preds = %135
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* @ZM_OID_FLASH_PROGRAM, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %866

156:                                              ; preds = %151
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* @ZM_OID_WRITE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i32*, i32** %4, align 8
  %162 = getelementptr inbounds i32, i32* %34, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds i32, i32* %34, i64 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @zfwDbgWriteRegDone(i32* %161, i32 %163, i32 %165)
  br label %865

167:                                              ; preds = %156
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* @ZM_OID_TALLY, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32*, i32** %4, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @zfCollectHWTally(i32* %172, i32* %173, i32 0)
  br label %864

175:                                              ; preds = %167
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* @ZM_OID_TALLY_APD, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load i32*, i32** %4, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @zfCollectHWTally(i32* %180, i32* %181, i32 1)
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @zfwDbgReadTallyDone(i32* %183)
  br label %863

185:                                              ; preds = %175
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* @ZM_OID_DKTX_STATUS, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %191 = load i32*, i32** %4, align 8
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @zfwDbgQueryHwTxBusyDone(i32* %191, i32 %194)
  br label %862

196:                                              ; preds = %185
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* @ZM_CMD_SET_FREQUENCY, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %431

200:                                              ; preds = %196
  %201 = load i32*, i32** %5, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %263

212:                                              ; preds = %206, %200
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %215)
  %217 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %218 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 2
  br i1 %220, label %221, label %255

221:                                              ; preds = %212
  %222 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %223 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %224, 2
  br i1 %225, label %226, label %246

226:                                              ; preds = %221
  %227 = load i32*, i32** %4, align 8
  %228 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %229 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %228, i32 0, i32 20
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %232 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %231, i32 0, i32 19
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %235 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %234, i32 0, i32 18
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @zfHpSetFrequencyEx(i32* %227, i32 %230, i32 %233, i32 %236, i32 2)
  %238 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %239 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 8
  %242 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %243 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %244)
  br label %254

246:                                              ; preds = %221
  %247 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %248 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %249 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %248, i32 0, i32 5
  store i32 0, i32* %249, align 4
  %250 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %251 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %250, i32 0, i32 4
  store i32 0, i32* %251, align 8
  %252 = load i32*, i32** %4, align 8
  %253 = call i32 @zfCoreSetFrequencyComplete(i32* %252)
  br label %254

254:                                              ; preds = %246, %226
  br label %262

255:                                              ; preds = %212
  %256 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %257 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %256, i32 0, i32 5
  store i32 1, i32* %257, align 4
  %258 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %259 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %258, i32 0, i32 4
  store i32 0, i32* %259, align 8
  %260 = load i32*, i32** %4, align 8
  %261 = call i32 @zfCoreSetFrequencyComplete(i32* %260)
  br label %262

262:                                              ; preds = %255, %254
  br label %358

263:                                              ; preds = %206
  %264 = load i32*, i32** %5, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 2
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %320

269:                                              ; preds = %263
  %270 = load i32*, i32** %5, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %272)
  %274 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %275 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %278, label %312

278:                                              ; preds = %269
  %279 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %280 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %281, 1
  br i1 %282, label %283, label %303

283:                                              ; preds = %278
  %284 = load i32*, i32** %4, align 8
  %285 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %286 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %285, i32 0, i32 20
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %289 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %288, i32 0, i32 19
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %292 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %291, i32 0, i32 18
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @zfHpSetFrequencyEx(i32* %284, i32 %287, i32 %290, i32 %293, i32 2)
  %295 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %296 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  %299 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %300 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %301)
  br label %311

303:                                              ; preds = %278
  %304 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %305 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %306 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %305, i32 0, i32 5
  store i32 0, i32* %306, align 4
  %307 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %308 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %307, i32 0, i32 4
  store i32 0, i32* %308, align 8
  %309 = load i32*, i32** %4, align 8
  %310 = call i32 @zfCoreSetFrequencyComplete(i32* %309)
  br label %311

311:                                              ; preds = %303, %283
  br label %319

312:                                              ; preds = %269
  %313 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %314 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %313, i32 0, i32 5
  store i32 0, i32* %314, align 4
  %315 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %316 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %315, i32 0, i32 4
  store i32 0, i32* %316, align 8
  %317 = load i32*, i32** %4, align 8
  %318 = call i32 @zfCoreSetFrequencyComplete(i32* %317)
  br label %319

319:                                              ; preds = %312, %311
  br label %357

320:                                              ; preds = %263
  %321 = load i32*, i32** %5, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %323)
  %325 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %326 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %325, i32 0, i32 17
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %350

329:                                              ; preds = %320
  %330 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %331 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %330, i32 0, i32 15
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %350

334:                                              ; preds = %329
  %335 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %336 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %335, i32 0, i32 16
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %334
  store i32 512, i32* %23, align 4
  %340 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %341 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* %23, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %23, align 4
  %345 = load i32*, i32** %4, align 8
  %346 = load i32, i32* %23, align 4
  %347 = call i32 @zfDelayWriteInternalReg(i32* %345, i32 1858016, i32 %346)
  %348 = load i32*, i32** %4, align 8
  %349 = call i32 @zfFlushDelayWrite(i32* %348)
  br label %350

350:                                              ; preds = %339, %334, %329, %320
  %351 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %352 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %351, i32 0, i32 5
  store i32 0, i32* %352, align 4
  %353 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %354 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %353, i32 0, i32 4
  store i32 0, i32* %354, align 8
  %355 = load i32*, i32** %4, align 8
  %356 = call i32 @zfCoreSetFrequencyComplete(i32* %355)
  br label %357

357:                                              ; preds = %350, %319
  br label %358

358:                                              ; preds = %357, %262
  %359 = load i32*, i32** %5, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = ashr i32 %361, 19
  %363 = and i32 %362, 511
  store i32 %363, i32* %17, align 4
  %364 = load i32, i32* %17, align 4
  %365 = and i32 %364, 256
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %358
  %368 = load i32, i32* %17, align 4
  %369 = xor i32 %368, 511
  %370 = add nsw i32 %369, 1
  %371 = sub nsw i32 0, %370
  %372 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %371, i32* %372, align 16
  br label %376

373:                                              ; preds = %358
  %374 = load i32, i32* %17, align 4
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %374, i32* %375, align 16
  br label %376

376:                                              ; preds = %373, %367
  %377 = load i32*, i32** %5, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 3
  %379 = load i32, i32* %378, align 4
  %380 = ashr i32 %379, 19
  %381 = and i32 %380, 511
  store i32 %381, i32* %17, align 4
  %382 = load i32, i32* %17, align 4
  %383 = and i32 %382, 256
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %376
  %386 = load i32, i32* %17, align 4
  %387 = xor i32 %386, 511
  %388 = add nsw i32 %387, 1
  %389 = sub nsw i32 0, %388
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %389, i32* %390, align 4
  br label %394

391:                                              ; preds = %376
  %392 = load i32, i32* %17, align 4
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %392, i32* %393, align 4
  br label %394

394:                                              ; preds = %391, %385
  %395 = load i32*, i32** %5, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 5
  %397 = load i32, i32* %396, align 4
  %398 = ashr i32 %397, 23
  %399 = and i32 %398, 511
  store i32 %399, i32* %17, align 4
  %400 = load i32, i32* %17, align 4
  %401 = and i32 %400, 256
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %394
  %404 = load i32, i32* %17, align 4
  %405 = xor i32 %404, 511
  %406 = add nsw i32 %405, 1
  %407 = sub nsw i32 0, %406
  %408 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %407, i32* %408, align 8
  br label %412

409:                                              ; preds = %394
  %410 = load i32, i32* %17, align 4
  %411 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %410, i32* %411, align 8
  br label %412

412:                                              ; preds = %409, %403
  %413 = load i32*, i32** %5, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 6
  %415 = load i32, i32* %414, align 4
  %416 = ashr i32 %415, 23
  %417 = and i32 %416, 511
  store i32 %417, i32* %17, align 4
  %418 = load i32, i32* %17, align 4
  %419 = and i32 %418, 256
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %427

421:                                              ; preds = %412
  %422 = load i32, i32* %17, align 4
  %423 = xor i32 %422, 511
  %424 = add nsw i32 %423, 1
  %425 = sub nsw i32 0, %424
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %425, i32* %426, align 4
  br label %430

427:                                              ; preds = %412
  %428 = load i32, i32* %17, align 4
  %429 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %428, i32* %429, align 4
  br label %430

430:                                              ; preds = %427, %421
  br label %861

431:                                              ; preds = %196
  %432 = load i64, i64* %10, align 8
  %433 = load i64, i64* @ZM_CMD_SET_KEY, align 8
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %435, label %438

435:                                              ; preds = %431
  %436 = load i32*, i32** %4, align 8
  %437 = call i32 @zfCoreSetKeyComplete(i32* %436)
  br label %860

438:                                              ; preds = %431
  %439 = load i64, i64* %10, align 8
  %440 = load i64, i64* @ZM_CWM_READ, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %442, label %462

442:                                              ; preds = %438
  %443 = load i32, i32* @ZM_LV_0, align 4
  %444 = load i32*, i32** %5, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 1
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @zm_msg2_mm(i32 %443, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %446)
  %448 = load i32, i32* @ZM_LV_0, align 4
  %449 = load i32*, i32** %5, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 2
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @zm_msg2_mm(i32 %448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %451)
  %453 = load i32*, i32** %4, align 8
  %454 = load i32*, i32** %5, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 1
  %456 = load i32, i32* %455, align 4
  %457 = load i32*, i32** %5, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 2
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @zfCwmIsExtChanBusy(i32 %456, i32 %459)
  %461 = call i32 @zfCoreCwmBusy(i32* %453, i32 %460)
  br label %859

462:                                              ; preds = %438
  %463 = load i64, i64* %10, align 8
  %464 = load i64, i64* @ZM_MAC_READ, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %678

466:                                              ; preds = %462
  %467 = load i32, i32* @ZM_LV_0, align 4
  %468 = load i32*, i32** %5, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 1
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @zm_msg2_mm(i32 %467, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %470)
  %472 = load i32, i32* @ZM_LV_0, align 4
  %473 = load i32*, i32** %5, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 2
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @zm_msg2_mm(i32 %472, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %475)
  %477 = load i32*, i32** %5, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 1
  %479 = load i32, i32* %478, align 4
  %480 = and i32 %479, 255
  %481 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  store i32 %480, i32* %481, align 16
  %482 = load i32*, i32** %5, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 1
  %484 = load i32, i32* %483, align 4
  %485 = ashr i32 %484, 8
  %486 = and i32 %485, 255
  %487 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 1
  store i32 %486, i32* %487, align 4
  %488 = load i32*, i32** %5, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 1
  %490 = load i32, i32* %489, align 4
  %491 = ashr i32 %490, 16
  %492 = and i32 %491, 255
  %493 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 2
  store i32 %492, i32* %493, align 8
  %494 = load i32*, i32** %5, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 1
  %496 = load i32, i32* %495, align 4
  %497 = ashr i32 %496, 24
  %498 = and i32 %497, 255
  %499 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 3
  store i32 %498, i32* %499, align 4
  %500 = load i32*, i32** %5, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 2
  %502 = load i32, i32* %501, align 4
  %503 = and i32 %502, 255
  %504 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 4
  store i32 %503, i32* %504, align 16
  %505 = load i32*, i32** %5, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 2
  %507 = load i32, i32* %506, align 4
  %508 = ashr i32 %507, 8
  %509 = and i32 %508, 255
  %510 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 5
  store i32 %509, i32* %510, align 4
  %511 = load i32*, i32** %4, align 8
  %512 = load i32, i32* @ZM_MAC_REG_MAC_ADDR_L, align 4
  %513 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 3
  %514 = load i32, i32* %513, align 4
  %515 = shl i32 %514, 24
  %516 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 2
  %517 = load i32, i32* %516, align 8
  %518 = shl i32 %517, 16
  %519 = or i32 %515, %518
  %520 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 1
  %521 = load i32, i32* %520, align 4
  %522 = shl i32 %521, 8
  %523 = or i32 %519, %522
  %524 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  %525 = load i32, i32* %524, align 16
  %526 = or i32 %523, %525
  %527 = call i32 @zfDelayWriteInternalReg(i32* %511, i32 %512, i32 %526)
  %528 = load i32*, i32** %4, align 8
  %529 = load i32, i32* @ZM_MAC_REG_MAC_ADDR_H, align 4
  %530 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 5
  %531 = load i32, i32* %530, align 4
  %532 = shl i32 %531, 8
  %533 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 4
  %534 = load i32, i32* %533, align 16
  %535 = or i32 %532, %534
  %536 = call i32 @zfDelayWriteInternalReg(i32* %528, i32 %529, i32 %535)
  %537 = load i32*, i32** %4, align 8
  %538 = call i32 @zfFlushDelayWrite(i32* %537)
  %539 = load i32*, i32** %5, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 5
  %541 = load i32, i32* %540, align 4
  %542 = and i32 %541, 65535
  %543 = sext i32 %542 to i64
  %544 = trunc i64 %543 to i32
  %545 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 2
  %547 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %546, i32 0, i32 0
  %548 = load i32*, i32** %547, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 0
  store i32 %544, i32* %549, align 4
  %550 = load i32*, i32** %5, align 8
  %551 = getelementptr inbounds i32, i32* %550, i64 5
  %552 = load i32, i32* %551, align 4
  %553 = ashr i32 %552, 16
  %554 = sext i32 %553 to i64
  %555 = trunc i64 %554 to i32
  %556 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %557, i32 0, i32 0
  %559 = load i32*, i32** %558, align 8
  %560 = getelementptr inbounds i32, i32* %559, i64 1
  store i32 %555, i32* %560, align 4
  %561 = load i32, i32* @ZM_LV_0, align 4
  %562 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %563 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %562, i32 0, i32 2
  %564 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %563, i32 0, i32 0
  %565 = load i32*, i32** %564, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 0
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @zm_msg2_mm(i32 %561, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %567)
  %569 = load i32, i32* @ZM_LV_0, align 4
  %570 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %571 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %570, i32 0, i32 2
  %572 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %571, i32 0, i32 0
  %573 = load i32*, i32** %572, align 8
  %574 = getelementptr inbounds i32, i32* %573, i64 1
  %575 = load i32, i32* %574, align 4
  %576 = call i32 @zm_msg2_mm(i32 %569, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %575)
  %577 = load i32, i32* @ZM_LV_0, align 4
  %578 = load i32*, i32** %5, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 3
  %580 = load i32, i32* %579, align 4
  %581 = call i32 @zm_msg2_mm(i32 %577, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %580)
  %582 = load i32, i32* @ZM_LV_0, align 4
  %583 = load i32*, i32** %5, align 8
  %584 = getelementptr inbounds i32, i32* %583, i64 4
  %585 = load i32, i32* %584, align 4
  %586 = call i32 @zm_msg2_mm(i32 %582, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %585)
  %587 = load i32*, i32** %5, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 4
  %589 = load i32, i32* %588, align 4
  %590 = ashr i32 %589, 16
  %591 = and i32 %590, 255
  %592 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %593 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %592, i32 0, i32 7
  store i32 %591, i32* %593, align 4
  %594 = load i32*, i32** %5, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 2
  %596 = load i32, i32* %595, align 4
  %597 = ashr i32 %596, 24
  %598 = icmp eq i32 %597, 1
  br i1 %598, label %599, label %607

599:                                              ; preds = %466
  %600 = load i32, i32* @ZM_LV_0, align 4
  %601 = call i32 @zm_msg0_mm(i32 %600, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %602 = load i32, i32* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 4
  %603 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %604 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %603, i32 0, i32 14
  %605 = load i32, i32* %604, align 4
  %606 = or i32 %605, %602
  store i32 %606, i32* %604, align 4
  br label %610

607:                                              ; preds = %466
  %608 = load i32, i32* @ZM_LV_0, align 4
  %609 = call i32 @zm_msg0_mm(i32 %608, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %610

610:                                              ; preds = %607, %599
  %611 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %612 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %611, i32 0, i32 7
  %613 = load i32, i32* %612, align 4
  %614 = and i32 %613, 1
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %622

616:                                              ; preds = %610
  %617 = load i32, i32* @ZM_HP_CAP_5G, align 4
  %618 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %619 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %618, i32 0, i32 14
  %620 = load i32, i32* %619, align 4
  %621 = or i32 %620, %617
  store i32 %621, i32* %619, align 4
  br label %622

622:                                              ; preds = %616, %610
  %623 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %624 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %623, i32 0, i32 7
  %625 = load i32, i32* %624, align 4
  %626 = and i32 %625, 2
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %634

628:                                              ; preds = %622
  %629 = load i32, i32* @ZM_HP_CAP_2G, align 4
  %630 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %631 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %630, i32 0, i32 14
  %632 = load i32, i32* %631, align 4
  %633 = or i32 %632, %629
  store i32 %633, i32* %631, align 4
  br label %634

634:                                              ; preds = %628, %622
  %635 = load i32*, i32** %5, align 8
  %636 = getelementptr inbounds i32, i32* %635, i64 3
  %637 = load i32, i32* %636, align 4
  %638 = and i32 %637, 32768
  %639 = ashr i32 %638, 15
  store i32 %639, i32* %25, align 4
  %640 = load i32*, i32** %5, align 8
  %641 = getelementptr inbounds i32, i32* %640, i64 3
  %642 = load i32, i32* %641, align 4
  %643 = and i32 %642, 16384
  %644 = ashr i32 %643, 14
  store i32 %644, i32* %26, align 4
  %645 = load i32*, i32** %5, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 3
  %647 = load i32, i32* %646, align 4
  %648 = and i32 %647, 16383
  %649 = sext i32 %648 to i64
  store i64 %649, i64* %27, align 8
  %650 = load i32*, i32** %5, align 8
  %651 = getelementptr inbounds i32, i32* %650, i64 3
  %652 = load i32, i32* %651, align 4
  %653 = icmp ne i32 %652, -1
  br i1 %653, label %654, label %670

654:                                              ; preds = %634
  %655 = load i32, i32* %25, align 4
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %661

657:                                              ; preds = %654
  %658 = load i32*, i32** %4, align 8
  %659 = load i64, i64* %27, align 8
  %660 = call i32 @zfHpGetRegulationTablefromCountry(i32* %658, i64 %659)
  br label %665

661:                                              ; preds = %654
  %662 = load i32*, i32** %4, align 8
  %663 = load i64, i64* %27, align 8
  %664 = call i32 @zfHpGetRegulationTablefromRegionCode(i32* %662, i64 %663)
  br label %665

665:                                              ; preds = %661, %657
  %666 = load i32, i32* %26, align 4
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %669

668:                                              ; preds = %665
  br label %669

669:                                              ; preds = %668, %665
  br label %674

670:                                              ; preds = %634
  %671 = load i32*, i32** %4, align 8
  %672 = load i64, i64* @NO_ENUMRD, align 8
  %673 = call i32 @zfHpGetRegulationTablefromRegionCode(i32* %671, i64 %672)
  br label %674

674:                                              ; preds = %670, %669
  %675 = load i32*, i32** %4, align 8
  %676 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  %677 = call i32 @zfCoreMacAddressNotify(i32* %675, i32* %676)
  br label %858

678:                                              ; preds = %462
  %679 = load i64, i64* %10, align 8
  %680 = load i64, i64* @ZM_EEPROM_READ, align 8
  %681 = icmp eq i64 %679, %680
  br i1 %681, label %682, label %745

682:                                              ; preds = %678
  store i64 0, i64* %16, align 8
  br label %683

683:                                              ; preds = %708, %682
  %684 = load i64, i64* %16, align 8
  %685 = load i64, i64* @ZM_HAL_MAX_EEPROM_PRQ, align 8
  %686 = icmp slt i64 %684, %685
  br i1 %686, label %687, label %711

687:                                              ; preds = %683
  %688 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %689 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %688, i32 0, i32 8
  %690 = load i32, i32* %689, align 8
  %691 = icmp slt i32 %690, 1024
  br i1 %691, label %692, label %707

692:                                              ; preds = %687
  %693 = load i32*, i32** %5, align 8
  %694 = load i64, i64* %16, align 8
  %695 = add nsw i64 %694, 1
  %696 = getelementptr inbounds i32, i32* %693, i64 %695
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %699 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %698, i32 0, i32 9
  %700 = load i32*, i32** %699, align 8
  %701 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %702 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %701, i32 0, i32 8
  %703 = load i32, i32* %702, align 8
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %702, align 8
  %705 = sext i32 %703 to i64
  %706 = getelementptr inbounds i32, i32* %700, i64 %705
  store i32 %697, i32* %706, align 4
  br label %707

707:                                              ; preds = %692, %687
  br label %708

708:                                              ; preds = %707
  %709 = load i64, i64* %16, align 8
  %710 = add nsw i64 %709, 1
  store i64 %710, i64* %16, align 8
  br label %683

711:                                              ; preds = %683
  %712 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %713 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %712, i32 0, i32 8
  %714 = load i32, i32* %713, align 8
  %715 = sext i32 %714 to i64
  %716 = load i64, i64* @ZM_HAL_MAX_EEPROM_REQ, align 8
  %717 = load i64, i64* @ZM_HAL_MAX_EEPROM_PRQ, align 8
  %718 = mul nsw i64 %716, %717
  %719 = icmp eq i64 %715, %718
  br i1 %719, label %720, label %737

720:                                              ; preds = %711
  %721 = load i32, i32* @ZM_LV_0, align 4
  %722 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %723 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %722, i32 0, i32 9
  %724 = load i32*, i32** %723, align 8
  %725 = getelementptr inbounds i32, i32* %724, i64 131
  %726 = load i32, i32* %725, align 4
  %727 = call i32 @zm_msg2_mm(i32 %721, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %726)
  %728 = load i32, i32* @ZM_LV_0, align 4
  %729 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %730 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %729, i32 0, i32 9
  %731 = load i32*, i32** %730, align 8
  %732 = getelementptr inbounds i32, i32* %731, i64 132
  %733 = load i32, i32* %732, align 4
  %734 = call i32 @zm_msg2_mm(i32 %728, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %733)
  %735 = load i32*, i32** %4, align 8
  %736 = call i32 @zfCoreHalInitComplete(i32* %735)
  br label %744

737:                                              ; preds = %711
  %738 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %739 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %738, i32 0, i32 13
  %740 = load i32, i32* %739, align 8
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %739, align 8
  %742 = load i32*, i32** %4, align 8
  %743 = call i32 @zfHpLoadEEPROMFromFW(i32* %742)
  br label %744

744:                                              ; preds = %737, %720
  br label %857

745:                                              ; preds = %678
  %746 = load i64, i64* %10, align 8
  %747 = load i64, i64* @ZM_EEPROM_WRITE, align 8
  %748 = icmp eq i64 %746, %747
  br i1 %748, label %749, label %756

749:                                              ; preds = %745
  %750 = load i32*, i32** %4, align 8
  %751 = getelementptr inbounds i32, i32* %34, i64 1
  %752 = load i32, i32* %751, align 4
  %753 = getelementptr inbounds i32, i32* %34, i64 2
  %754 = load i32, i32* %753, align 8
  %755 = call i32 @zfwDbgWriteEepromDone(i32* %750, i32 %752, i32 %754)
  br label %856

756:                                              ; preds = %745
  %757 = load i64, i64* %10, align 8
  %758 = load i64, i64* @ZM_ANI_READ, align 8
  %759 = icmp eq i64 %757, %758
  br i1 %759, label %760, label %824

760:                                              ; preds = %756
  %761 = load i32, i32* @ZM_LV_0, align 4
  %762 = load i32*, i32** %5, align 8
  %763 = getelementptr inbounds i32, i32* %762, i64 1
  %764 = load i32, i32* %763, align 4
  %765 = call i32 @zm_msg2_mm(i32 %761, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %764)
  %766 = load i32, i32* @ZM_LV_0, align 4
  %767 = load i32*, i32** %5, align 8
  %768 = getelementptr inbounds i32, i32* %767, i64 2
  %769 = load i32, i32* %768, align 4
  %770 = call i32 @zm_msg2_mm(i32 %766, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %769)
  %771 = load i32, i32* @ZM_LV_0, align 4
  %772 = load i32*, i32** %5, align 8
  %773 = getelementptr inbounds i32, i32* %772, i64 3
  %774 = load i32, i32* %773, align 4
  %775 = call i32 @zm_msg2_mm(i32 %771, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %774)
  %776 = load i32, i32* @ZM_LV_0, align 4
  %777 = load i32*, i32** %5, align 8
  %778 = getelementptr inbounds i32, i32* %777, i64 4
  %779 = load i32, i32* %778, align 4
  %780 = call i32 @zm_msg2_mm(i32 %776, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %779)
  %781 = load i32*, i32** %5, align 8
  %782 = getelementptr inbounds i32, i32* %781, i64 1
  %783 = load i32, i32* %782, align 4
  %784 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %785 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %784, i32 0, i32 10
  %786 = load i32, i32* %785, align 8
  %787 = add nsw i32 %786, %783
  store i32 %787, i32* %785, align 8
  %788 = load i32*, i32** %5, align 8
  %789 = getelementptr inbounds i32, i32* %788, i64 2
  %790 = load i32, i32* %789, align 4
  %791 = load %struct.zsHpPriv*, %struct.zsHpPriv** %19, align 8
  %792 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %791, i32 0, i32 11
  %793 = load i32, i32* %792, align 4
  %794 = add nsw i32 %793, %790
  store i32 %794, i32* %792, align 4
  store i32 100000, i32* %28, align 4
  %795 = load i32, i32* %28, align 4
  %796 = load i32*, i32** %5, align 8
  %797 = getelementptr inbounds i32, i32* %796, i64 1
  %798 = load i32, i32* %797, align 4
  %799 = icmp sgt i32 %795, %798
  br i1 %799, label %800, label %807

800:                                              ; preds = %760
  %801 = load i32, i32* %28, align 4
  %802 = load i32*, i32** %5, align 8
  %803 = getelementptr inbounds i32, i32* %802, i64 1
  %804 = load i32, i32* %803, align 4
  %805 = sub nsw i32 %801, %804
  %806 = sdiv i32 %805, 100
  store i32 %806, i32* %29, align 4
  br label %808

807:                                              ; preds = %760
  store i32 0, i32* %29, align 4
  br label %808

808:                                              ; preds = %807, %800
  %809 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %810 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %809, i32 0, i32 1
  %811 = load i64, i64* %810, align 8
  %812 = icmp ne i64 %811, 0
  br i1 %812, label %813, label %823

813:                                              ; preds = %808
  %814 = load i32*, i32** %4, align 8
  %815 = load i32, i32* %29, align 4
  %816 = load i32*, i32** %5, align 8
  %817 = getelementptr inbounds i32, i32* %816, i64 3
  %818 = load i32, i32* %817, align 4
  %819 = load i32*, i32** %5, align 8
  %820 = getelementptr inbounds i32, i32* %819, i64 4
  %821 = load i32, i32* %820, align 4
  %822 = call i32 @zfHpAniArPoll(i32* %814, i32 %815, i32 %818, i32 %821)
  br label %823

823:                                              ; preds = %813, %808
  br label %855

824:                                              ; preds = %756
  %825 = load i64, i64* %10, align 8
  %826 = load i64, i64* @ZM_CMD_ECHO, align 8
  %827 = icmp eq i64 %825, %826
  br i1 %827, label %828, label %846

828:                                              ; preds = %824
  %829 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %830 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %829, i32 0, i32 0
  %831 = load %struct.zsHpPriv*, %struct.zsHpPriv** %830, align 8
  %832 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %831, i32 0, i32 12
  %833 = load i64, i64* %832, align 8
  %834 = icmp ne i64 %833, 0
  br i1 %834, label %835, label %842

835:                                              ; preds = %828
  %836 = load i32*, i32** %4, align 8
  %837 = call i32 @zfCoreHalInitComplete(i32* %836)
  %838 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %839 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %838, i32 0, i32 0
  %840 = load %struct.zsHpPriv*, %struct.zsHpPriv** %839, align 8
  %841 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %840, i32 0, i32 12
  store i64 0, i64* %841, align 8
  br label %845

842:                                              ; preds = %828
  %843 = load i32*, i32** %4, align 8
  %844 = call i32 @zfHpLoadEEPROMFromFW(i32* %843)
  br label %845

845:                                              ; preds = %842, %835
  br label %854

846:                                              ; preds = %824
  %847 = load i64, i64* %10, align 8
  %848 = load i64, i64* @ZM_OID_FW_DL_INIT, align 8
  %849 = icmp eq i64 %847, %848
  br i1 %849, label %850, label %853

850:                                              ; preds = %846
  %851 = load i32*, i32** %4, align 8
  %852 = call i32 @zfwDbgDownloadFwInitDone(i32* %851)
  br label %853

853:                                              ; preds = %850, %846
  br label %854

854:                                              ; preds = %853, %845
  br label %855

855:                                              ; preds = %854, %823
  br label %856

856:                                              ; preds = %855, %749
  br label %857

857:                                              ; preds = %856, %744
  br label %858

858:                                              ; preds = %857, %674
  br label %859

859:                                              ; preds = %858, %442
  br label %860

860:                                              ; preds = %859, %435
  br label %861

861:                                              ; preds = %860, %430
  br label %862

862:                                              ; preds = %861, %189
  br label %863

863:                                              ; preds = %862, %179
  br label %864

864:                                              ; preds = %863, %171
  br label %865

865:                                              ; preds = %864, %160
  br label %866

866:                                              ; preds = %865, %155
  br label %867

867:                                              ; preds = %866, %139
  br label %868

868:                                              ; preds = %867, %130
  br label %869

869:                                              ; preds = %868, %113
  store i32 1, i32* %20, align 4
  br label %870

870:                                              ; preds = %869, %51
  %871 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %871)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zmw_declare_for_critical_section(...) #2

declare dso_local i32 @zmw_enter_critical_section(i32*) #2

declare dso_local i64 @zfGetCmd(i32*, i32*, i64*, i64*, i32**) #2

declare dso_local i32 @zm_debug_msg0(i8*) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #2

declare dso_local i32 @zfIdlCmd(i32*, i32*, i64) #2

declare dso_local i32 @ZM_PERFORMANCE_REG(i32*, i32, i32) #2

declare dso_local i32 @zfwDbgReadRegDone(i32*, i32, i32) #2

declare dso_local i32 @zfwDbgGetFlashChkSumDone(i32*, i32*) #2

declare dso_local i32 @zfwDbgReadFlashDone(i32*, i32, i32*, i32) #2

declare dso_local i32 @zfwDbgWriteRegDone(i32*, i32, i32) #2

declare dso_local i32 @zfCollectHWTally(i32*, i32*, i32) #2

declare dso_local i32 @zfwDbgReadTallyDone(i32*) #2

declare dso_local i32 @zfwDbgQueryHwTxBusyDone(i32*, i32) #2

declare dso_local i32 @zm_debug_msg1(i8*, i32) #2

declare dso_local i32 @zfHpSetFrequencyEx(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @zfCoreSetFrequencyComplete(i32*) #2

declare dso_local i32 @zm_debug_msg2(i8*, i32) #2

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #2

declare dso_local i32 @zfFlushDelayWrite(i32*) #2

declare dso_local i32 @zfCoreSetKeyComplete(i32*) #2

declare dso_local i32 @zm_msg2_mm(i32, i8*, i32) #2

declare dso_local i32 @zfCoreCwmBusy(i32*, i32) #2

declare dso_local i32 @zfCwmIsExtChanBusy(i32, i32) #2

declare dso_local i32 @zm_msg0_mm(i32, i8*) #2

declare dso_local i32 @zfHpGetRegulationTablefromCountry(i32*, i64) #2

declare dso_local i32 @zfHpGetRegulationTablefromRegionCode(i32*, i64) #2

declare dso_local i32 @zfCoreMacAddressNotify(i32*, i32*) #2

declare dso_local i32 @zfCoreHalInitComplete(i32*) #2

declare dso_local i32 @zfHpLoadEEPROMFromFW(i32*) #2

declare dso_local i32 @zfwDbgWriteEepromDone(i32*, i32, i32) #2

declare dso_local i32 @zfHpAniArPoll(i32*, i32, i32, i32) #2

declare dso_local i32 @zfwDbgDownloadFwInitDone(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
