; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_read_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_read_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFS2_SB_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't read superblock\0A\00", align 1
@GFS2_BASIC_BLOCK_SHIFT = common dso_local global i32 0, align 4
@GFS2_NBBY = common dso_local global i32 0, align 4
@GFS2_DIR_MAX_DEPTH = common dso_local global i32 0, align 4
@GFS2_MAX_META_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @gfs2_read_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_read_sb(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %19 = load i32, i32* @GFS2_SB_ADDR, align 4
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %19, %22
  %24 = call i32 @gfs2_read_super(%struct.gfs2_sbd* %18, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %32 = call i32 @fs_err(%struct.gfs2_sbd* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %347

35:                                               ; preds = %2
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 15
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @gfs2_check_sb(%struct.gfs2_sbd* %36, %struct.TYPE_2__* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %347

45:                                               ; preds = %35
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %47 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %46, i32 0, i32 15
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GFS2_BASIC_BLOCK_SHIFT, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %55 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %61 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %60, i32 0, i32 15
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 4
  %66 = udiv i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %69 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %71 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 4
  %76 = udiv i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %79 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %81 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %80, i32 0, i32 15
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %88 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %90 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 2
  %94 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %95 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %97 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %102 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %104 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = udiv i64 %106, 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %110 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %112 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = sub i64 %115, 4
  %117 = udiv i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %120 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 8
  %121 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %122 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %125, 4
  %127 = load i32, i32* @GFS2_NBBY, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %126, %128
  %130 = trunc i64 %129 to i32
  %131 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %132 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @GFS2_DIR_MAX_DEPTH, align 4
  %134 = shl i32 1, %133
  %135 = sext i32 %134 to i64
  %136 = mul i64 8, %135
  %137 = trunc i64 %136 to i32
  %138 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %139 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @DIV_ROUND_UP(i32 %137, i32 %140)
  store i32 %141, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %149, %45
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %146 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %144, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %152 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @DIV_ROUND_UP(i32 %150, i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %7, align 4
  br label %143

158:                                              ; preds = %143
  %159 = load i32, i32* @GFS2_DIR_MAX_DEPTH, align 4
  %160 = add nsw i32 2, %159
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %163, %164
  %166 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %167 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %166, i32 0, i32 10
  store i32 %165, i32* %167, align 8
  %168 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %169 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = sub i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %176 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %175, i32 0, i32 11
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 %174, i32* %178, align 4
  %179 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %180 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %179, i32 0, i32 15
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %184 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %182, %185
  %187 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %188 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %187, i32 0, i32 11
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %186, i32* %190, align 4
  store i32 2, i32* %10, align 4
  br label %191

191:                                              ; preds = %237, %158
  %192 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %193 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %192, i32 0, i32 11
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sub i32 %195, 1
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %201 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %199, %202
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  store i8* %205, i8** %12, align 8
  %206 = load i8*, i8** %12, align 8
  store i8* %206, i8** %13, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %209 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @do_div(i8* %207, i32 %210)
  store i32 %211, i32* %14, align 4
  %212 = load i8*, i8** %13, align 8
  %213 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %214 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %213, i32 0, i32 11
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sub i32 %216, 1
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  %223 = icmp ne i8* %212, %222
  br i1 %223, label %227, label %224

224:                                              ; preds = %191
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224, %191
  br label %240

228:                                              ; preds = %224
  %229 = load i8*, i8** %12, align 8
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %232 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %231, i32 0, i32 11
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %230, i32* %236, align 4
  br label %237

237:                                              ; preds = %228
  %238 = load i32, i32* %10, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %191

240:                                              ; preds = %227
  %241 = load i32, i32* %10, align 4
  %242 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %243 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %242, i32 0, i32 12
  store i32 %241, i32* %243, align 8
  %244 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %245 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %244, i32 0, i32 11
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 -1, i32* %249, align 4
  %250 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %251 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %252 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %251, i32 0, i32 12
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @GFS2_MAX_META_HEIGHT, align 4
  %255 = icmp ule i32 %253, %254
  %256 = zext i1 %255 to i32
  %257 = call i32 @gfs2_assert(%struct.gfs2_sbd* %250, i32 %256)
  %258 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %259 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = sub i64 %262, 4
  %264 = trunc i64 %263 to i32
  %265 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %266 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %265, i32 0, i32 13
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 %264, i32* %268, align 4
  %269 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %270 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %273 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = mul nsw i32 %271, %274
  %276 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %277 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %276, i32 0, i32 13
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  store i32 %275, i32* %279, align 4
  store i32 2, i32* %10, align 4
  br label %280

280:                                              ; preds = %326, %240
  %281 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %282 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %281, i32 0, i32 13
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sub i32 %284, 1
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %290 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = mul nsw i32 %288, %291
  %293 = sext i32 %292 to i64
  %294 = inttoptr i64 %293 to i8*
  store i8* %294, i8** %15, align 8
  %295 = load i8*, i8** %15, align 8
  store i8* %295, i8** %16, align 8
  %296 = load i8*, i8** %16, align 8
  %297 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %298 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @do_div(i8* %296, i32 %299)
  store i32 %300, i32* %17, align 4
  %301 = load i8*, i8** %16, align 8
  %302 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %303 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %302, i32 0, i32 13
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sub i32 %305, 1
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = inttoptr i64 %310 to i8*
  %312 = icmp ne i8* %301, %311
  br i1 %312, label %316, label %313

313:                                              ; preds = %280
  %314 = load i32, i32* %17, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313, %280
  br label %329

317:                                              ; preds = %313
  %318 = load i8*, i8** %15, align 8
  %319 = ptrtoint i8* %318 to i32
  %320 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %321 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %320, i32 0, i32 13
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %10, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 %319, i32* %325, align 4
  br label %326

326:                                              ; preds = %317
  %327 = load i32, i32* %10, align 4
  %328 = add i32 %327, 1
  store i32 %328, i32* %10, align 4
  br label %280

329:                                              ; preds = %316
  %330 = load i32, i32* %10, align 4
  %331 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %332 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %331, i32 0, i32 14
  store i32 %330, i32* %332, align 8
  %333 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %334 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %333, i32 0, i32 13
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %10, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  store i32 -1, i32* %338, align 4
  %339 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %340 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %341 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %340, i32 0, i32 14
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @GFS2_MAX_META_HEIGHT, align 4
  %344 = icmp ule i32 %342, %343
  %345 = zext i1 %344 to i32
  %346 = call i32 @gfs2_assert(%struct.gfs2_sbd* %339, i32 %345)
  store i32 0, i32* %3, align 4
  br label %347

347:                                              ; preds = %329, %43, %33
  %348 = load i32, i32* %3, align 4
  ret i32 %348
}

declare dso_local i32 @gfs2_read_super(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*) #1

declare dso_local i32 @gfs2_check_sb(%struct.gfs2_sbd*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @do_div(i8*, i32) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
