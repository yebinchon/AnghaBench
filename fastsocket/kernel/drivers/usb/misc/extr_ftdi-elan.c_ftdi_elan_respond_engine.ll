; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_respond_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_respond_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32*, i32, i32*, i32, i32, i32, %struct.u132_target*, %struct.TYPE_3__*, i64, %struct.u132_respond*, i32, i32, i32 }
%struct.u132_target = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.u132_respond = type { i32*, i32, i64* }

@.str = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" ..\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"TIMED OUT with packet_bytes = %d with total %d bytes%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ONLY %d bytes%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"error = %d with packet_bytes = %d with total %d bytes%s\0A\00", align 1
@RESPOND_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Uxxx unknown(%0X) value = %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_respond_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_respond_engine(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [94 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.u132_target*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [94 x i8], align 16
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.u132_respond*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.u132_target*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  %36 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %37 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %40 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32* %43, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 3, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %248, %1
  store i32 0, i32* %9, align 4
  %45 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %46 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %45, i32 0, i32 7
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %49 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %48, i32 0, i32 7
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %52 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @usb_rcvbulkpipe(%struct.TYPE_3__* %50, i32 %53)
  %55 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %56 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %59 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @usb_bulk_msg(%struct.TYPE_3__* %47, i32 %54, i32* %57, i32 %60, i32* %9, i32 500)
  store i32 %61, i32* %10, align 4
  %62 = getelementptr inbounds [94 x i8], [94 x i8]* %11, i64 0, i64 0
  store i8* %62, i8** %12, align 8
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %13, align 4
  %64 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %65 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %14, align 8
  store i32 31, i32* %15, align 4
  %67 = getelementptr inbounds [94 x i8], [94 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %67, align 16
  br label %68

68:                                               ; preds = %99, %44
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %15, align 4
  %71 = icmp sgt i32 %69, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %13, align 4
  %75 = icmp sgt i32 %73, 0
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %100

78:                                               ; preds = %76
  %79 = load i32, i32* %15, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %12, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %14, align 8
  %88 = load i32, i32* %86, align 4
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i8*, i8** %12, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %12, align 8
  br label %99

93:                                               ; preds = %81
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i8*, i8** %12, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %12, align 8
  br label %99

99:                                               ; preds = %93, %84
  br label %68

100:                                              ; preds = %76
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %104, 2
  %106 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %107 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %109 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %108, i32 0, i32 4
  store i32 1, i32* %109, align 4
  br label %249

110:                                              ; preds = %100
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @ETIMEDOUT, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  %118 = icmp sgt i32 %116, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %121 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %120, i32 0, i32 7
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %5, align 4
  %126 = getelementptr inbounds [94 x i8], [94 x i8]* %11, i64 0, i64 0
  %127 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125, i8* %126)
  br label %248

128:                                              ; preds = %115
  %129 = load i32, i32* %5, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %133 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %132, i32 0, i32 7
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %5, align 4
  %137 = getelementptr inbounds [94 x i8], [94 x i8]* %11, i64 0, i64 0
  %138 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %136, i8* %137)
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %600

141:                                              ; preds = %128
  %142 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %143 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %142, i32 0, i32 7
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %5, align 4
  %148 = getelementptr inbounds [94 x i8], [94 x i8]* %11, i64 0, i64 0
  %149 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %147, i8* %148)
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %600

152:                                              ; preds = %110
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @EILSEQ, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %159 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %158, i32 0, i32 7
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %5, align 4
  %165 = getelementptr inbounds [94 x i8], [94 x i8]* %11, i64 0, i64 0
  %166 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %161, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %163, i32 %164, i8* %165)
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %2, align 4
  br label %600

168:                                              ; preds = %152
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %173 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %172, i32 0, i32 7
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %5, align 4
  %179 = getelementptr inbounds [94 x i8], [94 x i8]* %11, i64 0, i64 0
  %180 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %176, i32 %177, i32 %178, i8* %179)
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %2, align 4
  br label %600

182:                                              ; preds = %168
  %183 = load i32, i32* %9, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %233

185:                                              ; preds = %182
  %186 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %187 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %16, align 1
  %192 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %193 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %17, align 1
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  %200 = load i8, i8* %16, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp eq i32 %201, 49
  br i1 %202, label %203, label %213

203:                                              ; preds = %185
  %204 = load i8, i8* %17, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 96
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %6, align 4
  %210 = icmp sgt i32 %208, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %248

212:                                              ; preds = %207
  store i32 0, i32* %2, align 4
  br label %600

213:                                              ; preds = %203, %185
  %214 = load i8, i8* %16, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp eq i32 %215, 49
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load i8, i8* %17, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %6, align 4
  %224 = icmp sgt i32 %222, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %248

226:                                              ; preds = %221
  store i32 0, i32* %2, align 4
  br label %600

227:                                              ; preds = %217, %213
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %6, align 4
  %230 = icmp sgt i32 %228, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %248

232:                                              ; preds = %227
  store i32 0, i32* %2, align 4
  br label %600

233:                                              ; preds = %182
  %234 = load i32, i32* %9, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %6, align 4
  %239 = icmp sgt i32 %237, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %248

241:                                              ; preds = %236
  store i32 0, i32* %2, align 4
  br label %600

242:                                              ; preds = %233
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %6, align 4
  %245 = icmp sgt i32 %243, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  br label %248

247:                                              ; preds = %242
  store i32 0, i32* %2, align 4
  br label %600

248:                                              ; preds = %599, %246, %240, %231, %225, %211, %119
  br label %44

249:                                              ; preds = %591, %583, %495, %486, %366, %292, %278, %103
  %250 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %251 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %599

254:                                              ; preds = %249
  %255 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %256 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %259 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %257, i64 %262
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %5, align 4
  %267 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %268 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  %271 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %272 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %254
  %276 = load i32, i32* %18, align 4
  %277 = icmp eq i32 %276, 255
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  br label %249

279:                                              ; preds = %275, %254
  %280 = load i32, i32* %18, align 4
  %281 = load i32*, i32** %4, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %4, align 8
  store i32 %280, i32* %281, align 4
  br label %283

283:                                              ; preds = %279
  %284 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %285 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 8
  %288 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %289 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = icmp slt i32 %287, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %283
  br label %249

293:                                              ; preds = %283
  %294 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %295 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %294, i32 0, i32 8
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %384

298:                                              ; preds = %293
  %299 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %300 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = ashr i32 %303, 5
  %305 = and i32 %304, 3
  store i32 %305, i32* %19, align 4
  %306 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %307 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 2
  %310 = load i32, i32* %309, align 4
  %311 = shl i32 %310, 8
  %312 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %313 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %311, %316
  store i32 %317, i32* %20, align 4
  %318 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %319 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %318, i32 0, i32 6
  %320 = load %struct.u132_target*, %struct.u132_target** %319, align 8
  %321 = load i32, i32* %19, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %320, i64 %322
  store %struct.u132_target* %323, %struct.u132_target** %21, align 8
  %324 = load i32, i32* %20, align 4
  %325 = ashr i32 %324, 0
  %326 = and i32 %325, 2047
  store i32 %326, i32* %22, align 4
  %327 = getelementptr inbounds [94 x i8], [94 x i8]* %23, i64 0, i64 0
  store i8* %327, i8** %24, align 8
  %328 = load i32, i32* %22, align 4
  store i32 %328, i32* %25, align 4
  %329 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %330 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 4
  store i32* %332, i32** %26, align 8
  store i32 31, i32* %27, align 4
  %333 = getelementptr inbounds [94 x i8], [94 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %333, align 16
  br label %334

334:                                              ; preds = %365, %298
  %335 = load i32, i32* %27, align 4
  %336 = add nsw i32 %335, -1
  store i32 %336, i32* %27, align 4
  %337 = icmp sgt i32 %335, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %334
  %339 = load i32, i32* %25, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %25, align 4
  %341 = icmp sgt i32 %339, 0
  br label %342

342:                                              ; preds = %338, %334
  %343 = phi i1 [ false, %334 ], [ %341, %338 ]
  br i1 %343, label %344, label %366

344:                                              ; preds = %342
  %345 = load i32, i32* %27, align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %344
  %348 = load i32, i32* %25, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %359

350:                                              ; preds = %347, %344
  %351 = load i8*, i8** %24, align 8
  %352 = load i32*, i32** %26, align 8
  %353 = getelementptr inbounds i32, i32* %352, i32 1
  store i32* %353, i32** %26, align 8
  %354 = load i32, i32* %352, align 4
  %355 = call i32 (i8*, i8*, ...) @sprintf(i8* %351, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %354)
  %356 = load i8*, i8** %24, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i8, i8* %356, i64 %357
  store i8* %358, i8** %24, align 8
  br label %365

359:                                              ; preds = %347
  %360 = load i8*, i8** %24, align 8
  %361 = call i32 (i8*, i8*, ...) @sprintf(i8* %360, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %362 = load i8*, i8** %24, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i8, i8* %362, i64 %363
  store i8* %364, i8** %24, align 8
  br label %365

365:                                              ; preds = %359, %350
  br label %334

366:                                              ; preds = %342
  %367 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %368 = load %struct.u132_target*, %struct.u132_target** %21, align 8
  %369 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %370 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 4
  %373 = load i32, i32* %22, align 4
  %374 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %367, %struct.u132_target* %368, i32* %372, i32 %373)
  %375 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %376 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %375, i32 0, i32 1
  store i32 0, i32* %376, align 8
  %377 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %378 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %377, i32 0, i32 5
  store i32 4, i32* %378, align 8
  %379 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %380 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %379, i32 0, i32 8
  store i64 0, i64* %380, align 8
  %381 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %382 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %381, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  store i32* %383, i32** %4, align 8
  br label %249

384:                                              ; preds = %293
  %385 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %386 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 8
  %388 = icmp eq i32 %387, 8
  br i1 %388, label %389, label %487

389:                                              ; preds = %384
  %390 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %391 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %390, i32 0, i32 10
  %392 = load i32, i32* %391, align 8
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %391, align 8
  store i32 %392, i32* %29, align 4
  %394 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %395 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %394, i32 0, i32 9
  %396 = load %struct.u132_respond*, %struct.u132_respond** %395, align 8
  %397 = load i32, i32* @RESPOND_MASK, align 4
  %398 = load i32, i32* %29, align 4
  %399 = and i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %396, i64 %400
  store %struct.u132_respond* %401, %struct.u132_respond** %30, align 8
  %402 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %403 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 7
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %31, align 4
  %407 = load i32, i32* %31, align 4
  %408 = shl i32 %407, 8
  store i32 %408, i32* %31, align 4
  %409 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %410 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 6
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %31, align 4
  %415 = or i32 %414, %413
  store i32 %415, i32* %31, align 4
  %416 = load i32, i32* %31, align 4
  %417 = shl i32 %416, 8
  store i32 %417, i32* %31, align 4
  %418 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %419 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 5
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %31, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %31, align 4
  %425 = load i32, i32* %31, align 4
  %426 = shl i32 %425, 8
  store i32 %426, i32* %31, align 4
  %427 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %428 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %427, i32 0, i32 0
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 4
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* %31, align 4
  %433 = or i32 %432, %431
  store i32 %433, i32* %31, align 4
  %434 = load i32, i32* %31, align 4
  %435 = load %struct.u132_respond*, %struct.u132_respond** %30, align 8
  %436 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %435, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  store i32 %434, i32* %437, align 4
  %438 = load %struct.u132_respond*, %struct.u132_respond** %30, align 8
  %439 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %438, i32 0, i32 2
  %440 = load i64*, i64** %439, align 8
  store i64 0, i64* %440, align 8
  %441 = load %struct.u132_respond*, %struct.u132_respond** %30, align 8
  %442 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %441, i32 0, i32 1
  %443 = call i32 @complete(i32* %442)
  %444 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %445 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %444, i32 0, i32 1
  store i32 0, i32* %445, align 8
  %446 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %447 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %446, i32 0, i32 5
  store i32 4, i32* %447, align 8
  %448 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %449 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %448, i32 0, i32 8
  store i64 0, i64* %449, align 8
  %450 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %451 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  store i32* %452, i32** %4, align 8
  %453 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %454 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 0
  %457 = load i32, i32* %456, align 4
  %458 = ashr i32 %457, 0
  %459 = and i32 %458, 15
  store i32 %459, i32* %28, align 4
  %460 = load i32, i32* %28, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %389
  br label %486

463:                                              ; preds = %389
  %464 = load i32, i32* %28, align 4
  %465 = icmp eq i32 %464, 2
  br i1 %465, label %466, label %467

466:                                              ; preds = %463
  br label %485

467:                                              ; preds = %463
  %468 = load i32, i32* %28, align 4
  %469 = icmp eq i32 %468, 6
  br i1 %469, label %470, label %471

470:                                              ; preds = %467
  br label %484

471:                                              ; preds = %467
  %472 = load i32, i32* %28, align 4
  %473 = icmp eq i32 %472, 10
  br i1 %473, label %474, label %475

474:                                              ; preds = %471
  br label %483

475:                                              ; preds = %471
  %476 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %477 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %476, i32 0, i32 7
  %478 = load %struct.TYPE_3__*, %struct.TYPE_3__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 0
  %480 = load i32, i32* %28, align 4
  %481 = load i32, i32* %31, align 4
  %482 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %479, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %480, i32 %481)
  br label %483

483:                                              ; preds = %475, %474
  br label %484

484:                                              ; preds = %483, %470
  br label %485

485:                                              ; preds = %484, %466
  br label %486

486:                                              ; preds = %485, %462
  br label %249

487:                                              ; preds = %384
  %488 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %489 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %488, i32 0, i32 0
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 0
  %492 = load i32, i32* %491, align 4
  %493 = and i32 %492, 128
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %487
  %496 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %497 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %496, i32 0, i32 5
  store i32 8, i32* %497, align 8
  br label %249

498:                                              ; preds = %487
  %499 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %500 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %499, i32 0, i32 0
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 0
  %503 = load i32, i32* %502, align 4
  %504 = ashr i32 %503, 5
  %505 = and i32 %504, 3
  store i32 %505, i32* %32, align 4
  %506 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %507 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %506, i32 0, i32 0
  %508 = load i32*, i32** %507, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 0
  %510 = load i32, i32* %509, align 4
  %511 = ashr i32 %510, 0
  %512 = and i32 %511, 3
  store i32 %512, i32* %33, align 4
  %513 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %514 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %513, i32 0, i32 0
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 2
  %517 = load i32, i32* %516, align 4
  %518 = shl i32 %517, 8
  %519 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %520 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %519, i32 0, i32 0
  %521 = load i32*, i32** %520, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 1
  %523 = load i32, i32* %522, align 4
  %524 = or i32 %518, %523
  store i32 %524, i32* %34, align 4
  %525 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %526 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %525, i32 0, i32 6
  %527 = load %struct.u132_target*, %struct.u132_target** %526, align 8
  %528 = load i32, i32* %32, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %527, i64 %529
  store %struct.u132_target* %530, %struct.u132_target** %35, align 8
  %531 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %532 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %531, i32 0, i32 0
  %533 = load i32*, i32** %532, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 0
  %535 = load i32, i32* %534, align 4
  %536 = ashr i32 %535, 3
  %537 = and i32 %536, 1
  %538 = load %struct.u132_target*, %struct.u132_target** %35, align 8
  %539 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %538, i32 0, i32 0
  store i32 %537, i32* %539, align 4
  %540 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %541 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %540, i32 0, i32 0
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 0
  %544 = load i32, i32* %543, align 4
  %545 = ashr i32 %544, 2
  %546 = and i32 %545, 1
  %547 = load %struct.u132_target*, %struct.u132_target** %35, align 8
  %548 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %547, i32 0, i32 1
  store i32 %546, i32* %548, align 4
  %549 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %550 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %549, i32 0, i32 0
  %551 = load i32*, i32** %550, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 3
  %553 = load i32, i32* %552, align 4
  %554 = ashr i32 %553, 6
  %555 = and i32 %554, 3
  %556 = load %struct.u132_target*, %struct.u132_target** %35, align 8
  %557 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %556, i32 0, i32 2
  store i32 %555, i32* %557, align 4
  %558 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %559 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %558, i32 0, i32 0
  %560 = load i32*, i32** %559, align 8
  %561 = getelementptr inbounds i32, i32* %560, i64 3
  %562 = load i32, i32* %561, align 4
  %563 = ashr i32 %562, 4
  %564 = and i32 %563, 3
  %565 = load %struct.u132_target*, %struct.u132_target** %35, align 8
  %566 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %565, i32 0, i32 3
  store i32 %564, i32* %566, align 4
  %567 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %568 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %567, i32 0, i32 0
  %569 = load i32*, i32** %568, align 8
  %570 = getelementptr inbounds i32, i32* %569, i64 3
  %571 = load i32, i32* %570, align 4
  %572 = ashr i32 %571, 0
  %573 = and i32 %572, 15
  %574 = load %struct.u132_target*, %struct.u132_target** %35, align 8
  %575 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %574, i32 0, i32 4
  store i32 %573, i32* %575, align 4
  %576 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %577 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %576, i32 0, i32 0
  %578 = load i32*, i32** %577, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 0
  %580 = load i32, i32* %579, align 4
  %581 = and i32 %580, 16
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %591

583:                                              ; preds = %498
  %584 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %585 = load %struct.u132_target*, %struct.u132_target** %35, align 8
  %586 = load i32, i32* %34, align 4
  %587 = load i32, i32* %32, align 4
  %588 = load i32, i32* %33, align 4
  %589 = load i32*, i32** %4, align 8
  %590 = call i32* @have_ed_set_response(%struct.usb_ftdi* %584, %struct.u132_target* %585, i32 %586, i32 %587, i32 %588, i32* %589)
  store i32* %590, i32** %4, align 8
  br label %249

591:                                              ; preds = %498
  %592 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %593 = load %struct.u132_target*, %struct.u132_target** %35, align 8
  %594 = load i32, i32* %34, align 4
  %595 = load i32, i32* %32, align 4
  %596 = load i32, i32* %33, align 4
  %597 = load i32*, i32** %4, align 8
  %598 = call i32* @have_ed_get_response(%struct.usb_ftdi* %592, %struct.u132_target* %593, i32 %594, i32 %595, i32 %596, i32* %597)
  store i32* %598, i32** %4, align 8
  br label %249

599:                                              ; preds = %249
  br label %248

600:                                              ; preds = %247, %241, %232, %226, %212, %171, %157, %141, %131
  %601 = load i32, i32* %2, align 4
  ret i32 %601
}

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_3__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @ftdi_elan_do_callback(%struct.usb_ftdi*, %struct.u132_target*, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32* @have_ed_set_response(%struct.usb_ftdi*, %struct.u132_target*, i32, i32, i32, i32*) #1

declare dso_local i32* @have_ed_get_response(%struct.usb_ftdi*, %struct.u132_target*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
