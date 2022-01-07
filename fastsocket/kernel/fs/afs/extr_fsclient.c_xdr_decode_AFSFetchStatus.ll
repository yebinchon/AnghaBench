; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_xdr_decode_AFSFetchStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_xdr_decode_AFSFetchStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_file_status = type { i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_5__, i8*, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }

@S_IALLUGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vnode time %lx, %lx\00", align 1
@AFS_VNODE_UNSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"vnode changed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"vnode modified %llx on {%x:%u}\00", align 1
@AFS_VNODE_MODIFIED = common dso_local global i32 0, align 4
@AFS_VNODE_ZAP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.afs_file_status*, %struct.afs_vnode*, i32*)* @xdr_decode_AFSFetchStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_decode_AFSFetchStatus(i32** %0, %struct.afs_file_status* %1, %struct.afs_vnode* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca %struct.afs_file_status*, align 8
  %7 = alloca %struct.afs_vnode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.afs_file_status* %1, %struct.afs_file_status** %6, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %7, align 8
  store i32* %3, i32** %8, align 8
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %10, align 8
  %30 = load i32, i32* %28, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %33 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %32, i32 0, i32 14
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %10, align 8
  %37 = load i32, i32* %35, align 4
  %38 = call i8* @ntohl(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %41 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* %14, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %49 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %10, align 8
  %54 = load i32, i32* %52, align 4
  %55 = call i8* @ntohl(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %16, align 4
  %57 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %58 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %66 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %51
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %10, align 8
  %70 = load i32, i32* %68, align 4
  %71 = call i8* @ntohl(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  %75 = load i32, i32* %73, align 4
  %76 = call i8* @ntohl(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %67
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %10, align 8
  %81 = load i32, i32* %79, align 4
  %82 = call i8* @ntohl(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %17, align 4
  %84 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %85 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %17, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %93 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %10, align 8
  %98 = load i32, i32* %96, align 4
  %99 = call i8* @ntohl(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %18, align 4
  %101 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %102 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %14, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %110 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %10, align 8
  %115 = load i32, i32* %113, align 4
  %116 = call i8* @ntohl(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %19, align 4
  %118 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %119 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* %14, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %127 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %126, i32 0, i32 11
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %10, align 8
  %132 = load i32, i32* %130, align 4
  %133 = call i8* @ntohl(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  store i32 %134, i32* %20, align 4
  %135 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %136 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %20, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %14, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %20, align 4
  %143 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %144 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %143, i32 0, i32 10
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %129
  br label %146

146:                                              ; preds = %145
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %10, align 8
  %149 = load i32, i32* %147, align 4
  %150 = call i8* @ntohl(i32 %149)
  %151 = ptrtoint i8* %150 to i32
  store i32 %151, i32* %21, align 4
  %152 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %153 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %21, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32, i32* %14, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %21, align 4
  %160 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %161 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %10, align 8
  %166 = load i32, i32* %164, align 4
  %167 = call i8* @ntohl(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  store i32 %168, i32* %22, align 4
  %169 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %170 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %22, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load i32, i32* %14, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %179 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  store i32 %177, i32* %180, align 8
  br label %181

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %181
  %183 = load i32*, i32** %10, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %10, align 8
  %185 = load i32, i32* %183, align 4
  %186 = call i8* @ntohl(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  store i32 %187, i32* %23, align 4
  %188 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %189 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %23, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load i32, i32* %14, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %23, align 4
  %197 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %198 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %182
  %201 = load i32*, i32** %10, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %10, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %10, align 8
  %205 = load i32, i32* %203, align 4
  %206 = call i8* @ntohl(i32 %205)
  %207 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %208 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %207, i32 0, i32 8
  store i8* %206, i8** %208, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %10, align 8
  %211 = load i32, i32* %209, align 4
  %212 = call i8* @ntohl(i32 %211)
  %213 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %214 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %200
  %216 = load i32*, i32** %10, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %10, align 8
  %218 = load i32, i32* %216, align 4
  %219 = call i8* @ntohl(i32 %218)
  %220 = ptrtoint i8* %219 to i32
  store i32 %220, i32* %24, align 4
  %221 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %222 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %24, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load i32, i32* %14, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %24, align 4
  %229 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %230 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %215
  %232 = load i32*, i32** %10, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %10, align 8
  %234 = load i32*, i32** %10, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %10, align 8
  %236 = load i32, i32* %234, align 4
  %237 = call i8* @ntohl(i32 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = shl i32 %238, 32
  %240 = load i32, i32* %12, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %231
  %243 = load i32*, i32** %10, align 8
  %244 = getelementptr inbounds i32, i32* %243, i32 1
  store i32* %244, i32** %10, align 8
  %245 = load i32, i32* %243, align 4
  %246 = call i8* @ntohl(i32 %245)
  %247 = ptrtoint i8* %246 to i32
  store i32 %247, i32* %25, align 4
  %248 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %249 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %25, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i32, i32* %14, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* %25, align 4
  %256 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %257 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %256, i32 0, i32 9
  store i32 %255, i32* %257, align 8
  br label %258

258:                                              ; preds = %242
  %259 = load i32*, i32** %10, align 8
  %260 = getelementptr inbounds i32, i32* %259, i32 1
  store i32* %260, i32** %10, align 8
  %261 = load i32, i32* %259, align 4
  %262 = call i8* @ntohl(i32 %261)
  %263 = ptrtoint i8* %262 to i32
  %264 = shl i32 %263, 32
  %265 = load i32, i32* %13, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %13, align 4
  %267 = load i32*, i32** %10, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %10, align 8
  %269 = load i32*, i32** %10, align 8
  %270 = load i32**, i32*** %5, align 8
  store i32* %269, i32** %270, align 8
  %271 = load i32, i32* %13, align 4
  %272 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %273 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %271, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %258
  %277 = load i32, i32* %13, align 4
  %278 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %279 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load i32, i32* %14, align 4
  %281 = or i32 %280, 1
  store i32 %281, i32* %14, align 4
  br label %282

282:                                              ; preds = %276, %258
  %283 = load i32, i32* @S_IALLUGO, align 4
  %284 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %285 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = and i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %289 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %288, i32 0, i32 8
  %290 = load i8*, i8** %289, align 8
  %291 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %292 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %291, i32 0, i32 2
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %290, i8* %293)
  %295 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %296 = icmp ne %struct.afs_vnode* %295, null
  br i1 %296, label %297, label %386

297:                                              ; preds = %282
  %298 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %299 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %303 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %302, i32 0, i32 7
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  store i32 %301, i32* %304, align 8
  %305 = load i32, i32* %14, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %362

307:                                              ; preds = %297
  %308 = load i32, i32* @AFS_VNODE_UNSET, align 4
  %309 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %310 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %309, i32 0, i32 0
  %311 = call i32 @test_bit(i32 %308, i32* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %362, label %313

313:                                              ; preds = %307
  %314 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %315 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %316 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %315, i32 0, i32 2
  %317 = load i32, i32* %13, align 4
  %318 = call i32 @i_size_write(%struct.TYPE_8__* %316, i32 %317)
  %319 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %320 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %323 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 7
  store i32 %321, i32* %324, align 8
  %325 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %326 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %329 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 6
  store i32 %327, i32* %330, align 4
  %331 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %332 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %336 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 5
  store i32 %334, i32* %337, align 8
  %338 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %339 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %342 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 4
  store i32 %340, i32* %343, align 4
  %344 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %345 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  store i32 %347, i32* %11, align 4
  %348 = load i32, i32* @S_IALLUGO, align 4
  %349 = xor i32 %348, -1
  %350 = load i32, i32* %11, align 4
  %351 = and i32 %350, %349
  store i32 %351, i32* %11, align 4
  %352 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %353 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* %11, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %11, align 4
  %357 = call i32 (...) @barrier()
  %358 = load i32, i32* %11, align 4
  %359 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %360 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 3
  store i32 %358, i32* %361, align 8
  br label %362

362:                                              ; preds = %313, %307, %297
  %363 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %364 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %363, i32 0, i32 2
  %365 = load i8*, i8** %364, align 8
  %366 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %367 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  store i8* %365, i8** %369, align 8
  %370 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %371 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 2
  %373 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %374 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  %376 = bitcast %struct.TYPE_6__* %372 to i8*
  %377 = bitcast %struct.TYPE_6__* %375 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %376, i8* align 8 %377, i64 8, i1 false)
  %378 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %379 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 1
  %381 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %382 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = bitcast %struct.TYPE_6__* %380 to i8*
  %385 = bitcast %struct.TYPE_6__* %383 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %384, i8* align 8 %385, i64 8, i1 false)
  br label %386

386:                                              ; preds = %362, %282
  %387 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %388 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  store i32 %389, i32* %9, align 4
  %390 = load i32*, i32** %8, align 8
  %391 = icmp ne i32* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %386
  %393 = load i32*, i32** %8, align 8
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %9, align 4
  br label %395

395:                                              ; preds = %392, %386
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* %12, align 4
  %398 = icmp ne i32 %396, %397
  br i1 %398, label %399, label %432

399:                                              ; preds = %395
  %400 = load i32, i32* %12, align 4
  %401 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %402 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %401, i32 0, i32 1
  store i32 %400, i32* %402, align 4
  %403 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %404 = icmp ne %struct.afs_vnode* %403, null
  br i1 %404, label %405, label %431

405:                                              ; preds = %399
  %406 = load i32, i32* @AFS_VNODE_UNSET, align 4
  %407 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %408 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %407, i32 0, i32 0
  %409 = call i32 @test_bit(i32 %406, i32* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %431, label %411

411:                                              ; preds = %405
  %412 = load i32, i32* %12, align 4
  %413 = sext i32 %412 to i64
  %414 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %415 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %419 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %413, i32 %417, i32 %421)
  %423 = load i32, i32* @AFS_VNODE_MODIFIED, align 4
  %424 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %425 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %424, i32 0, i32 0
  %426 = call i32 @set_bit(i32 %423, i32* %425)
  %427 = load i32, i32* @AFS_VNODE_ZAP_DATA, align 4
  %428 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %429 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %428, i32 0, i32 0
  %430 = call i32 @set_bit(i32 %427, i32* %429)
  br label %431

431:                                              ; preds = %411, %405, %399
  br label %440

432:                                              ; preds = %395
  %433 = load i32*, i32** %8, align 8
  %434 = icmp ne i32* %433, null
  br i1 %434, label %435, label %439

435:                                              ; preds = %432
  %436 = load i32, i32* %12, align 4
  %437 = load %struct.afs_file_status*, %struct.afs_file_status** %6, align 8
  %438 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %437, i32 0, i32 1
  store i32 %436, i32* %438, align 4
  br label %439

439:                                              ; preds = %435, %432
  br label %440

440:                                              ; preds = %439, %431
  ret void
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i_size_write(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @barrier(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
