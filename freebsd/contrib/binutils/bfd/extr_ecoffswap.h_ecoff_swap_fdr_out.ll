; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_fdr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_fdr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fdr_ext = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FDR_BITS1_LANG_SH_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_LANG_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_FMERGE_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_FREADIN_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_FBIGENDIAN_BIG = common dso_local global i32 0, align 4
@FDR_BITS2_GLEVEL_SH_BIG = common dso_local global i32 0, align 4
@FDR_BITS2_GLEVEL_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_LANG_SH_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS1_LANG_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS1_FMERGE_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS1_FREADIN_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS1_FBIGENDIAN_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS2_GLEVEL_SH_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS2_GLEVEL_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @ecoff_swap_fdr_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_fdr_out(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fdr_ext*, align 8
  %8 = alloca [1 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.fdr_ext*
  store %struct.fdr_ext* %10, %struct.fdr_ext** %7, align 8
  %11 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = bitcast %struct.TYPE_3__* %11 to i8*
  %14 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 8 %14, i64 104, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 22
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %20 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %19, i32 0, i32 19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ECOFF_PUT_OFF(i32* %15, i32 %18, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 21
  %26 = load i32, i32* %25, align 16
  %27 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %28 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %27, i32 0, i32 18
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @H_PUT_32(i32* %23, i32 %26, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 20
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %36 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %35, i32 0, i32 17
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @H_PUT_32(i32* %31, i32 %34, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 19
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %44 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %43, i32 0, i32 16
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ECOFF_PUT_OFF(i32* %39, i32 %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 18
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %52 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @H_PUT_32(i32* %47, i32 %50, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 17
  %58 = load i32, i32* %57, align 16
  %59 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %60 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @H_PUT_32(i32* %55, i32 %58, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %68 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @H_PUT_32(i32* %63, i32 %66, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 15
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %76 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @H_PUT_32(i32* %71, i32 %74, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %84 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @H_PUT_32(i32* %79, i32 %82, i32 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 16
  %91 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %92 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @H_PUT_32(i32* %87, i32 %90, i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %100 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @H_PUT_32(i32* %95, i32 %98, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 16
  %107 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %108 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @H_PUT_32(i32* %103, i32 %106, i32 %109)
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %116 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @H_PUT_32(i32* %111, i32 %114, i32 %117)
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %124 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @H_PUT_32(i32* %119, i32 %122, i32 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = call i64 @bfd_header_big_endian(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %191

130:                                              ; preds = %3
  %131 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 16
  %134 = load i32, i32* @FDR_BITS1_LANG_SH_BIG, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* @FDR_BITS1_LANG_BIG, align 4
  %137 = and i32 %135, %136
  %138 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 16
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i32, i32* @FDR_BITS1_FMERGE_BIG, align 4
  br label %145

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = or i32 %137, %146
  %148 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @FDR_BITS1_FREADIN_BIG, align 4
  br label %155

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = or i32 %147, %156
  %158 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 16
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @FDR_BITS1_FBIGENDIAN_BIG, align 4
  br label %165

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %162
  %166 = phi i32 [ %163, %162 ], [ 0, %164 ]
  %167 = or i32 %157, %166
  %168 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %169 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %167, i32* %171, align 4
  %172 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @FDR_BITS2_GLEVEL_SH_BIG, align 4
  %176 = shl i32 %174, %175
  %177 = load i32, i32* @FDR_BITS2_GLEVEL_BIG, align 4
  %178 = and i32 %176, %177
  %179 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %180 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 %178, i32* %182, align 4
  %183 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %184 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 0, i32* %186, align 4
  %187 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %188 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 0, i32* %190, align 4
  br label %252

191:                                              ; preds = %3
  %192 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 16
  %195 = load i32, i32* @FDR_BITS1_LANG_SH_LITTLE, align 4
  %196 = shl i32 %194, %195
  %197 = load i32, i32* @FDR_BITS1_LANG_LITTLE, align 4
  %198 = and i32 %196, %197
  %199 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 16
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %191
  %204 = load i32, i32* @FDR_BITS1_FMERGE_LITTLE, align 4
  br label %206

205:                                              ; preds = %191
  br label %206

206:                                              ; preds = %205, %203
  %207 = phi i32 [ %204, %203 ], [ 0, %205 ]
  %208 = or i32 %198, %207
  %209 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* @FDR_BITS1_FREADIN_LITTLE, align 4
  br label %216

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215, %213
  %217 = phi i32 [ %214, %213 ], [ 0, %215 ]
  %218 = or i32 %208, %217
  %219 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 16
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = load i32, i32* @FDR_BITS1_FBIGENDIAN_LITTLE, align 4
  br label %226

225:                                              ; preds = %216
  br label %226

226:                                              ; preds = %225, %223
  %227 = phi i32 [ %224, %223 ], [ 0, %225 ]
  %228 = or i32 %218, %227
  %229 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %230 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 %228, i32* %232, align 4
  %233 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @FDR_BITS2_GLEVEL_SH_LITTLE, align 4
  %237 = shl i32 %235, %236
  %238 = load i32, i32* @FDR_BITS2_GLEVEL_LITTLE, align 4
  %239 = and i32 %237, %238
  %240 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %241 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 %239, i32* %243, align 4
  %244 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %245 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 0, i32* %247, align 4
  %248 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %249 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  store i32 0, i32* %251, align 4
  br label %252

252:                                              ; preds = %226, %165
  %253 = load i32*, i32** %4, align 8
  %254 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %258 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @ECOFF_PUT_OFF(i32* %253, i32 %256, i32 %259)
  %261 = load i32*, i32** %4, align 8
  %262 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.fdr_ext*, %struct.fdr_ext** %7, align 8
  %266 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @ECOFF_PUT_OFF(i32* %261, i32 %264, i32 %267)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ECOFF_PUT_OFF(i32*, i32, i32) #2

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #2

declare dso_local i64 @bfd_header_big_endian(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
