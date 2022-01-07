; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.ktermios* }
%struct.ktermios = type { i32, i64* }
%struct.rfcomm_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"tty %p termios %p\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Turning off CRTSCTS unsupported\00", align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@RFCOMM_RPN_PM_PARITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Parity change detected.\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Parity is ODD\00", align 1
@RFCOMM_RPN_PARITY_ODD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Parity is EVEN\00", align 1
@RFCOMM_RPN_PARITY_EVEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"Parity is OFF\00", align 1
@RFCOMM_RPN_PARITY_NONE = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"XOFF custom\00", align 1
@RFCOMM_RPN_PM_XON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"XOFF default\00", align 1
@RFCOMM_RPN_XON_CHAR = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"XON custom\00", align 1
@RFCOMM_RPN_PM_XOFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"XON default\00", align 1
@RFCOMM_RPN_XOFF_CHAR = common dso_local global i64 0, align 8
@CSTOPB = common dso_local global i32 0, align 4
@RFCOMM_RPN_PM_STOP = common dso_local global i32 0, align 4
@RFCOMM_RPN_STOP_15 = common dso_local global i64 0, align 8
@RFCOMM_RPN_STOP_1 = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i32 0, align 4
@RFCOMM_RPN_PM_DATA = common dso_local global i32 0, align 4
@RFCOMM_RPN_DATA_5 = common dso_local global i64 0, align 8
@RFCOMM_RPN_DATA_6 = common dso_local global i64 0, align 8
@RFCOMM_RPN_DATA_7 = common dso_local global i64 0, align 8
@RFCOMM_RPN_DATA_8 = common dso_local global i64 0, align 8
@RFCOMM_RPN_PM_BITRATE = common dso_local global i32 0, align 4
@RFCOMM_RPN_BR_2400 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_4800 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_7200 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_9600 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_19200 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_38400 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_57600 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_115200 = common dso_local global i64 0, align 8
@RFCOMM_RPN_BR_230400 = common dso_local global i64 0, align 8
@RFCOMM_RPN_FLOW_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @rfcomm_tty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_tty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rfcomm_dev*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 1
  %18 = load %struct.ktermios*, %struct.ktermios** %17, align 8
  store %struct.ktermios* %18, %struct.ktermios** %5, align 8
  %19 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %20 = call i32 @tty_termios_baud_rate(%struct.ktermios* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %22 = call i32 @tty_termios_baud_rate(%struct.ktermios* %21)
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.rfcomm_dev*
  store %struct.rfcomm_dev* %26, %struct.rfcomm_dev** %15, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %29 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %27, %struct.ktermios* %28)
  %30 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %31 = icmp ne %struct.rfcomm_dev* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %34 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %39 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37, %32, %2
  br label %283

45:                                               ; preds = %37
  %46 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CRTSCTS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %54 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CRTSCTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %52, %45
  %62 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PARENB, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %68 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PARENB, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %66, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %61
  %74 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PARODD, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %80 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PARODD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %78, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %73, %61
  %86 = load i32, i32* @RFCOMM_RPN_PM_PARITY, align 4
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %73
  %91 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %92 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PARENB, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %99 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @PARODD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i64, i64* @RFCOMM_RPN_PARITY_ODD, align 8
  store i64 %106, i64* %11, align 8
  br label %110

107:                                              ; preds = %97
  %108 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i64, i64* @RFCOMM_RPN_PARITY_EVEN, align 8
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %107, %104
  br label %114

111:                                              ; preds = %90
  %112 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i64, i64* @RFCOMM_RPN_PARITY_NONE, align 8
  store i64 %113, i64* %11, align 8
  br label %114

114:                                              ; preds = %111, %110
  %115 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @VSTOP, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %122 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* @VSTOP, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %120, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %114
  %129 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %130 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %131 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* @VSTOP, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %12, align 8
  %136 = load i32, i32* @RFCOMM_RPN_PM_XON, align 4
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %14, align 4
  br label %142

139:                                              ; preds = %114
  %140 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i64, i64* @RFCOMM_RPN_XON_CHAR, align 8
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %139, %128
  %143 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %144 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @VSTART, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %149, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = load i64, i64* @VSTART, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %148, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %142
  %157 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %158 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %159 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @VSTART, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %13, align 8
  %164 = load i32, i32* @RFCOMM_RPN_PM_XOFF, align 4
  %165 = load i32, i32* %14, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %14, align 4
  br label %170

167:                                              ; preds = %142
  %168 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %169 = load i64, i64* @RFCOMM_RPN_XOFF_CHAR, align 8
  store i64 %169, i64* %13, align 8
  br label %170

170:                                              ; preds = %167, %156
  %171 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %172 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @CSTOPB, align 4
  %175 = and i32 %173, %174
  %176 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %177 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @CSTOPB, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %175, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %170
  %183 = load i32, i32* @RFCOMM_RPN_PM_STOP, align 4
  %184 = load i32, i32* %14, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %182, %170
  %187 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %188 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @CSTOPB, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i64, i64* @RFCOMM_RPN_STOP_15, align 8
  store i64 %194, i64* %10, align 8
  br label %197

195:                                              ; preds = %186
  %196 = load i64, i64* @RFCOMM_RPN_STOP_1, align 8
  store i64 %196, i64* %10, align 8
  br label %197

197:                                              ; preds = %195, %193
  %198 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %199 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @CSIZE, align 4
  %202 = and i32 %200, %201
  %203 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %204 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CSIZE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %202, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %197
  %210 = load i32, i32* @RFCOMM_RPN_PM_DATA, align 4
  %211 = load i32, i32* %14, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %209, %197
  %214 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %215 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @CSIZE, align 4
  %218 = and i32 %216, %217
  switch i32 %218, label %227 [
    i32 131, label %219
    i32 130, label %221
    i32 129, label %223
    i32 128, label %225
  ]

219:                                              ; preds = %213
  %220 = load i64, i64* @RFCOMM_RPN_DATA_5, align 8
  store i64 %220, i64* %9, align 8
  br label %229

221:                                              ; preds = %213
  %222 = load i64, i64* @RFCOMM_RPN_DATA_6, align 8
  store i64 %222, i64* %9, align 8
  br label %229

223:                                              ; preds = %213
  %224 = load i64, i64* @RFCOMM_RPN_DATA_7, align 8
  store i64 %224, i64* %9, align 8
  br label %229

225:                                              ; preds = %213
  %226 = load i64, i64* @RFCOMM_RPN_DATA_8, align 8
  store i64 %226, i64* %9, align 8
  br label %229

227:                                              ; preds = %213
  %228 = load i64, i64* @RFCOMM_RPN_DATA_8, align 8
  store i64 %228, i64* %9, align 8
  br label %229

229:                                              ; preds = %227, %225, %223, %221, %219
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i32, i32* @RFCOMM_RPN_PM_BITRATE, align 4
  %235 = load i32, i32* %14, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %14, align 4
  br label %237

237:                                              ; preds = %233, %229
  %238 = load i32, i32* %7, align 4
  switch i32 %238, label %257 [
    i32 2400, label %239
    i32 4800, label %241
    i32 7200, label %243
    i32 9600, label %245
    i32 19200, label %247
    i32 38400, label %249
    i32 57600, label %251
    i32 115200, label %253
    i32 230400, label %255
  ]

239:                                              ; preds = %237
  %240 = load i64, i64* @RFCOMM_RPN_BR_2400, align 8
  store i64 %240, i64* %8, align 8
  br label %259

241:                                              ; preds = %237
  %242 = load i64, i64* @RFCOMM_RPN_BR_4800, align 8
  store i64 %242, i64* %8, align 8
  br label %259

243:                                              ; preds = %237
  %244 = load i64, i64* @RFCOMM_RPN_BR_7200, align 8
  store i64 %244, i64* %8, align 8
  br label %259

245:                                              ; preds = %237
  %246 = load i64, i64* @RFCOMM_RPN_BR_9600, align 8
  store i64 %246, i64* %8, align 8
  br label %259

247:                                              ; preds = %237
  %248 = load i64, i64* @RFCOMM_RPN_BR_19200, align 8
  store i64 %248, i64* %8, align 8
  br label %259

249:                                              ; preds = %237
  %250 = load i64, i64* @RFCOMM_RPN_BR_38400, align 8
  store i64 %250, i64* %8, align 8
  br label %259

251:                                              ; preds = %237
  %252 = load i64, i64* @RFCOMM_RPN_BR_57600, align 8
  store i64 %252, i64* %8, align 8
  br label %259

253:                                              ; preds = %237
  %254 = load i64, i64* @RFCOMM_RPN_BR_115200, align 8
  store i64 %254, i64* %8, align 8
  br label %259

255:                                              ; preds = %237
  %256 = load i64, i64* @RFCOMM_RPN_BR_230400, align 8
  store i64 %256, i64* %8, align 8
  br label %259

257:                                              ; preds = %237
  %258 = load i64, i64* @RFCOMM_RPN_BR_9600, align 8
  store i64 %258, i64* %8, align 8
  br label %259

259:                                              ; preds = %257, %255, %253, %251, %249, %247, %245, %243, %241, %239
  %260 = load i32, i32* %14, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %282

262:                                              ; preds = %259
  %263 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %264 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %263, i32 0, i32 0
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %15, align 8
  %269 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %268, i32 0, i32 0
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i64, i64* %8, align 8
  %274 = load i64, i64* %9, align 8
  %275 = load i64, i64* %10, align 8
  %276 = load i64, i64* %11, align 8
  %277 = load i32, i32* @RFCOMM_RPN_FLOW_NONE, align 4
  %278 = load i64, i64* %12, align 8
  %279 = load i64, i64* %13, align 8
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @rfcomm_send_rpn(i32 %267, i32 1, i32 %272, i64 %273, i64 %274, i64 %275, i64 %276, i32 %277, i64 %278, i64 %279, i32 %280)
  br label %282

282:                                              ; preds = %262, %259
  br label %283

283:                                              ; preds = %282, %44
  ret void
}

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @rfcomm_send_rpn(i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
