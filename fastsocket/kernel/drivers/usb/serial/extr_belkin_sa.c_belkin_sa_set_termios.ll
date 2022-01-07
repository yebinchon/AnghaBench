; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_belkin_sa.c_belkin_sa_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios* }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.belkin_sa_private = type { i64, i32, i32 }

@CMSPAR = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i64 0, align 8
@TIOCM_RTS = common dso_local global i64 0, align 8
@BELKIN_SA_SET_DTR_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Set DTR error\0A\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@BELKIN_SA_SET_RTS_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Set RTS error\0A\00", align 1
@BELKIN_SA_SET_BAUDRATE_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Set baudrate error\0A\00", align 1
@BELKIN_SA_SET_FLOW_CTRL_REQUEST = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Disable flowcontrol error\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"DTR LOW error\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"RTS LOW error\0A\00", align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@BELKIN_SA_PARITY_ODD = common dso_local global i32 0, align 4
@BELKIN_SA_PARITY_EVEN = common dso_local global i32 0, align 4
@BELKIN_SA_PARITY_NONE = common dso_local global i32 0, align 4
@BELKIN_SA_SET_PARITY_REQUEST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Set parity error\0A\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"CSIZE was not CS5-CS8, using default of 8\00", align 1
@BELKIN_SA_SET_DATA_BITS_REQUEST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Set data bits error\0A\00", align 1
@CSTOPB = common dso_local global i32 0, align 4
@BELKIN_SA_SET_STOP_BITS_REQUEST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Set stop bits error\0A\00", align 1
@IXOFF = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_OXON = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_IXON = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_OCTS = common dso_local global i32 0, align 4
@BELKIN_SA_FLOW_IRTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Set flow control error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @belkin_sa_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @belkin_sa_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.belkin_sa_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ktermios*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 1
  %21 = load %struct.usb_serial*, %struct.usb_serial** %20, align 8
  store %struct.usb_serial* %21, %struct.usb_serial** %7, align 8
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %23 = call %struct.belkin_sa_private* @usb_get_serial_port_data(%struct.usb_serial_port* %22)
  store %struct.belkin_sa_private* %23, %struct.belkin_sa_private** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  %26 = load %struct.ktermios*, %struct.ktermios** %25, align 8
  store %struct.ktermios* %26, %struct.ktermios** %18, align 8
  %27 = load %struct.ktermios*, %struct.ktermios** %18, align 8
  %28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ktermios*, %struct.ktermios** %18, align 8
  %31 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @CMSPAR, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ktermios*, %struct.ktermios** %18, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %40 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %39, i32 0, i32 2
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %44 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %15, align 8
  %46 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %47 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %16, align 4
  %49 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %50 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %49, i32 0, i32 2
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %54 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %57 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @CBAUD, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @CBAUD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %3
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @CBAUD, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @B0, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %66
  %73 = load i64, i64* @TIOCM_DTR, align 8
  %74 = load i64, i64* @TIOCM_RTS, align 8
  %75 = or i64 %73, %74
  %76 = load i64, i64* %15, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %15, align 8
  %78 = load i32, i32* @BELKIN_SA_SET_DTR_REQUEST, align 4
  %79 = call i64 @BSA_USB_CMD(i32 %78, i32 1)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %83 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %72
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @CRTSCTS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @BELKIN_SA_SET_RTS_REQUEST, align 4
  %92 = call i64 @BSA_USB_CMD(i32 %91, i32 1)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %96 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %95, i32 0, i32 0
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %66
  br label %101

101:                                              ; preds = %100, %3
  %102 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %103 = call i32 @tty_get_baud_rate(%struct.tty_struct* %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @BELKIN_SA_BAUD(i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 1, i32* %13, align 4
  br label %112

112:                                              ; preds = %111, %106
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @BELKIN_SA_BAUD(i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %115, i32 %116, i32 %117)
  %119 = load i32, i32* @BELKIN_SA_SET_BAUDRATE_REQUEST, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i64 @BSA_USB_CMD(i32 %119, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %112
  %124 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %125 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %124, i32 0, i32 0
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %112
  br label %160

128:                                              ; preds = %101
  %129 = load i32, i32* @BELKIN_SA_SET_FLOW_CTRL_REQUEST, align 4
  %130 = load i32, i32* @BELKIN_SA_FLOW_NONE, align 4
  %131 = call i64 @BSA_USB_CMD(i32 %129, i32 %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %135 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %134, i32 0, i32 0
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i64, i64* @TIOCM_DTR, align 8
  %139 = load i64, i64* @TIOCM_RTS, align 8
  %140 = or i64 %138, %139
  %141 = xor i64 %140, -1
  %142 = load i64, i64* %15, align 8
  %143 = and i64 %142, %141
  store i64 %143, i64* %15, align 8
  %144 = load i32, i32* @BELKIN_SA_SET_DTR_REQUEST, align 4
  %145 = call i64 @BSA_USB_CMD(i32 %144, i32 0)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %137
  %148 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %149 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %148, i32 0, i32 0
  %150 = call i32 @dev_err(i32* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %137
  %152 = load i32, i32* @BELKIN_SA_SET_RTS_REQUEST, align 4
  %153 = call i64 @BSA_USB_CMD(i32 %152, i32 0)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %157 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %159

159:                                              ; preds = %155, %151
  br label %160

160:                                              ; preds = %159, %127
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %12, align 4
  %163 = xor i32 %161, %162
  %164 = load i32, i32* @PARENB, align 4
  %165 = load i32, i32* @PARODD, align 4
  %166 = or i32 %164, %165
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %197

169:                                              ; preds = %160
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @PARENB, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @PARODD, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* @BELKIN_SA_PARITY_ODD, align 4
  br label %183

181:                                              ; preds = %174
  %182 = load i32, i32* @BELKIN_SA_PARITY_EVEN, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  store i32 %184, i32* %13, align 4
  br label %187

185:                                              ; preds = %169
  %186 = load i32, i32* @BELKIN_SA_PARITY_NONE, align 4
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = load i32, i32* @BELKIN_SA_SET_PARITY_REQUEST, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i64 @BSA_USB_CMD(i32 %188, i32 %189)
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %194 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %193, i32 0, i32 0
  %195 = call i32 @dev_err(i32* %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %196

196:                                              ; preds = %192, %187
  br label %197

197:                                              ; preds = %196, %160
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @CSIZE, align 4
  %200 = and i32 %198, %199
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @CSIZE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %200, %203
  br i1 %204, label %205, label %230

205:                                              ; preds = %197
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @CSIZE, align 4
  %208 = and i32 %206, %207
  switch i32 %208, label %217 [
    i32 131, label %209
    i32 130, label %211
    i32 129, label %213
    i32 128, label %215
  ]

209:                                              ; preds = %205
  %210 = call i32 @BELKIN_SA_DATA_BITS(i32 5)
  store i32 %210, i32* %13, align 4
  br label %220

211:                                              ; preds = %205
  %212 = call i32 @BELKIN_SA_DATA_BITS(i32 6)
  store i32 %212, i32* %13, align 4
  br label %220

213:                                              ; preds = %205
  %214 = call i32 @BELKIN_SA_DATA_BITS(i32 7)
  store i32 %214, i32* %13, align 4
  br label %220

215:                                              ; preds = %205
  %216 = call i32 @BELKIN_SA_DATA_BITS(i32 8)
  store i32 %216, i32* %13, align 4
  br label %220

217:                                              ; preds = %205
  %218 = call i32 @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %219 = call i32 @BELKIN_SA_DATA_BITS(i32 8)
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %217, %215, %213, %211, %209
  %221 = load i32, i32* @BELKIN_SA_SET_DATA_BITS_REQUEST, align 4
  %222 = load i32, i32* %13, align 4
  %223 = call i64 @BSA_USB_CMD(i32 %221, i32 %222)
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %227 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %226, i32 0, i32 0
  %228 = call i32 @dev_err(i32* %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %229

229:                                              ; preds = %225, %220
  br label %230

230:                                              ; preds = %229, %197
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @CSTOPB, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @CSTOPB, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %233, %236
  br i1 %237, label %238, label %258

238:                                              ; preds = %230
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @CSTOPB, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = call i32 @BELKIN_SA_STOP_BITS(i32 2)
  br label %247

245:                                              ; preds = %238
  %246 = call i32 @BELKIN_SA_STOP_BITS(i32 1)
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ]
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* @BELKIN_SA_SET_STOP_BITS_REQUEST, align 4
  %250 = load i32, i32* %13, align 4
  %251 = call i64 @BSA_USB_CMD(i32 %249, i32 %250)
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %247
  %254 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %255 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %254, i32 0, i32 0
  %256 = call i32 @dev_err(i32* %255, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %257

257:                                              ; preds = %253, %247
  br label %258

258:                                              ; preds = %257, %230
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %11, align 4
  %261 = xor i32 %259, %260
  %262 = load i32, i32* @IXOFF, align 4
  %263 = load i32, i32* @IXON, align 4
  %264 = or i32 %262, %263
  %265 = and i32 %261, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %258
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* %12, align 4
  %270 = xor i32 %268, %269
  %271 = load i32, i32* @CRTSCTS, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %333

274:                                              ; preds = %267, %258
  store i32 0, i32* %13, align 4
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* @IXOFF, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %274
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* @IXON, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %279, %274
  %285 = load i32, i32* @BELKIN_SA_FLOW_OXON, align 4
  %286 = load i32, i32* @BELKIN_SA_FLOW_IXON, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* %13, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %13, align 4
  br label %297

290:                                              ; preds = %279
  %291 = load i32, i32* @BELKIN_SA_FLOW_OXON, align 4
  %292 = load i32, i32* @BELKIN_SA_FLOW_IXON, align 4
  %293 = or i32 %291, %292
  %294 = xor i32 %293, -1
  %295 = load i32, i32* %13, align 4
  %296 = and i32 %295, %294
  store i32 %296, i32* %13, align 4
  br label %297

297:                                              ; preds = %290, %284
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* @CRTSCTS, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %297
  %303 = load i32, i32* @BELKIN_SA_FLOW_OCTS, align 4
  %304 = load i32, i32* @BELKIN_SA_FLOW_IRTS, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* %13, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %13, align 4
  br label %315

308:                                              ; preds = %297
  %309 = load i32, i32* @BELKIN_SA_FLOW_OCTS, align 4
  %310 = load i32, i32* @BELKIN_SA_FLOW_IRTS, align 4
  %311 = or i32 %309, %310
  %312 = xor i32 %311, -1
  %313 = load i32, i32* %13, align 4
  %314 = and i32 %313, %312
  store i32 %314, i32* %13, align 4
  br label %315

315:                                              ; preds = %308, %302
  %316 = load i32, i32* %16, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load i32, i32* @BELKIN_SA_FLOW_IRTS, align 4
  %320 = xor i32 %319, -1
  %321 = load i32, i32* %13, align 4
  %322 = and i32 %321, %320
  store i32 %322, i32* %13, align 4
  br label %323

323:                                              ; preds = %318, %315
  %324 = load i32, i32* @BELKIN_SA_SET_FLOW_CTRL_REQUEST, align 4
  %325 = load i32, i32* %13, align 4
  %326 = call i64 @BSA_USB_CMD(i32 %324, i32 %325)
  %327 = icmp slt i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %323
  %329 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %330 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %329, i32 0, i32 0
  %331 = call i32 @dev_err(i32* %330, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %332

332:                                              ; preds = %328, %323
  br label %333

333:                                              ; preds = %332, %267
  %334 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %335 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %334, i32 0, i32 2
  %336 = load i64, i64* %14, align 8
  %337 = call i32 @spin_lock_irqsave(i32* %335, i64 %336)
  %338 = load i64, i64* %15, align 8
  %339 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %340 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %339, i32 0, i32 0
  store i64 %338, i64* %340, align 8
  %341 = load %struct.belkin_sa_private*, %struct.belkin_sa_private** %8, align 8
  %342 = getelementptr inbounds %struct.belkin_sa_private, %struct.belkin_sa_private* %341, i32 0, i32 2
  %343 = load i64, i64* %14, align 8
  %344 = call i32 @spin_unlock_irqrestore(i32* %342, i64 %343)
  ret void
}

declare dso_local %struct.belkin_sa_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @BSA_USB_CMD(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @BELKIN_SA_BAUD(i32) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @BELKIN_SA_DATA_BITS(i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @BELKIN_SA_STOP_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
