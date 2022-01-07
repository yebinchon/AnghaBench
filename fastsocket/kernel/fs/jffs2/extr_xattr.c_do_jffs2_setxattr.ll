; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_do_jffs2_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_do_jffs2_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jffs2_inode_info = type { %struct.jffs2_inode_cache* }
%struct.jffs2_inode_cache = type { %struct.jffs2_xattr_ref*, i32 }
%struct.jffs2_xattr_ref = type { i32, %struct.jffs2_xattr_ref*, i32, %struct.jffs2_xattr_ref*, %struct.jffs2_inode_cache*, i32, i32, i32 }
%struct.jffs2_sb_info = type { i32, i32, %struct.jffs2_xattr_ref* }
%struct.jffs2_xattr_datum = type { i32, %struct.jffs2_xattr_datum*, i32, %struct.jffs2_xattr_datum*, %struct.jffs2_inode_cache*, i32, i32, i32 }

@ALLOC_NORMAL = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_XATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"jffs2_reserve_space()=%d, request=%u\0A\00", align 1
@XATTR_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XREF_DELETE_MARKER = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_XREF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_jffs2_setxattr(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.jffs2_inode_info*, align 8
  %15 = alloca %struct.jffs2_sb_info*, align 8
  %16 = alloca %struct.jffs2_inode_cache*, align 8
  %17 = alloca %struct.jffs2_xattr_datum*, align 8
  %18 = alloca %struct.jffs2_xattr_ref*, align 8
  %19 = alloca %struct.jffs2_xattr_ref*, align 8
  %20 = alloca %struct.jffs2_xattr_ref**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %24)
  store %struct.jffs2_inode_info* %25, %struct.jffs2_inode_info** %14, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %28)
  store %struct.jffs2_sb_info* %29, %struct.jffs2_sb_info** %15, align 8
  %30 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %14, align 8
  %31 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %30, i32 0, i32 0
  %32 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %31, align 8
  store %struct.jffs2_inode_cache* %32, %struct.jffs2_inode_cache** %16, align 8
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %34 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  %35 = call i32 @check_xattr_ref_inode(%struct.jffs2_sb_info* %33, %struct.jffs2_inode_cache* %34)
  store i32 %35, i32* %23, align 4
  %36 = load i32, i32* %23, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i32, i32* %23, align 4
  store i32 %40, i32* %7, align 4
  br label %316

41:                                               ; preds = %6
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 4, %44
  %46 = add i64 %45, 1
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @PAD(i32 %49)
  store i32 %50, i32* %22, align 4
  %51 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* @ALLOC_NORMAL, align 4
  %54 = load i32, i32* @JFFS2_SUMMARY_XATTR_SIZE, align 4
  %55 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %51, i32 %52, i32* %21, i32 %53, i32 %54)
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %23, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %22, align 4
  %61 = call i32 @JFFS2_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %23, align 4
  store i32 %62, i32* %7, align 4
  br label %316

63:                                               ; preds = %41
  %64 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %65 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %64, i32 0, i32 0
  %66 = call i32 @down_write(i32* %65)
  br label %67

67:                                               ; preds = %102, %63
  %68 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  %69 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %68, i32 0, i32 0
  %70 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %69, align 8
  store %struct.jffs2_xattr_ref* %70, %struct.jffs2_xattr_ref** %18, align 8
  %71 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  %72 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %71, i32 0, i32 0
  store %struct.jffs2_xattr_ref** %72, %struct.jffs2_xattr_ref*** %20, align 8
  br label %73

73:                                               ; preds = %198, %67
  %74 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %75 = icmp ne %struct.jffs2_xattr_ref* %74, null
  br i1 %75, label %76, label %204

76:                                               ; preds = %73
  %77 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %78 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %77, i32 0, i32 3
  %79 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %78, align 8
  %80 = bitcast %struct.jffs2_xattr_ref* %79 to %struct.jffs2_xattr_datum*
  store %struct.jffs2_xattr_datum* %80, %struct.jffs2_xattr_datum** %17, align 8
  %81 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %82 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %198

87:                                               ; preds = %76
  %88 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %89 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %87
  %93 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %94 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %95 = bitcast %struct.jffs2_xattr_datum* %94 to %struct.jffs2_xattr_ref*
  %96 = call i32 @load_xattr_datum(%struct.jffs2_sb_info* %93, %struct.jffs2_xattr_ref* %95)
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %23, align 4
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %92
  %103 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %104 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %103, i32 0, i32 1
  %105 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %104, align 8
  %106 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %20, align 8
  store %struct.jffs2_xattr_ref* %105, %struct.jffs2_xattr_ref** %106, align 8
  %107 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %108 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %109 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %107, %struct.jffs2_xattr_ref* %108)
  br label %67

110:                                              ; preds = %92
  %111 = load i32, i32* %23, align 4
  %112 = icmp slt i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %309

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %87
  %120 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %121 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @strcmp(i32 %122, i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %197, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @XATTR_CREATE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @EEXIST, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %23, align 4
  br label %309

134:                                              ; preds = %126
  %135 = load i8*, i8** %11, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %196, label %137

137:                                              ; preds = %134
  %138 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  %139 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %142 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %144 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %147 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @XREF_DELETE_MARKER, align 4
  %149 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %150 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %154 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %155 = call i32 @save_xattr_ref(%struct.jffs2_sb_info* %153, %struct.jffs2_xattr_ref* %154)
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %23, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %181, label %158

158:                                              ; preds = %137
  %159 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %160 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %159, i32 0, i32 1
  %161 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %160, align 8
  %162 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %20, align 8
  store %struct.jffs2_xattr_ref* %161, %struct.jffs2_xattr_ref** %162, align 8
  %163 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %164 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %163, i32 0, i32 1
  %165 = call i32 @spin_lock(i32* %164)
  %166 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %167 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %166, i32 0, i32 2
  %168 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %167, align 8
  %169 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %170 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %169, i32 0, i32 1
  store %struct.jffs2_xattr_ref* %168, %struct.jffs2_xattr_ref** %170, align 8
  %171 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %172 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %173 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %172, i32 0, i32 2
  store %struct.jffs2_xattr_ref* %171, %struct.jffs2_xattr_ref** %173, align 8
  %174 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %175 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %174, i32 0, i32 1
  %176 = call i32 @spin_unlock(i32* %175)
  %177 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %178 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %179 = bitcast %struct.jffs2_xattr_datum* %178 to %struct.jffs2_xattr_ref*
  %180 = call i32 @unrefer_xattr_datum(%struct.jffs2_sb_info* %177, %struct.jffs2_xattr_ref* %179)
  br label %195

181:                                              ; preds = %137
  %182 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  %183 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %184 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %183, i32 0, i32 4
  store %struct.jffs2_inode_cache* %182, %struct.jffs2_inode_cache** %184, align 8
  %185 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %186 = bitcast %struct.jffs2_xattr_datum* %185 to %struct.jffs2_xattr_ref*
  %187 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %188 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %187, i32 0, i32 3
  store %struct.jffs2_xattr_ref* %186, %struct.jffs2_xattr_ref** %188, align 8
  %189 = load i32, i32* @XREF_DELETE_MARKER, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %192 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %181, %158
  br label %309

196:                                              ; preds = %134
  br label %219

197:                                              ; preds = %119
  br label %198

198:                                              ; preds = %197, %86
  %199 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %200 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %199, i32 0, i32 1
  store %struct.jffs2_xattr_ref** %200, %struct.jffs2_xattr_ref*** %20, align 8
  %201 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %202 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %201, i32 0, i32 1
  %203 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %202, align 8
  store %struct.jffs2_xattr_ref* %203, %struct.jffs2_xattr_ref** %18, align 8
  br label %73

204:                                              ; preds = %73
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @XATTR_REPLACE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* @ENODATA, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %23, align 4
  br label %309

212:                                              ; preds = %204
  %213 = load i8*, i8** %11, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* @ENODATA, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %23, align 4
  br label %309

218:                                              ; preds = %212
  br label %219

219:                                              ; preds = %218, %196
  %220 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %221 = load i32, i32* %9, align 4
  %222 = load i8*, i8** %10, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = load i64, i64* %12, align 8
  %225 = call %struct.jffs2_xattr_ref* @create_xattr_datum(%struct.jffs2_sb_info* %220, i32 %221, i8* %222, i8* %223, i64 %224)
  %226 = bitcast %struct.jffs2_xattr_ref* %225 to %struct.jffs2_xattr_datum*
  store %struct.jffs2_xattr_datum* %226, %struct.jffs2_xattr_datum** %17, align 8
  %227 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %228 = bitcast %struct.jffs2_xattr_datum* %227 to %struct.jffs2_xattr_ref*
  %229 = call i64 @IS_ERR(%struct.jffs2_xattr_ref* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %219
  %232 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %233 = bitcast %struct.jffs2_xattr_datum* %232 to %struct.jffs2_xattr_ref*
  %234 = call i32 @PTR_ERR(%struct.jffs2_xattr_ref* %233)
  store i32 %234, i32* %23, align 4
  br label %309

235:                                              ; preds = %219
  %236 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %237 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %236, i32 0, i32 0
  %238 = call i32 @up_write(i32* %237)
  %239 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %240 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %239)
  %241 = call i32 @PAD(i32 4)
  store i32 %241, i32* %22, align 4
  %242 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* @ALLOC_NORMAL, align 4
  %245 = load i32, i32* @JFFS2_SUMMARY_XREF_SIZE, align 4
  %246 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %242, i32 %243, i32* %21, i32 %244, i32 %245)
  store i32 %246, i32* %23, align 4
  %247 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %248 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %247, i32 0, i32 0
  %249 = call i32 @down_write(i32* %248)
  %250 = load i32, i32* %23, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %235
  %253 = load i32, i32* %23, align 4
  %254 = load i32, i32* %22, align 4
  %255 = call i32 @JFFS2_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %253, i32 %254)
  %256 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %257 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %258 = bitcast %struct.jffs2_xattr_datum* %257 to %struct.jffs2_xattr_ref*
  %259 = call i32 @unrefer_xattr_datum(%struct.jffs2_sb_info* %256, %struct.jffs2_xattr_ref* %258)
  %260 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %261 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %260, i32 0, i32 0
  %262 = call i32 @up_write(i32* %261)
  %263 = load i32, i32* %23, align 4
  store i32 %263, i32* %7, align 4
  br label %316

264:                                              ; preds = %235
  %265 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %266 = icmp ne %struct.jffs2_xattr_ref* %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %269 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %268, i32 0, i32 1
  %270 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %269, align 8
  %271 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %20, align 8
  store %struct.jffs2_xattr_ref* %270, %struct.jffs2_xattr_ref** %271, align 8
  br label %272

272:                                              ; preds = %267, %264
  %273 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %274 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  %275 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %276 = bitcast %struct.jffs2_xattr_datum* %275 to %struct.jffs2_xattr_ref*
  %277 = call %struct.jffs2_xattr_ref* @create_xattr_ref(%struct.jffs2_sb_info* %273, %struct.jffs2_inode_cache* %274, %struct.jffs2_xattr_ref* %276)
  store %struct.jffs2_xattr_ref* %277, %struct.jffs2_xattr_ref** %19, align 8
  %278 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %19, align 8
  %279 = call i64 @IS_ERR(%struct.jffs2_xattr_ref* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %300

281:                                              ; preds = %272
  %282 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %283 = icmp ne %struct.jffs2_xattr_ref* %282, null
  br i1 %283, label %284, label %293

284:                                              ; preds = %281
  %285 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  %286 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %285, i32 0, i32 0
  %287 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %286, align 8
  %288 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %289 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %288, i32 0, i32 1
  store %struct.jffs2_xattr_ref* %287, %struct.jffs2_xattr_ref** %289, align 8
  %290 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %291 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  %292 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %291, i32 0, i32 0
  store %struct.jffs2_xattr_ref* %290, %struct.jffs2_xattr_ref** %292, align 8
  br label %293

293:                                              ; preds = %284, %281
  %294 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %19, align 8
  %295 = call i32 @PTR_ERR(%struct.jffs2_xattr_ref* %294)
  store i32 %295, i32* %23, align 4
  %296 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %297 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %17, align 8
  %298 = bitcast %struct.jffs2_xattr_datum* %297 to %struct.jffs2_xattr_ref*
  %299 = call i32 @unrefer_xattr_datum(%struct.jffs2_sb_info* %296, %struct.jffs2_xattr_ref* %298)
  br label %308

300:                                              ; preds = %272
  %301 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %302 = icmp ne %struct.jffs2_xattr_ref* %301, null
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %305 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %18, align 8
  %306 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %304, %struct.jffs2_xattr_ref* %305)
  br label %307

307:                                              ; preds = %303, %300
  br label %308

308:                                              ; preds = %307, %293
  br label %309

309:                                              ; preds = %308, %231, %215, %209, %195, %131, %116
  %310 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %311 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %310, i32 0, i32 0
  %312 = call i32 @up_write(i32* %311)
  %313 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %15, align 8
  %314 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %313)
  %315 = load i32, i32* %23, align 4
  store i32 %315, i32* %7, align 4
  br label %316

316:                                              ; preds = %309, %252, %58, %39
  %317 = load i32, i32* %7, align 4
  ret i32 %317
}

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i32 @check_xattr_ref_inode(%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PAD(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @jffs2_reserve_space(%struct.jffs2_sb_info*, i32, i32*, i32, i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @load_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local i32 @delete_xattr_ref(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @save_xattr_ref(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unrefer_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local %struct.jffs2_xattr_ref* @create_xattr_datum(%struct.jffs2_sb_info*, i32, i8*, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.jffs2_xattr_ref*) #1

declare dso_local i32 @PTR_ERR(%struct.jffs2_xattr_ref*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @jffs2_complete_reservation(%struct.jffs2_sb_info*) #1

declare dso_local %struct.jffs2_xattr_ref* @create_xattr_ref(%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*, %struct.jffs2_xattr_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
