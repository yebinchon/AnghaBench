; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_stat_e4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_stat_e4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@E4_SA_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"modem not yet synchronized\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"modem initializing\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"modem synchronization failed (may be try other cmv/dsp)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown state: %x\0A\00", align 1
@UEA_SET_MODE = common dso_local global i32 0, align 4
@UEA_LOOPBACK_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"modem operational\0A\00", align 1
@signal = common dso_local global i32 0, align 4
@ATM_PHY_SIG_FOUND = common dso_local global i32 0, align 4
@E4_SA_DIAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Stat flag = 0x%x\0A\00", align 1
@E4_SA_RATE = common dso_local global i32 0, align 4
@link_rate = common dso_local global i32 0, align 4
@E4_SA_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @uea_stat_e4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_stat_e4(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  %7 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %8 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %7)
  %9 = call i32 @uea_enters(i32 %8)
  %10 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %16 = load i32, i32* @E4_SA_STAT, align 4
  %17 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %18 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %15, i32 1, i32 %16, i32 0, i32 0, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %268

26:                                               ; preds = %1
  %27 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %47 [
    i32 0, label %32
    i32 1, label %32
    i32 3, label %32
    i32 4, label %32
    i32 5, label %36
    i32 6, label %36
    i32 9, label %36
    i32 10, label %36
    i32 2, label %40
    i32 7, label %46
  ]

32:                                               ; preds = %26, %26, %26, %26
  %33 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %34 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %33)
  %35 = call i32 (i32, i8*, ...) @uea_dbg(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %268

36:                                               ; preds = %26, %26, %26, %26
  %37 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %38 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %37)
  %39 = call i32 (i32, i8*, ...) @uea_dbg(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %268

40:                                               ; preds = %26
  %41 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %42 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %41)
  %43 = call i32 @uea_info(i32 %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %268

46:                                               ; preds = %26
  br label %56

47:                                               ; preds = %26
  %48 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %49 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %48)
  %50 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %51 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @uea_warn(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  store i32 0, i32* %2, align 4
  br label %268

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 7
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %61 = load i32, i32* @UEA_SET_MODE, align 4
  %62 = load i32, i32* @UEA_LOOPBACK_OFF, align 4
  %63 = call i32 @uea_request(%struct.uea_softc* %60, i32 %61, i32 %62, i32 0, i32* null)
  %64 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %65 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %64)
  %66 = call i32 @uea_info(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %68 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %59
  %72 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %73 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @release_firmware(i32* %74)
  %76 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %77 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %71, %59
  br label %79

79:                                               ; preds = %78, %56
  %80 = load i32, i32* @signal, align 4
  %81 = load i32, i32* @ATM_PHY_SIG_FOUND, align 4
  %82 = call i32 @UPDATE_ATM_STAT(i32 %80, i32 %81)
  %83 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %84 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %83, i32 0, i32 1
  %85 = call i32 @wake_up(i32* %84)
  %86 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %87 = load i32, i32* @E4_SA_DIAG, align 4
  %88 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %89 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %86, i32 1, i32 %87, i32 0, i32 0, i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %79
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %268

97:                                               ; preds = %79
  %98 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %99 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %104 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 8
  %109 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %110 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %97
  %116 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %117 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %116)
  %118 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %119 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @uea_dbg(i32 %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  %124 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %125 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %268

134:                                              ; preds = %115
  %135 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %136 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 16384
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* @EAGAIN, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %268

145:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %268

146:                                              ; preds = %97
  %147 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %148 = load i32, i32* @E4_SA_RATE, align 4
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %150 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %147, i32 4, i32 %148, i32 0, i32 0, i32* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %2, align 4
  br label %268

155:                                              ; preds = %146
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %161 = load i32, i32* %160, align 4
  br label %165

162:                                              ; preds = %155
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  br label %165

165:                                              ; preds = %162, %159
  %166 = phi i32 [ %161, %159 ], [ %164, %162 ]
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = sdiv i32 %167, 1000
  %169 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %170 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  store i32 %168, i32* %172, align 4
  %173 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %174 = load i32, i32* @E4_SA_RATE, align 4
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %176 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %173, i32 4, i32 %174, i32 1, i32 0, i32* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %165
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %268

181:                                              ; preds = %165
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %187 = load i32, i32* %186, align 4
  br label %191

188:                                              ; preds = %181
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %190 = load i32, i32* %189, align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = phi i32 [ %187, %185 ], [ %190, %188 ]
  store i32 %192, i32* %4, align 4
  %193 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sdiv i32 %194, 1000
  %196 = call i32 @uea_set_bulk_timeout(%struct.uea_softc* %193, i32 %195)
  %197 = load i32, i32* %4, align 4
  %198 = sdiv i32 %197, 1000
  %199 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %200 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 4
  store i32 %198, i32* %202, align 8
  %203 = load i32, i32* @link_rate, align 4
  %204 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %205 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %208, 1000
  %210 = sdiv i32 %209, 424
  %211 = call i32 @UPDATE_ATM_STAT(i32 %203, i32 %210)
  %212 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %213 = load i32, i32* @E4_SA_INFO, align 4
  %214 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %212, i32 1, i32 %213, i32 68, i32 1, i32* %4)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %191
  %218 = load i32, i32* %6, align 4
  store i32 %218, i32* %2, align 4
  br label %268

219:                                              ; preds = %191
  %220 = load i32, i32* %4, align 4
  %221 = sdiv i32 %220, 10
  %222 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %223 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 5
  store i32 %221, i32* %225, align 4
  %226 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %227 = load i32, i32* @E4_SA_INFO, align 4
  %228 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %226, i32 1, i32 %227, i32 69, i32 1, i32* %4)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %219
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %2, align 4
  br label %268

233:                                              ; preds = %219
  %234 = load i32, i32* %4, align 4
  %235 = sdiv i32 %234, 10
  %236 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %237 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 6
  store i32 %235, i32* %239, align 8
  %240 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %241 = load i32, i32* @E4_SA_INFO, align 4
  %242 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %240, i32 1, i32 %241, i32 68, i32 3, i32* %4)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %233
  %246 = load i32, i32* %6, align 4
  store i32 %246, i32* %2, align 4
  br label %268

247:                                              ; preds = %233
  %248 = load i32, i32* %4, align 4
  %249 = sdiv i32 %248, 2
  %250 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %251 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 7
  store i32 %249, i32* %253, align 4
  %254 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %255 = load i32, i32* @E4_SA_INFO, align 4
  %256 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %254, i32 1, i32 %255, i32 69, i32 3, i32* %4)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %6, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %247
  %260 = load i32, i32* %6, align 4
  store i32 %260, i32* %2, align 4
  br label %268

261:                                              ; preds = %247
  %262 = load i32, i32* %4, align 4
  %263 = sdiv i32 %262, 10
  %264 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %265 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 8
  store i32 %263, i32* %267, align 8
  store i32 0, i32* %2, align 4
  br label %268

268:                                              ; preds = %261, %259, %245, %231, %217, %179, %153, %145, %142, %131, %95, %47, %40, %36, %32, %24
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @uea_read_cmv_e4(%struct.uea_softc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @uea_dbg(i32, i8*, ...) #1

declare dso_local i32 @uea_info(i32, i8*) #1

declare dso_local i32 @uea_warn(i32, i8*, i32) #1

declare dso_local i32 @uea_request(%struct.uea_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @UPDATE_ATM_STAT(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @uea_set_bulk_timeout(%struct.uea_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
