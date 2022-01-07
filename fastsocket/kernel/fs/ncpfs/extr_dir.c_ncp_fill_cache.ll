; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_fill_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (%struct.dentry*, %struct.qstr*)* }
%struct.dentry = type { i8*, %struct.inode*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.inode = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.qstr = type { i32, i32*, i32 }
%struct.file = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dentry* }
%struct.ncp_cache_control = type { i64, i64, i32, i64, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.dentry** }
%struct.ncp_entry_info = type { i8*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@NCP_MAXPATHLEN = common dso_local global i32 0, align 4
@ncp_dentry_operations = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@NCP_DIRCACHE_SIZE = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64 (i8*, i32*, i32, i64, i8*, i32)*, %struct.ncp_cache_control*, %struct.ncp_entry_info*)* @ncp_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncp_fill_cache(%struct.file* %0, i8* %1, i64 (i8*, i32*, i32, i64, i8*, i32)* %2, %struct.ncp_cache_control* %3, %struct.ncp_entry_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i32*, i32, i64, i8*, i32)*, align 8
  %10 = alloca %struct.ncp_cache_control*, align 8
  %11 = alloca %struct.ncp_entry_info*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.ncp_cache_control, align 8
  %17 = alloca %struct.qstr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 (i8*, i32*, i32, i64, i8*, i32)* %2, i64 (i8*, i32*, i32, i64, i8*, i32)** %9, align 8
  store %struct.ncp_cache_control* %3, %struct.ncp_cache_control** %10, align 8
  store %struct.ncp_entry_info* %4, %struct.ncp_entry_info** %11, align 8
  %24 = load %struct.file*, %struct.file** %7, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  store %struct.dentry* %27, %struct.dentry** %13, align 8
  %28 = load %struct.dentry*, %struct.dentry** %13, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %15, align 8
  %31 = load %struct.ncp_cache_control*, %struct.ncp_cache_control** %10, align 8
  %32 = bitcast %struct.ncp_cache_control* %16 to i8*
  %33 = bitcast %struct.ncp_cache_control* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 56, i1 false)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %34 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %21, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %22, align 8
  %39 = mul nuw i64 4, %36
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %15, align 8
  %43 = call i32 @NCP_SERVER(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %45 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %11, align 8
  %46 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %11, align 8
  %50 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %15, align 8
  %54 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %11, align 8
  %55 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ncp_preserve_entry_case(%struct.inode* %53, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @ncp_vol2io(i32 %43, i32* %38, i32* %44, i32 %48, i32 %52, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

65:                                               ; preds = %5
  %66 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  store i32* %38, i32** %66, align 8
  %67 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @full_name_hash(i32* %68, i32 %70)
  %72 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.dentry*, %struct.dentry** %13, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 2
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %65
  %78 = load %struct.dentry*, %struct.dentry** %13, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64 (%struct.dentry*, %struct.qstr*)*, i64 (%struct.dentry*, %struct.qstr*)** %81, align 8
  %83 = icmp ne i64 (%struct.dentry*, %struct.qstr*)* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.dentry*, %struct.dentry** %13, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 2
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64 (%struct.dentry*, %struct.qstr*)*, i64 (%struct.dentry*, %struct.qstr*)** %88, align 8
  %90 = load %struct.dentry*, %struct.dentry** %13, align 8
  %91 = call i64 %89(%struct.dentry* %90, %struct.qstr* %17)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %240

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %77, %65
  %96 = load %struct.dentry*, %struct.dentry** %13, align 8
  %97 = call %struct.dentry* @d_lookup(%struct.dentry* %96, %struct.qstr* %17)
  store %struct.dentry* %97, %struct.dentry** %12, align 8
  %98 = load %struct.dentry*, %struct.dentry** %12, align 8
  %99 = icmp ne %struct.dentry* %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.dentry*, %struct.dentry** %13, align 8
  %102 = call %struct.dentry* @d_alloc(%struct.dentry* %101, %struct.qstr* %17)
  store %struct.dentry* %102, %struct.dentry** %12, align 8
  %103 = load %struct.dentry*, %struct.dentry** %12, align 8
  %104 = icmp ne %struct.dentry* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %240

106:                                              ; preds = %100
  br label %120

107:                                              ; preds = %95
  store i32 1, i32* %19, align 4
  %108 = load %struct.dentry*, %struct.dentry** %12, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.dentry*, %struct.dentry** %12, align 8
  %116 = getelementptr inbounds %struct.dentry, %struct.dentry* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @memcpy(i8* %112, i32* %114, i32 %118)
  br label %120

120:                                              ; preds = %107, %106
  %121 = load %struct.dentry*, %struct.dentry** %12, align 8
  %122 = getelementptr inbounds %struct.dentry, %struct.dentry* %121, i32 0, i32 1
  %123 = load %struct.inode*, %struct.inode** %122, align 8
  %124 = icmp ne %struct.inode* %123, null
  br i1 %124, label %154, label %125

125:                                              ; preds = %120
  %126 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %11, align 8
  %127 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.inode*, %struct.inode** %15, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @iunique(i32 %130, i32 2)
  %132 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %11, align 8
  %133 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load %struct.inode*, %struct.inode** %15, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %11, align 8
  %138 = call %struct.inode* @ncp_iget(i32 %136, %struct.ncp_entry_info* %137)
  store %struct.inode* %138, %struct.inode** %14, align 8
  %139 = load %struct.inode*, %struct.inode** %14, align 8
  %140 = icmp ne %struct.inode* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %125
  %142 = load %struct.dentry*, %struct.dentry** %12, align 8
  %143 = getelementptr inbounds %struct.dentry, %struct.dentry* %142, i32 0, i32 2
  store %struct.TYPE_9__* @ncp_dentry_operations, %struct.TYPE_9__** %143, align 8
  %144 = load %struct.dentry*, %struct.dentry** %12, align 8
  %145 = load %struct.inode*, %struct.inode** %14, align 8
  %146 = call i32 @d_instantiate(%struct.dentry* %144, %struct.inode* %145)
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %141
  %150 = load %struct.dentry*, %struct.dentry** %12, align 8
  %151 = call i32 @d_rehash(%struct.dentry* %150)
  br label %152

152:                                              ; preds = %149, %141
  br label %153

153:                                              ; preds = %152, %125
  br label %160

154:                                              ; preds = %120
  %155 = load %struct.dentry*, %struct.dentry** %12, align 8
  %156 = getelementptr inbounds %struct.dentry, %struct.dentry* %155, i32 0, i32 1
  %157 = load %struct.inode*, %struct.inode** %156, align 8
  %158 = load %struct.ncp_entry_info*, %struct.ncp_entry_info** %11, align 8
  %159 = call i32 @ncp_update_inode2(%struct.inode* %157, %struct.ncp_entry_info* %158)
  br label %160

160:                                              ; preds = %154, %153
  %161 = load %struct.dentry*, %struct.dentry** %12, align 8
  %162 = getelementptr inbounds %struct.dentry, %struct.dentry* %161, i32 0, i32 1
  %163 = load %struct.inode*, %struct.inode** %162, align 8
  %164 = icmp ne %struct.inode* %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = load %struct.dentry*, %struct.dentry** %12, align 8
  %167 = getelementptr inbounds %struct.dentry, %struct.dentry* %166, i32 0, i32 1
  %168 = load %struct.inode*, %struct.inode** %167, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %20, align 8
  %171 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to i8*
  %174 = load %struct.dentry*, %struct.dentry** %12, align 8
  %175 = getelementptr inbounds %struct.dentry, %struct.dentry* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load %struct.dentry*, %struct.dentry** %12, align 8
  %177 = call i32 @ncp_new_dentry(%struct.dentry* %176)
  br label %178

178:                                              ; preds = %165, %160
  %179 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NCP_DIRCACHE_SIZE, align 8
  %182 = icmp uge i64 %180, %181
  br i1 %182, label %183, label %224

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @kunmap(i64 %189)
  %191 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @SetPageUptodate(i64 %192)
  %194 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @unlock_page(i64 %195)
  %197 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @page_cache_release(i64 %198)
  br label %200

200:                                              ; preds = %187, %183
  %201 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %201, align 8
  %202 = load i64, i64* @NCP_DIRCACHE_SIZE, align 8
  %203 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = sub i64 %204, %202
  store i64 %205, i64* %203, align 8
  %206 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  %209 = load %struct.inode*, %struct.inode** %15, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @grab_cache_page(i32* %210, i32 %212)
  %214 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 6
  store i64 %213, i64* %214, align 8
  %215 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 6
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %200
  %219 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = call %struct.TYPE_10__* @kmap(i64 %220)
  %222 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 5
  store %struct.TYPE_10__* %221, %struct.TYPE_10__** %222, align 8
  br label %223

223:                                              ; preds = %218, %200
  br label %224

224:                                              ; preds = %223, %178
  %225 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 5
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = icmp ne %struct.TYPE_10__* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %224
  %229 = load %struct.dentry*, %struct.dentry** %12, align 8
  %230 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 5
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load %struct.dentry**, %struct.dentry*** %232, align 8
  %234 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.dentry*, %struct.dentry** %233, i64 %235
  store %struct.dentry* %229, %struct.dentry** %236, align 8
  store i32 1, i32* %18, align 4
  br label %237

237:                                              ; preds = %228, %224
  %238 = load %struct.dentry*, %struct.dentry** %12, align 8
  %239 = call i32 @dput(%struct.dentry* %238)
  br label %240

240:                                              ; preds = %237, %105, %93
  %241 = load i32, i32* %18, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 4
  store i32 0, i32* %244, align 8
  br label %245

245:                                              ; preds = %243, %240
  %246 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %293, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.file*, %struct.file** %7, align 8
  %253 = getelementptr inbounds %struct.file, %struct.file* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %251, %254
  br i1 %255, label %256, label %293

256:                                              ; preds = %249
  %257 = load i8*, i8** %20, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %256
  %260 = load %struct.dentry*, %struct.dentry** %13, align 8
  %261 = call i8* @find_inode_number(%struct.dentry* %260, %struct.qstr* %17)
  store i8* %261, i8** %20, align 8
  br label %262

262:                                              ; preds = %259, %256
  %263 = load i8*, i8** %20, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %270, label %265

265:                                              ; preds = %262
  %266 = load %struct.inode*, %struct.inode** %15, align 8
  %267 = getelementptr inbounds %struct.inode, %struct.inode* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i8* @iunique(i32 %268, i32 2)
  store i8* %269, i8** %20, align 8
  br label %270

270:                                              ; preds = %265, %262
  %271 = load i64 (i8*, i32*, i32, i64, i8*, i32)*, i64 (i8*, i32*, i32, i64, i8*, i32)** %9, align 8
  %272 = load i8*, i8** %8, align 8
  %273 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.file*, %struct.file** %7, align 8
  %278 = getelementptr inbounds %struct.file, %struct.file* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i8*, i8** %20, align 8
  %281 = load i32, i32* @DT_UNKNOWN, align 4
  %282 = call i64 %271(i8* %272, i32* %274, i32 %276, i64 %279, i8* %280, i32 %281)
  %283 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 3
  store i64 %282, i64* %283, align 8
  %284 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %270
  %288 = load %struct.file*, %struct.file** %7, align 8
  %289 = getelementptr inbounds %struct.file, %struct.file* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, 1
  store i64 %291, i64* %289, align 8
  br label %292

292:                                              ; preds = %287, %270
  br label %293

293:                                              ; preds = %292, %249, %245
  %294 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, 1
  store i64 %296, i64* %294, align 8
  %297 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %297, align 8
  %300 = load %struct.ncp_cache_control*, %struct.ncp_cache_control** %10, align 8
  %301 = bitcast %struct.ncp_cache_control* %300 to i8*
  %302 = bitcast %struct.ncp_cache_control* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %301, i8* align 8 %302, i64 56, i1 false)
  %303 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %293
  %307 = getelementptr inbounds %struct.ncp_cache_control, %struct.ncp_cache_control* %16, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  %310 = xor i1 %309, true
  br label %311

311:                                              ; preds = %306, %293
  %312 = phi i1 [ true, %293 ], [ %310, %306 ]
  %313 = zext i1 %312 to i32
  store i32 %313, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

314:                                              ; preds = %311, %64
  %315 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %315)
  %316 = load i32, i32* %6, align 4
  ret i32 %316
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ncp_vol2io(i32, i32*, i32*, i32, i32, i32) #3

declare dso_local i32 @NCP_SERVER(%struct.inode*) #3

declare dso_local i32 @ncp_preserve_entry_case(%struct.inode*, i32) #3

declare dso_local i32 @full_name_hash(i32*, i32) #3

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #3

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #3

declare dso_local i32 @memcpy(i8*, i32*, i32) #3

declare dso_local i8* @iunique(i32, i32) #3

declare dso_local %struct.inode* @ncp_iget(i32, %struct.ncp_entry_info*) #3

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #3

declare dso_local i32 @d_rehash(%struct.dentry*) #3

declare dso_local i32 @ncp_update_inode2(%struct.inode*, %struct.ncp_entry_info*) #3

declare dso_local i32 @ncp_new_dentry(%struct.dentry*) #3

declare dso_local i32 @kunmap(i64) #3

declare dso_local i32 @SetPageUptodate(i64) #3

declare dso_local i32 @unlock_page(i64) #3

declare dso_local i32 @page_cache_release(i64) #3

declare dso_local i64 @grab_cache_page(i32*, i32) #3

declare dso_local %struct.TYPE_10__* @kmap(i64) #3

declare dso_local i32 @dput(%struct.dentry*) #3

declare dso_local i8* @find_inode_number(%struct.dentry*, %struct.qstr*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
