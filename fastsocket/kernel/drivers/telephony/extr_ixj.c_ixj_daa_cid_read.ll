; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_daa_cid_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_daa_cid_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__, %struct.TYPE_14__, i64 }
%struct.TYPE_17__ = type { i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_16__ = type { i32, i32 }

@ALISDAA_CALLERID_SIZE = common dso_local global i32 0, align 4
@SCI_Enable_DAA = common dso_local global i32 0, align 4
@ALISDAA_ID_BYTE = common dso_local global i32 0, align 4
@ixjdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"DAA Get Version Cannot read DAA ID Byte high = %d low = %d\0A\00", align 1
@SCI_End = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @ixj_daa_cid_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_daa_cid_read(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load i32, i32* @ALISDAA_CALLERID_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = call i32 @SCI_Prepare(%struct.TYPE_15__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %331

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 120, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 3
  %29 = call i32 @outb_p(i32 %24, i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  %36 = call i32 @outb_p(i32 %31, i64 %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = load i32, i32* @SCI_Enable_DAA, align 4
  %39 = call i32 @SCI_Control(%struct.TYPE_15__* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %331

42:                                               ; preds = %20
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = call i32 @SCI_WaitHighSCI(%struct.TYPE_15__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %331

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 3
  %52 = call i8* @inb_p(i64 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 2
  %59 = call i8* @inb_p(i64 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ALISDAA_ID_BYTE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %47
  %67 = load i32, i32* @ixjdebug, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %66
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %331

77:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %130, %77
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @ALISDAA_CALLERID_SIZE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %133

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 3
  %91 = call i32 @outb_p(i32 %86, i64 %90)
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 2
  %98 = call i32 @outb_p(i32 %93, i64 %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = load i32, i32* @SCI_Enable_DAA, align 4
  %101 = call i32 @SCI_Control(%struct.TYPE_15__* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %82
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %331

104:                                              ; preds = %82
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = call i32 @SCI_WaitHighSCI(%struct.TYPE_15__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %331

109:                                              ; preds = %104
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 3
  %114 = call i8* @inb_p(i64 %113)
  %115 = ptrtoint i8* %114 to i8
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 0
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %15, i64 %118
  store i8 %115, i8* %119, align 1
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 2
  %124 = call i8* @inb_p(i64 %123)
  %125 = ptrtoint i8* %124 to i8
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %15, i64 %128
  store i8 %125, i8* %129, align 1
  br label %130

130:                                              ; preds = %109
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %4, align 4
  br label %78

133:                                              ; preds = %78
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %135 = load i32, i32* @SCI_End, align 4
  %136 = call i32 @SCI_Control(%struct.TYPE_15__* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %331

139:                                              ; preds = %133
  store i8* %15, i8** %9, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %10, align 8
  store i32 1, i32* %8, align 4
  br label %146

146:                                              ; preds = %235, %139
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %240

149:                                              ; preds = %146
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = and i32 %153, 3
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  store i8 %159, i8* %161, align 1
  br label %162

162:                                              ; preds = %156, %149
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = and i32 %166, 12
  %168 = icmp eq i32 %167, 4
  br i1 %168, label %169, label %186

169:                                              ; preds = %162
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = and i32 %173, 3
  %175 = shl i32 %174, 6
  %176 = load i8*, i8** %9, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = and i32 %179, 252
  %181 = ashr i32 %180, 2
  %182 = or i32 %175, %181
  %183 = trunc i32 %182 to i8
  %184 = load i8*, i8** %10, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8 %183, i8* %185, align 1
  br label %186

186:                                              ; preds = %169, %162
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = and i32 %190, 48
  %192 = icmp eq i32 %191, 16
  br i1 %192, label %193, label %210

193:                                              ; preds = %186
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 3
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = and i32 %197, 15
  %199 = shl i32 %198, 4
  %200 = load i8*, i8** %9, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 2
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = and i32 %203, 240
  %205 = ashr i32 %204, 4
  %206 = or i32 %199, %205
  %207 = trunc i32 %206 to i8
  %208 = load i8*, i8** %10, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  store i8 %207, i8* %209, align 1
  br label %210

210:                                              ; preds = %193, %186
  %211 = load i8*, i8** %9, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 4
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = and i32 %214, 192
  %216 = icmp eq i32 %215, 64
  br i1 %216, label %217, label %234

217:                                              ; preds = %210
  %218 = load i8*, i8** %9, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 4
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = and i32 %221, 63
  %223 = shl i32 %222, 2
  %224 = load i8*, i8** %9, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 3
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = and i32 %227, 192
  %229 = ashr i32 %228, 6
  %230 = or i32 %223, %229
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %10, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 3
  store i8 %231, i8* %233, align 1
  br label %235

234:                                              ; preds = %210
  store i32 0, i32* %8, align 4
  br label %235

235:                                              ; preds = %234, %217
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 5
  store i8* %237, i8** %9, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 4
  store i8* %239, i8** %10, align 8
  br label %146

240:                                              ; preds = %146
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = call i32 @memset(%struct.TYPE_17__* %242, i32 0, i32 4)
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  store i8* %249, i8** %10, align 8
  %250 = load i8*, i8** %10, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 4
  store i8* %251, i8** %10, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = load i8*, i8** %10, align 8
  %257 = call i32 @strncpy(i32 %255, i8* %256, i32 2)
  %258 = load i8*, i8** %10, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 2
  store i8* %259, i8** %10, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = load i8*, i8** %10, align 8
  %265 = call i32 @strncpy(i32 %263, i8* %264, i32 2)
  %266 = load i8*, i8** %10, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 2
  store i8* %267, i8** %10, align 8
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = load i8*, i8** %10, align 8
  %273 = call i32 @strncpy(i32 %271, i8* %272, i32 2)
  %274 = load i8*, i8** %10, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 2
  store i8* %275, i8** %10, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = load i8*, i8** %10, align 8
  %281 = call i32 @strncpy(i32 %279, i8* %280, i32 2)
  %282 = load i8*, i8** %10, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 3
  store i8* %283, i8** %10, align 8
  %284 = load i8*, i8** %10, align 8
  %285 = load i8, i8* %284, align 1
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 0
  store i8 %285, i8* %288, align 8
  %289 = load i8*, i8** %10, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  store i8* %290, i8** %10, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load i8*, i8** %10, align 8
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 0
  %299 = load i8, i8* %298, align 8
  %300 = sext i8 %299 to i32
  %301 = call i32 @strncpy(i32 %294, i8* %295, i32 %300)
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load i8, i8* %304, align 8
  %306 = sext i8 %305 to i32
  %307 = add nsw i32 %306, 1
  %308 = load i8*, i8** %10, align 8
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8* %310, i8** %10, align 8
  %311 = load i8*, i8** %10, align 8
  %312 = load i8, i8* %311, align 1
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 1
  store i8 %312, i8* %315, align 1
  %316 = load i8*, i8** %10, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 1
  store i8* %317, i8** %10, align 8
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = load i8*, i8** %10, align 8
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 1
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = call i32 @strncpy(i32 %321, i8* %322, i32 %327)
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %330 = call i32 @ixj_daa_cid_reset(%struct.TYPE_15__* %329)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %331

331:                                              ; preds = %240, %138, %108, %103, %76, %46, %41, %19
  %332 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SCI_Prepare(%struct.TYPE_15__*) #2

declare dso_local i32 @outb_p(i32, i64) #2

declare dso_local i32 @SCI_Control(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @SCI_WaitHighSCI(%struct.TYPE_15__*) #2

declare dso_local i8* @inb_p(i64) #2

declare dso_local i32 @printk(i8*, i32, i32) #2

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local i32 @ixj_daa_cid_reset(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
