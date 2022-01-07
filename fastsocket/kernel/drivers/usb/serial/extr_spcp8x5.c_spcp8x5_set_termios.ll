; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.ktermios = type { i32 }
%struct.spcp8x5_private = type { i32, i32, i32 }

@CBAUD = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"spcp825 driver does not support the baudrate requested, using default of 9600.\0A\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@SET_UART_FORMAT_SIZE_5 = common dso_local global i8 0, align 1
@SET_UART_FORMAT_SIZE_6 = common dso_local global i8 0, align 1
@SET_UART_FORMAT_SIZE_7 = common dso_local global i8 0, align 1
@SET_UART_FORMAT_SIZE_8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@SET_UART_FORMAT_STOP_2 = common dso_local global i8 0, align 1
@SET_UART_FORMAT_STOP_1 = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SET_UART_FORMAT_PAR_ODD = common dso_local global i8 0, align 1
@SET_UART_FORMAT_PAR_EVEN = common dso_local global i8 0, align 1
@SET_UART_FORMAT_PAR_NONE = common dso_local global i8 0, align 1
@SET_UART_FORMAT_TYPE = common dso_local global i32 0, align 4
@SET_UART_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Set UART format %#x failed (error = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"0x21:0x40:0:0  %d\0A\00", align 1
@SET_WORKING_MODE_U2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @spcp8x5_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spcp8x5_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.spcp8x5_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca [2 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 1
  %19 = load %struct.usb_serial*, %struct.usb_serial** %18, align 8
  store %struct.usb_serial* %19, %struct.usb_serial** %7, align 8
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %21 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %20)
  store %struct.spcp8x5_private* %21, %struct.spcp8x5_private** %8, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = bitcast [2 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %30, i8 0, i64 2, i1 false)
  %31 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %35 = call i32 @tty_termios_hw_change(%struct.TYPE_2__* %33, %struct.ktermios* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  br label %271

38:                                               ; preds = %3
  %39 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %40 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %39, i32 0, i32 1
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %44 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @CBAUD, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @B0, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %38
  %52 = load i32, i32* @MCR_DTR, align 4
  %53 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %54 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @CRTSCTS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @MCR_RTS, align 4
  %63 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %64 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %51
  br label %68

68:                                               ; preds = %67, %38
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %71 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %76 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %16, align 4
  %78 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %79 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %78, i32 0, i32 1
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %83 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %87 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @spcp8x5_set_ctrlLine(i32 %84, i32 %85, i32 %88)
  br label %95

90:                                               ; preds = %68
  %91 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %92 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %91, i32 0, i32 1
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %90, %74
  %96 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %97 = call i32 @tty_get_baud_rate(%struct.tty_struct* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  switch i32 %98, label %129 [
    i32 300, label %99
    i32 600, label %101
    i32 1200, label %103
    i32 2400, label %105
    i32 4800, label %107
    i32 9600, label %109
    i32 19200, label %111
    i32 38400, label %113
    i32 57600, label %115
    i32 115200, label %117
    i32 230400, label %119
    i32 460800, label %121
    i32 921600, label %123
    i32 3000000, label %125
    i32 0, label %127
    i32 1000000, label %127
  ]

99:                                               ; preds = %95
  %100 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %100, align 1
  br label %133

101:                                              ; preds = %95
  %102 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 1, i8* %102, align 1
  br label %133

103:                                              ; preds = %95
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 2, i8* %104, align 1
  br label %133

105:                                              ; preds = %95
  %106 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 3, i8* %106, align 1
  br label %133

107:                                              ; preds = %95
  %108 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 4, i8* %108, align 1
  br label %133

109:                                              ; preds = %95
  %110 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 5, i8* %110, align 1
  br label %133

111:                                              ; preds = %95
  %112 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 7, i8* %112, align 1
  br label %133

113:                                              ; preds = %95
  %114 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 9, i8* %114, align 1
  br label %133

115:                                              ; preds = %95
  %116 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 10, i8* %116, align 1
  br label %133

117:                                              ; preds = %95
  %118 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 11, i8* %118, align 1
  br label %133

119:                                              ; preds = %95
  %120 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 12, i8* %120, align 1
  br label %133

121:                                              ; preds = %95
  %122 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 13, i8* %122, align 1
  br label %133

123:                                              ; preds = %95
  %124 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 14, i8* %124, align 1
  br label %133

125:                                              ; preds = %95
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 17, i8* %126, align 1
  br label %133

127:                                              ; preds = %95, %95
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 11, i8* %128, align 1
  br label %133

129:                                              ; preds = %95
  %130 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %131 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %130, i32 0, i32 0
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %127, %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %99
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @CSIZE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %176

138:                                              ; preds = %133
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @CSIZE, align 4
  %141 = and i32 %139, %140
  switch i32 %141, label %166 [
    i32 131, label %142
    i32 130, label %150
    i32 129, label %158
    i32 128, label %167
  ]

142:                                              ; preds = %138
  %143 = load i8, i8* @SET_UART_FORMAT_SIZE_5, align 1
  %144 = zext i8 %143 to i32
  %145 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = or i32 %147, %144
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %145, align 1
  br label %175

150:                                              ; preds = %138
  %151 = load i8, i8* @SET_UART_FORMAT_SIZE_6, align 1
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = or i32 %155, %152
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %153, align 1
  br label %175

158:                                              ; preds = %138
  %159 = load i8, i8* @SET_UART_FORMAT_SIZE_7, align 1
  %160 = zext i8 %159 to i32
  %161 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %163, %160
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %161, align 1
  br label %175

166:                                              ; preds = %138
  br label %167

167:                                              ; preds = %138, %166
  %168 = load i8, i8* @SET_UART_FORMAT_SIZE_8, align 1
  %169 = zext i8 %168 to i32
  %170 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = or i32 %172, %169
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %170, align 1
  br label %175

175:                                              ; preds = %167, %158, %150, %142
  br label %176

176:                                              ; preds = %175, %133
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @CSTOPB, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i8, i8* @SET_UART_FORMAT_STOP_2, align 1
  %183 = zext i8 %182 to i32
  br label %187

184:                                              ; preds = %176
  %185 = load i8, i8* @SET_UART_FORMAT_STOP_1, align 1
  %186 = zext i8 %185 to i32
  br label %187

187:                                              ; preds = %184, %181
  %188 = phi i32 [ %183, %181 ], [ %186, %184 ]
  %189 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = or i32 %191, %188
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %189, align 1
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @PARENB, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %187
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @PARODD, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i8, i8* @SET_UART_FORMAT_PAR_ODD, align 1
  %205 = zext i8 %204 to i32
  br label %209

206:                                              ; preds = %198
  %207 = load i8, i8* @SET_UART_FORMAT_PAR_EVEN, align 1
  %208 = zext i8 %207 to i32
  br label %209

209:                                              ; preds = %206, %203
  %210 = phi i32 [ %205, %203 ], [ %208, %206 ]
  %211 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = or i32 %213, %210
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %211, align 1
  br label %224

216:                                              ; preds = %187
  %217 = load i8, i8* @SET_UART_FORMAT_PAR_NONE, align 1
  %218 = zext i8 %217 to i32
  %219 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = or i32 %221, %218
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %219, align 1
  br label %224

224:                                              ; preds = %216, %209
  %225 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = shl i32 %230, 8
  %232 = or i32 %227, %231
  %233 = trunc i32 %232 to i16
  store i16 %233, i16* %12, align 2
  %234 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %235 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %238 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @usb_sndctrlpipe(i32 %239, i32 0)
  %241 = load i32, i32* @SET_UART_FORMAT_TYPE, align 4
  %242 = load i32, i32* @SET_UART_FORMAT, align 4
  %243 = load i16, i16* %12, align 2
  %244 = call i32 @usb_control_msg(i32 %236, i32 %240, i32 %241, i32 %242, i16 zeroext %243, i32 0, i32* null, i32 0, i32 100)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %224
  %248 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %249 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %248, i32 0, i32 0
  %250 = load i16, i16* %12, align 2
  %251 = zext i16 %250 to i32
  %252 = load i32, i32* %15, align 4
  %253 = call i32 (i32*, i8*, ...) @dev_err(i32* %249, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %247, %224
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* @CRTSCTS, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %254
  %262 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %263 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @SET_WORKING_MODE_U2C, align 4
  %266 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %267 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @spcp8x5_set_workMode(i32 %264, i32 10, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %261, %254
  br label %271

271:                                              ; preds = %270, %37
  ret void
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tty_termios_hw_change(%struct.TYPE_2__*, %struct.ktermios*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spcp8x5_set_ctrlLine(i32, i32, i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i16 zeroext, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @spcp8x5_set_workMode(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
