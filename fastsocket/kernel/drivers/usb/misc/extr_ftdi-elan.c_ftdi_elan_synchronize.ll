; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_synchronize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, i8*, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" ..\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"retry limit reached\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"TIMED OUT retry limit reached\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"empty packet retry limit reached\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to synchronize\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_synchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_synchronize(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [94 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  store i32 10, i32* %5, align 4
  store i32 5, i32* %6, align 4
  store i32 10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %21 = call i32 @ftdi_elan_flush_input_fifo(%struct.usb_ftdi* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %267

26:                                               ; preds = %1
  %27 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %28 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %30 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  br label %31

31:                                               ; preds = %253, %234, %220, %204, %190, %179, %133, %26
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %35, label %259

35:                                               ; preds = %31
  %36 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %37 = call i32 @ftdi_elan_synchronize_flush(%struct.usb_ftdi* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %267

42:                                               ; preds = %35
  %43 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %44 = call i32 @ftdi_elan_flush_input_fifo(%struct.usb_ftdi* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %267

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %165, %49
  %51 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %52 = call i32 @ftdi_elan_synchronize_reset(%struct.usb_ftdi* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %267

57:                                               ; preds = %50
  store i32 100, i32* %9, align 4
  store i32 10, i32* %10, align 4
  br label %58

58:                                               ; preds = %252, %233, %219, %203, %189, %178, %164, %132, %127, %57
  store i32 0, i32* %11, align 4
  %59 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %60 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %63 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %66 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usb_rcvbulkpipe(%struct.TYPE_3__* %64, i32 %67)
  %69 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %70 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %73 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @usb_bulk_msg(%struct.TYPE_3__* %61, i32 %68, i8* %71, i32 %74, i32* %11, i32 500)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 2
  br i1 %77, label %78, label %139

78:                                               ; preds = %58
  %79 = getelementptr inbounds [94 x i8], [94 x i8]* %12, i64 0, i64 0
  store i8* %79, i8** %13, align 8
  store i32 31, i32* %14, align 4
  %80 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %81 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i8 0, i8* %17, align 1
  %83 = getelementptr inbounds [94 x i8], [94 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %83, align 16
  br label %84

84:                                               ; preds = %115, %78
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %11, align 4
  %87 = icmp sgt i32 %85, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %84
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %15, align 8
  %91 = load i8, i8* %89, align 1
  store i8 %91, i8* %17, align 1
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i8*, i8** %13, align 8
  %97 = load i8, i8* %17, align 1
  %98 = zext i8 %97 to i32
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i8*, i8** %13, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %13, align 8
  br label %115

103:                                              ; preds = %88
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %114

108:                                              ; preds = %103
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i8*, i8** %13, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %13, align 8
  br label %114

114:                                              ; preds = %108, %107
  br label %115

115:                                              ; preds = %114, %95
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %84

118:                                              ; preds = %84
  %119 = load i8, i8* %17, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 126
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %267

123:                                              ; preds = %118
  %124 = load i8, i8* %17, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 85
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %58

128:                                              ; preds = %123
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %9, align 4
  %131 = icmp sgt i32 %129, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %58

133:                                              ; preds = %128
  %134 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %135 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %31

139:                                              ; preds = %58
  %140 = load i32, i32* %11, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %196

142:                                              ; preds = %139
  %143 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %144 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  store i8 %147, i8* %18, align 1
  %148 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %149 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  store i8 %152, i8* %19, align 1
  %153 = load i8, i8* %18, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 49
  br i1 %155, label %156, label %166

156:                                              ; preds = %142
  %157 = load i8, i8* %19, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %10, align 4
  %163 = icmp sgt i32 %161, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %58

165:                                              ; preds = %160
  br label %50

166:                                              ; preds = %156, %142
  %167 = load i8, i8* %18, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 49
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = load i8, i8* %19, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 96
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %9, align 4
  %177 = icmp sgt i32 %175, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %58

179:                                              ; preds = %174
  %180 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %181 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %180, i32 0, i32 2
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = call i32 (i32*, i8*, ...) @dev_err(i32* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %31

185:                                              ; preds = %170, %166
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %9, align 4
  %188 = icmp sgt i32 %186, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %58

190:                                              ; preds = %185
  %191 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %192 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %191, i32 0, i32 2
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = call i32 (i32*, i8*, ...) @dev_err(i32* %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %31

196:                                              ; preds = %139
  %197 = load i32, i32* %11, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %9, align 4
  %202 = icmp sgt i32 %200, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %58

204:                                              ; preds = %199
  %205 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %206 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %205, i32 0, i32 2
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = call i32 (i32*, i8*, ...) @dev_err(i32* %208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %31

210:                                              ; preds = %196
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* @ETIMEDOUT, align 4
  %213 = sub nsw i32 0, %212
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %210
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %6, align 4
  %218 = icmp sgt i32 %216, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %58

220:                                              ; preds = %215
  %221 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %222 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %221, i32 0, i32 2
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = call i32 (i32*, i8*, ...) @dev_err(i32* %224, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %31

226:                                              ; preds = %210
  %227 = load i32, i32* %4, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %226
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %7, align 4
  %232 = icmp sgt i32 %230, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  br label %58

234:                                              ; preds = %229
  %235 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %236 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %235, i32 0, i32 2
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = call i32 (i32*, i8*, ...) @dev_err(i32* %238, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %31

240:                                              ; preds = %226
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  %243 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %244 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %243, i32 0, i32 2
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %4, align 4
  %248 = call i32 (i32*, i8*, ...) @dev_err(i32* %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %9, align 4
  %251 = icmp sgt i32 %249, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %240
  br label %58

253:                                              ; preds = %240
  %254 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %255 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %254, i32 0, i32 2
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = call i32 (i32*, i8*, ...) @dev_err(i32* %257, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %31

259:                                              ; preds = %31
  %260 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %261 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %260, i32 0, i32 2
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = call i32 (i32*, i8*, ...) @dev_err(i32* %263, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %265 = load i32, i32* @EFAULT, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %2, align 4
  br label %267

267:                                              ; preds = %259, %122, %55, %47, %40, %24
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i32 @ftdi_elan_flush_input_fifo(%struct.usb_ftdi*) #1

declare dso_local i32 @ftdi_elan_synchronize_flush(%struct.usb_ftdi*) #1

declare dso_local i32 @ftdi_elan_synchronize_reset(%struct.usb_ftdi*) #1

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_3__*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
