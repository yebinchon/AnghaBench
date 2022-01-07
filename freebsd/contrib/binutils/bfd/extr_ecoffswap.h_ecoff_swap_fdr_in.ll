; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_fdr_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoffswap.h_ecoff_swap_fdr_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.fdr_ext = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FDR_BITS1_LANG_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_LANG_SH_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_FMERGE_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_FREADIN_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_FBIGENDIAN_BIG = common dso_local global i32 0, align 4
@FDR_BITS2_GLEVEL_BIG = common dso_local global i32 0, align 4
@FDR_BITS2_GLEVEL_SH_BIG = common dso_local global i32 0, align 4
@FDR_BITS1_LANG_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS1_LANG_SH_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS1_FMERGE_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS1_FREADIN_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS1_FBIGENDIAN_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS2_GLEVEL_LITTLE = common dso_local global i32 0, align 4
@FDR_BITS2_GLEVEL_SH_LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_3__*)* @ecoff_swap_fdr_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_fdr_in(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [1 x %struct.fdr_ext], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fdr_ext*
  %11 = bitcast %struct.fdr_ext* %8 to i8*
  %12 = bitcast %struct.fdr_ext* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %12, i64 88, i1 false)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %14, i32 0, i32 19
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @ECOFF_GET_OFF(i32* %13, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 23
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %21, i32 0, i32 18
  %23 = load i32, i32* %22, align 16
  %24 = call i8* @H_GET_32(i32* %20, i32 %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %30 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %29, i32 0, i32 17
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @H_GET_32(i32* %28, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 22
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %37 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %36, i32 0, i32 16
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @ECOFF_GET_OFF(i32* %35, i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 21
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %44 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @H_GET_32(i32* %42, i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 20
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %51 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 16
  %53 = call i8* @H_GET_32(i32* %49, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 19
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %58 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @H_GET_32(i32* %56, i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 18
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %65 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @H_GET_32(i32* %63, i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 17
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %72 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @H_GET_32(i32* %70, i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 16
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %79 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 16
  %81 = call i8* @H_GET_32(i32* %77, i32 %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 15
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %86 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @H_GET_32(i32* %84, i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 12
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %93 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 16
  %95 = call i8* @H_GET_32(i32* %91, i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 11
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %100 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @H_GET_32(i32* %98, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 10
  store i8* %102, i8** %104, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %107 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @H_GET_32(i32* %105, i32 %108)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 9
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i64 @bfd_header_big_endian(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %171

115:                                              ; preds = %3
  %116 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %117 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 16
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FDR_BITS1_LANG_BIG, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @FDR_BITS1_LANG_SH_BIG, align 4
  %124 = ashr i32 %122, %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %128 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 16
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @FDR_BITS1_FMERGE_BIG, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 0, %133
  %135 = zext i1 %134 to i32
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %139 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 16
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FDR_BITS1_FREADIN_BIG, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 0, %144
  %146 = zext i1 %145 to i32
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %150 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 16
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @FDR_BITS1_FBIGENDIAN_BIG, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 0, %155
  %157 = zext i1 %156 to i32
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  %160 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %161 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @FDR_BITS2_GLEVEL_BIG, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* @FDR_BITS2_GLEVEL_SH_BIG, align 4
  %168 = ashr i32 %166, %167
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  br label %227

171:                                              ; preds = %3
  %172 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %173 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 16
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @FDR_BITS1_LANG_LITTLE, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @FDR_BITS1_LANG_SH_LITTLE, align 4
  %180 = ashr i32 %178, %179
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  %183 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %184 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 16
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @FDR_BITS1_FMERGE_LITTLE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 0, %189
  %191 = zext i1 %190 to i32
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %195 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 16
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @FDR_BITS1_FREADIN_LITTLE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 0, %200
  %202 = zext i1 %201 to i32
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %206 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 16
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @FDR_BITS1_FBIGENDIAN_LITTLE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 0, %211
  %213 = zext i1 %212 to i32
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 4
  %216 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %217 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @FDR_BITS2_GLEVEL_LITTLE, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* @FDR_BITS2_GLEVEL_SH_LITTLE, align 4
  %224 = ashr i32 %222, %223
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %171, %115
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 8
  store i64 0, i64* %229, align 8
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %232 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i8* @ECOFF_GET_OFF(i32* %230, i32 %233)
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 7
  store i8* %234, i8** %236, align 8
  %237 = load i32*, i32** %4, align 8
  %238 = getelementptr inbounds [1 x %struct.fdr_ext], [1 x %struct.fdr_ext]* %7, i64 0, i64 0
  %239 = getelementptr inbounds %struct.fdr_ext, %struct.fdr_ext* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 16
  %241 = call i8* @ECOFF_GET_OFF(i32* %237, i32 %240)
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 6
  store i8* %241, i8** %243, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @ECOFF_GET_OFF(i32*, i32) #2

declare dso_local i8* @H_GET_32(i32*, i32) #2

declare dso_local i64 @bfd_header_big_endian(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
