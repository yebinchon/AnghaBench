; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_vol5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_vol5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vblk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vblk_volu }
%struct.vblk_volu = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"r_objid %d < 0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"r_name %d < 0\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"r_vtype %d < 0\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"r_disable_drive_letter %d < 0\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"r_child %d < 0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"r_size %d < 0\00", align 1
@VBLK_FLAG_VOLU_ID1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"r_id1 %d < 0\00", align 1
@VBLK_FLAG_VOLU_ID2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"r_id2 %d < 0\00", align 1
@VBLK_FLAG_VOLU_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"r_size2 %d < 0\00", align 1
@VBLK_FLAG_VOLU_DRIVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"r_drive %d < 0\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"len %d < 0\00", align 1
@VBLK_SIZE_VOL5 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"len %d > BE32(buffer + 0x14) %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.vblk*)* @ldm_parse_vol5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_vol5(i32* %0, i32 %1, %struct.vblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vblk_volu*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vblk* %2, %struct.vblk** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.vblk*, %struct.vblk** %7, align 8
  %24 = icmp ne %struct.vblk* %23, null
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %3
  %27 = phi i1 [ true, %3 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ldm_relative(i32* %30, i32 %31, i32 24, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %4, align 4
  br label %256

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ldm_relative(i32* %39, i32 %40, i32 24, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %4, align 4
  br label %256

48:                                               ; preds = %38
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ldm_relative(i32* %49, i32 %50, i32 24, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  store i32 0, i32* %4, align 4
  br label %256

58:                                               ; preds = %48
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ldm_relative(i32* %59, i32 %60, i32 24, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i32 0, i32* %4, align 4
  br label %256

68:                                               ; preds = %58
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ldm_relative(i32* %69, i32 %70, i32 45, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  store i32 0, i32* %4, align 4
  br label %256

78:                                               ; preds = %68
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @ldm_relative(i32* %79, i32 %80, i32 61, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %13, align 4
  %87 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  store i32 0, i32* %4, align 4
  br label %256

88:                                               ; preds = %78
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 18
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VBLK_FLAG_VOLU_ID1, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @ldm_relative(i32* %96, i32 %97, i32 82, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %14, align 4
  %104 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  store i32 0, i32* %4, align 4
  br label %256

105:                                              ; preds = %95
  br label %108

106:                                              ; preds = %88
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %106, %105
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 18
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @VBLK_FLAG_VOLU_ID2, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @ldm_relative(i32* %116, i32 %117, i32 82, i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* %15, align 4
  %124 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  store i32 0, i32* %4, align 4
  br label %256

125:                                              ; preds = %115
  br label %128

126:                                              ; preds = %108
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %126, %125
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 18
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @VBLK_FLAG_VOLU_SIZE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %128
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @ldm_relative(i32* %136, i32 %137, i32 82, i32 %138)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %16, align 4
  %144 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %143)
  store i32 0, i32* %4, align 4
  br label %256

145:                                              ; preds = %135
  br label %148

146:                                              ; preds = %128
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 18
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @VBLK_FLAG_VOLU_DRIVE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %148
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @ldm_relative(i32* %156, i32 %157, i32 82, i32 %158)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* %17, align 4
  %164 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %163)
  store i32 0, i32* %4, align 4
  br label %256

165:                                              ; preds = %155
  br label %168

166:                                              ; preds = %148
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %17, align 4
  br label %168

168:                                              ; preds = %166, %165
  %169 = load i32, i32* %17, align 4
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* %18, align 4
  %174 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %173)
  store i32 0, i32* %4, align 4
  br label %256

175:                                              ; preds = %168
  %176 = load i64, i64* @VBLK_SIZE_VOL5, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 20
  %184 = call i32 @get_unaligned_be32(i32* %183)
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %175
  %187 = load i32, i32* %18, align 4
  %188 = load i32*, i32** %5, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 20
  %190 = call i32 @get_unaligned_be32(i32* %189)
  %191 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %187, i32 %190)
  store i32 0, i32* %4, align 4
  br label %256

192:                                              ; preds = %175
  %193 = load %struct.vblk*, %struct.vblk** %7, align 8
  %194 = getelementptr inbounds %struct.vblk, %struct.vblk* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  store %struct.vblk_volu* %195, %struct.vblk_volu** %19, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 24
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load %struct.vblk_volu*, %struct.vblk_volu** %19, align 8
  %202 = getelementptr inbounds %struct.vblk_volu, %struct.vblk_volu* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ldm_get_vstr(i32* %200, i32 %203, i32 4)
  %205 = load %struct.vblk_volu*, %struct.vblk_volu** %19, align 8
  %206 = getelementptr inbounds %struct.vblk_volu, %struct.vblk_volu* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %5, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 24
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = call i32 @memcpy(i32 %207, i32* %212, i32 4)
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 61
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = call i32 @ldm_get_vnum(i32* %218)
  %220 = load %struct.vblk_volu*, %struct.vblk_volu** %19, align 8
  %221 = getelementptr inbounds %struct.vblk_volu, %struct.vblk_volu* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 65, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.vblk_volu*, %struct.vblk_volu** %19, align 8
  %229 = getelementptr inbounds %struct.vblk_volu, %struct.vblk_volu* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 4
  %230 = load %struct.vblk_volu*, %struct.vblk_volu** %19, align 8
  %231 = getelementptr inbounds %struct.vblk_volu, %struct.vblk_volu* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %5, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 66
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = call i32 @memcpy(i32 %232, i32* %237, i32 4)
  %239 = load i32*, i32** %5, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 18
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @VBLK_FLAG_VOLU_DRIVE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %192
  %246 = load i32*, i32** %5, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 82
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load %struct.vblk_volu*, %struct.vblk_volu** %19, align 8
  %252 = getelementptr inbounds %struct.vblk_volu, %struct.vblk_volu* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @ldm_get_vstr(i32* %250, i32 %253, i32 4)
  br label %255

255:                                              ; preds = %245, %192
  store i32 1, i32* %4, align 4
  br label %256

256:                                              ; preds = %255, %186, %172, %162, %142, %122, %102, %85, %75, %65, %55, %45, %35
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldm_relative(i32*, i32, i32, i32) #1

declare dso_local i32 @ldm_error(i8*, i32, ...) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @ldm_get_vstr(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ldm_get_vnum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
