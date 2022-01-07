; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_parse_pins5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_parse_pins5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32, %struct.TYPE_11__, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.matrox_bios = type { i32* }

@__const.parse_pins5.wtst_xlat = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 5, i32 6, i32 7, i32 5, i32 2, i32 3], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.matrox_bios*)* @parse_pins5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pins5(%struct.matrox_fb_info* %0, %struct.matrox_bios* %1) #0 {
  %3 = alloca %struct.matrox_fb_info*, align 8
  %4 = alloca %struct.matrox_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %3, align 8
  store %struct.matrox_bios* %1, %struct.matrox_bios** %4, align 8
  %7 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %8 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 8000, i32 6000
  store i32 %14, i32* %5, align 4
  %15 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %16 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 38
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %24 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 38
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul i32 %27, %28
  br label %30

30:                                               ; preds = %22, %21
  %31 = phi i32 [ 600000, %21 ], [ %29, %22 ]
  %32 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %37 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 36
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %56

48:                                               ; preds = %30
  %49 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %50 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 36
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul i32 %53, %54
  br label %56

56:                                               ; preds = %48, %42
  %57 = phi i32 [ %47, %42 ], [ %55, %48 ]
  %58 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %59 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %63 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 37
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 255
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  br label %82

74:                                               ; preds = %56
  %75 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %76 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 37
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = mul i32 %79, %80
  br label %82

82:                                               ; preds = %74, %68
  %83 = phi i32 [ %73, %68 ], [ %81, %74 ]
  %84 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %89 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 123
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 255
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %103

95:                                               ; preds = %82
  %96 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %97 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 123
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = mul i32 %100, %101
  br label %103

103:                                              ; preds = %95, %94
  %104 = phi i32 [ 256000, %94 ], [ %102, %95 ]
  %105 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %106 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %110 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 121
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 255
  br i1 %114, label %115, label %121

115:                                              ; preds = %103
  %116 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %117 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  br label %129

121:                                              ; preds = %103
  %122 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %123 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 121
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = mul i32 %126, %127
  br label %129

129:                                              ; preds = %121, %115
  %130 = phi i32 [ %120, %115 ], [ %128, %121 ]
  %131 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %132 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 4
  %135 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %136 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 122
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 255
  br i1 %140, label %141, label %147

141:                                              ; preds = %129
  %142 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %143 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  br label %155

147:                                              ; preds = %129
  %148 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %149 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 122
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %5, align 4
  %154 = mul i32 %152, %153
  br label %155

155:                                              ; preds = %147, %141
  %156 = phi i32 [ %146, %141 ], [ %154, %147 ]
  %157 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %158 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  store i32 %156, i32* %160, align 4
  %161 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %162 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 92
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 255
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %175

168:                                              ; preds = %155
  %169 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %170 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 92
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %173, 4000
  br label %175

175:                                              ; preds = %168, %167
  %176 = phi i32 [ 284000, %167 ], [ %174, %168 ]
  %177 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %178 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  store i32 %176, i32* %180, align 4
  %181 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %182 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  store i32 %176, i32* %184, align 4
  %185 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %186 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 48
  %189 = call i8* @get_unaligned_le32(i32* %188)
  %190 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %191 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 7
  store i8* %189, i8** %193, align 8
  %194 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %195 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 52
  %198 = call i8* @get_unaligned_le32(i32* %197)
  %199 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %200 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 6
  store i8* %198, i8** %202, align 8
  %203 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %204 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 94
  %207 = call i8* @get_unaligned_le32(i32* %206)
  %208 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %209 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 5
  store i8* %207, i8** %211, align 8
  %212 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %213 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 98
  %216 = call i8* @get_unaligned_le32(i32* %215)
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %219 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  store i32 %217, i32* %221, align 8
  %222 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %223 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 102
  %226 = call i8* @get_unaligned_le32(i32* %225)
  %227 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %228 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 4
  store i8* %226, i8** %230, align 8
  %231 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %232 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 106
  %235 = call i8* @get_unaligned_le32(i32* %234)
  %236 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %237 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 3
  store i8* %235, i8** %239, align 8
  %240 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %241 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 110
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 1
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 14318, i32 27000
  %249 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %250 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  store i32 %248, i32* %252, align 8
  %253 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %254 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 114
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 96
  %259 = icmp eq i32 %258, 32
  %260 = zext i1 %259 to i32
  %261 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %262 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  store i32 %260, i32* %264, align 8
  %265 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %266 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 115
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 2
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i32
  %273 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %274 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  store i32 %272, i32* %276, align 4
  %277 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %278 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 115
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 1
  %283 = icmp ne i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %286 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 2
  store i32 %284, i32* %288, align 8
  %289 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %290 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i32 16384, i32 0
  %297 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %298 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 1
  store i32 %296, i32* %300, align 4
  %301 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %302 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 115
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %175
  %309 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %310 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %315 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 2
  store i32 %313, i32* %317, align 8
  br label %340

318:                                              ; preds = %175
  %319 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %319, i8* align 16 bitcast ([8 x i32]* @__const.parse_pins5.wtst_xlat to i8*), i64 32, i1 false)
  %320 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %321 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = and i32 %324, -8
  %326 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %327 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = and i32 %330, 7
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = or i32 %325, %334
  %336 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %337 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 2
  store i32 %335, i32* %339, align 8
  br label %340

340:                                              ; preds = %318, %308
  %341 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %342 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 47
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 %345, 4000
  %347 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %348 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %347, i32 0, i32 0
  store i32 %346, i32* %348, align 8
  ret i32 0
}

declare dso_local i8* @get_unaligned_le32(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
