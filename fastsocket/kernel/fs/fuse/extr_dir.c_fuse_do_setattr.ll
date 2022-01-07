; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_do_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_do_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.inode = type { i32, i64, i32 }
%struct.iattr = type { i32, i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32 }
%struct.fuse_conn = type { i32, i32, i32, i64 }
%struct.fuse_req = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.fuse_setattr_in* }
%struct.fuse_setattr_in = type { %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.fuse_setattr_in* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fuse_attr_out = type { %struct.TYPE_15__, i32, i32, i32 }

@FUSE_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@ATTR_OPEN = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@FATTR_FH = common dso_local global i32 0, align 4
@FATTR_LOCKOWNER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_16__* null, align 8
@FUSE_SETATTR = common dso_local global i32 0, align 4
@FUSE_COMPAT_ATTR_OUT_SIZE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_do_setattr(%struct.inode* %0, %struct.iattr* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca %struct.fuse_req*, align 8
  %10 = alloca %struct.fuse_setattr_in, align 8
  %11 = alloca %struct.fuse_attr_out, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fuse_file*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.iattr* %1, %struct.iattr** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %16)
  store %struct.fuse_conn* %17, %struct.fuse_conn** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %19 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FUSE_DEFAULT_PERMISSIONS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load %struct.iattr*, %struct.iattr** %6, align 8
  %27 = call i32 @inode_change_ok(%struct.inode* %25, %struct.iattr* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %4, align 4
  br label %269

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.iattr*, %struct.iattr** %6, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATTR_OPEN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %269

46:                                               ; preds = %40, %33
  %47 = load %struct.iattr*, %struct.iattr** %6, align 8
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ATTR_SIZE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = load %struct.iattr*, %struct.iattr** %6, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @inode_newsize_ok(%struct.inode* %54, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %4, align 4
  br label %269

63:                                               ; preds = %53
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %66 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %65)
  store %struct.fuse_req* %66, %struct.fuse_req** %9, align 8
  %67 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %68 = call i64 @IS_ERR(%struct.fuse_req* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %72 = call i32 @PTR_ERR(%struct.fuse_req* %71)
  store i32 %72, i32* %4, align 4
  br label %269

73:                                               ; preds = %64
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call i32 @fuse_set_nowrite(%struct.inode* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = call i32 @memset(%struct.fuse_setattr_in* %10, i32 0, i32 32)
  %81 = bitcast %struct.fuse_attr_out* %11 to %struct.fuse_setattr_in*
  %82 = call i32 @memset(%struct.fuse_setattr_in* %81, i32 0, i32 32)
  %83 = load %struct.iattr*, %struct.iattr** %6, align 8
  %84 = call i32 @iattr_to_fattr(%struct.iattr* %83, %struct.fuse_setattr_in* %10)
  %85 = load %struct.file*, %struct.file** %7, align 8
  %86 = icmp ne %struct.file* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load %struct.file*, %struct.file** %7, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  %90 = load %struct.fuse_file*, %struct.fuse_file** %89, align 8
  store %struct.fuse_file* %90, %struct.fuse_file** %15, align 8
  %91 = load i32, i32* @FATTR_FH, align 4
  %92 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %10, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load %struct.fuse_file*, %struct.fuse_file** %15, align 8
  %96 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %10, i32 0, i32 3
  store i32 %97, i32* %98, align 8
  br label %99

99:                                               ; preds = %87, %79
  %100 = load %struct.iattr*, %struct.iattr** %6, align 8
  %101 = getelementptr inbounds %struct.iattr, %struct.iattr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ATTR_SIZE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load i32, i32* @FATTR_LOCKOWNER, align 4
  %108 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %10, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  %111 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fuse_lock_owner_id(%struct.fuse_conn* %111, i32 %114)
  %116 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %10, i32 0, i32 1
  store i32 %115, i32* %116, align 8
  br label %117

117:                                              ; preds = %106, %99
  %118 = load i32, i32* @FUSE_SETATTR, align 4
  %119 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %120 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = call i32 @get_node_id(%struct.inode* %123)
  %125 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %126 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %130 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %133 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 32, i32* %137, align 8
  %138 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %139 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  store %struct.fuse_setattr_in* %10, %struct.fuse_setattr_in** %143, align 8
  %144 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %145 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %148 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 9
  br i1 %150, label %151, label %159

151:                                              ; preds = %117
  %152 = load i32, i32* @FUSE_COMPAT_ATTR_OUT_SIZE, align 4
  %153 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %154 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i32 %152, i32* %158, align 8
  br label %166

159:                                              ; preds = %117
  %160 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %161 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  store i32 32, i32* %165, align 8
  br label %166

166:                                              ; preds = %159, %151
  %167 = bitcast %struct.fuse_attr_out* %11 to %struct.fuse_setattr_in*
  %168 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %169 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store %struct.fuse_setattr_in* %167, %struct.fuse_setattr_in** %173, align 8
  %174 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %175 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %176 = call i32 @fuse_request_send(%struct.fuse_conn* %174, %struct.fuse_req* %175)
  %177 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %178 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %14, align 4
  %182 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %183 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %184 = call i32 @fuse_put_request(%struct.fuse_conn* %182, %struct.fuse_req* %183)
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %166
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @EINTR, align 4
  %190 = sub nsw i32 0, %189
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.inode*, %struct.inode** %5, align 8
  %194 = call i32 @fuse_invalidate_attr(%struct.inode* %193)
  br label %195

195:                                              ; preds = %192, %187
  br label %261

196:                                              ; preds = %166
  %197 = load %struct.inode*, %struct.inode** %5, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %11, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = xor i32 %199, %202
  %204 = load i32, i32* @S_IFMT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %196
  %208 = load %struct.inode*, %struct.inode** %5, align 8
  %209 = call i32 @make_bad_inode(%struct.inode* %208)
  %210 = load i32, i32* @EIO, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %14, align 4
  br label %261

212:                                              ; preds = %196
  %213 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %214 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %213, i32 0, i32 2
  %215 = call i32 @spin_lock(i32* %214)
  %216 = load %struct.inode*, %struct.inode** %5, align 8
  %217 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %11, i32 0, i32 0
  %218 = bitcast %struct.fuse_attr_out* %11 to %struct.fuse_setattr_in*
  %219 = call i32 @attr_timeout(%struct.fuse_setattr_in* %218)
  %220 = call i32 @fuse_change_attributes_common(%struct.inode* %216, %struct.TYPE_15__* %217, i32 %219)
  %221 = load %struct.inode*, %struct.inode** %5, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %13, align 8
  %224 = load %struct.inode*, %struct.inode** %5, align 8
  %225 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %11, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @i_size_write(%struct.inode* %224, i64 %227)
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %212
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = call i32 @__fuse_release_nowrite(%struct.inode* %232)
  br label %234

234:                                              ; preds = %231, %212
  %235 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %236 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %235, i32 0, i32 2
  %237 = call i32 @spin_unlock(i32* %236)
  %238 = load %struct.inode*, %struct.inode** %5, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @S_ISREG(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %260

243:                                              ; preds = %234
  %244 = load i64, i64* %13, align 8
  %245 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %11, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %244, %247
  br i1 %248, label %249, label %260

249:                                              ; preds = %243
  %250 = load %struct.inode*, %struct.inode** %5, align 8
  %251 = load i64, i64* %13, align 8
  %252 = getelementptr inbounds %struct.fuse_attr_out, %struct.fuse_attr_out* %11, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @truncate_pagecache(%struct.inode* %250, i64 %251, i64 %254)
  %256 = load %struct.inode*, %struct.inode** %5, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @invalidate_inode_pages2(i32 %258)
  br label %260

260:                                              ; preds = %249, %243, %234
  store i32 0, i32* %4, align 4
  br label %269

261:                                              ; preds = %207, %195
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load %struct.inode*, %struct.inode** %5, align 8
  %266 = call i32 @fuse_release_nowrite(%struct.inode* %265)
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %14, align 4
  store i32 %268, i32* %4, align 4
  br label %269

269:                                              ; preds = %267, %260, %70, %61, %45, %30
  %270 = load i32, i32* %4, align 4
  ret i32 %270
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i32) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_set_nowrite(%struct.inode*) #1

declare dso_local i32 @memset(%struct.fuse_setattr_in*, i32, i32) #1

declare dso_local i32 @iattr_to_fattr(%struct.iattr*, %struct.fuse_setattr_in*) #1

declare dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn*, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fuse_change_attributes_common(%struct.inode*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @attr_timeout(%struct.fuse_setattr_in*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @__fuse_release_nowrite(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64, i64) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

declare dso_local i32 @fuse_release_nowrite(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
