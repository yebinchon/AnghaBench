; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_defrag_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_defrag_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_header = type { i8*, i8*, %struct.ocfs2_xattr_entry*, i8* }
%struct.ocfs2_xattr_entry = type { i8*, i32, i32 }

@OCFS2_XATTR_BUCKET_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"adjust xattr bucket in %llu, count = %u, xh_free_start = %u, xh_name_value_len = %u.\0A\00", align 1
@cmp_xe_offset = common dso_local global i32 0, align 4
@swap_xe = common dso_local global i32 0, align 4
@OCFS2_XATTR_ROOT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Defrag check failed for bucket %llu\0A\00", align 1
@cmp_xe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_bucket*)* @ocfs2_defrag_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_defrag_xattr_bucket(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_bucket* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ocfs2_xattr_header*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %6, align 8
  store i8* null, i8** %16, align 8
  %21 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %22 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %21)
  store i64 %22, i64* %17, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* @OCFS2_XATTR_BUCKET_SIZE, align 8
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = call i8* @kmalloc(i64 %28, i32 %29)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %245

36:                                               ; preds = %3
  %37 = load i8*, i8** %16, align 8
  store i8* %37, i8** %15, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %51, %36
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i8*, i8** %15, align 8
  %46 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @bucket_block(%struct.ocfs2_xattr_bucket* %46, i32 %47)
  %49 = load i64, i64* %19, align 8
  %50 = call i32 @memcpy(i8* %45, i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i64, i64* %19, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %15, align 8
  br label %38

57:                                               ; preds = %38
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %60 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %61 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %58, %struct.ocfs2_xattr_bucket* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %245

67:                                               ; preds = %57
  %68 = load i8*, i8** %16, align 8
  %69 = bitcast i8* %68 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %69, %struct.ocfs2_xattr_header** %13, align 8
  %70 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %71 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %70, i32 0, i32 2
  %72 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %71, align 8
  %73 = bitcast %struct.ocfs2_xattr_entry* %72 to i8*
  store i8* %73, i8** %14, align 8
  %74 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %75 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @le16_to_cpu(i8* %76)
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %18, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %81 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @le16_to_cpu(i8* %82)
  %84 = load i64, i64* %18, align 8
  %85 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %86 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @le16_to_cpu(i8* %87)
  %89 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %79, i32 %83, i64 %84, i32 %88)
  %90 = load i8*, i8** %14, align 8
  %91 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %92 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @le16_to_cpu(i8* %93)
  %95 = load i32, i32* @cmp_xe_offset, align 4
  %96 = load i32, i32* @swap_xe, align 4
  %97 = call i32 @sort(i8* %90, i32 %94, i32 16, i32 %95, i32 %96)
  %98 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %99 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %98, i32 0, i32 2
  %100 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %99, align 8
  store %struct.ocfs2_xattr_entry* %100, %struct.ocfs2_xattr_entry** %20, align 8
  %101 = load i64, i64* @OCFS2_XATTR_BUCKET_SIZE, align 8
  store i64 %101, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %185, %67
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %105 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @le16_to_cpu(i8* %106)
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %190

109:                                              ; preds = %102
  %110 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %111 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @le16_to_cpu(i8* %112)
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %10, align 8
  %115 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %116 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %120 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @le64_to_cpu(i32 %121)
  %123 = call i64 @OCFS2_XATTR_SIZE(i32 %122)
  store i64 %123, i64* %12, align 8
  br label %126

124:                                              ; preds = %109
  %125 = load i64, i64* @OCFS2_XATTR_ROOT_SIZE, align 8
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %124, %118
  %127 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %128 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @OCFS2_XATTR_SIZE(i32 %129)
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %130, %131
  store i64 %132, i64* %11, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %11, align 8
  %135 = sub i64 %133, %134
  %136 = load i64, i64* %19, align 8
  %137 = udiv i64 %135, %136
  %138 = load i64, i64* %9, align 8
  %139 = sub i64 %138, 1
  %140 = load i64, i64* %19, align 8
  %141 = udiv i64 %139, %140
  %142 = icmp ne i64 %137, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %126
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %19, align 8
  %147 = urem i64 %145, %146
  %148 = sub i64 %144, %147
  store i64 %148, i64* %9, align 8
  br label %149

149:                                              ; preds = %143, %126
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %11, align 8
  %153 = add i64 %151, %152
  %154 = icmp ugt i64 %150, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %149
  %156 = load i8*, i8** %16, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i64, i64* %11, align 8
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8*, i8** %16, align 8
  %163 = load i64, i64* %10, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i64, i64* %11, align 8
  %166 = call i32 @memmove(i8* %161, i8* %164, i64 %165)
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %11, align 8
  %169 = sub i64 %167, %168
  %170 = call i8* @cpu_to_le16(i64 %169)
  %171 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %172 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %155, %149
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* %11, align 8
  %177 = add i64 %175, %176
  %178 = icmp ult i64 %174, %177
  %179 = zext i1 %178 to i32
  %180 = load i64, i64* %17, align 8
  %181 = call i32 @mlog_bug_on_msg(i32 %179, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %180)
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* %9, align 8
  %184 = sub i64 %183, %182
  store i64 %184, i64* %9, align 8
  br label %185

185:                                              ; preds = %173
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  %188 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %189 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %188, i32 1
  store %struct.ocfs2_xattr_entry* %189, %struct.ocfs2_xattr_entry** %20, align 8
  br label %102

190:                                              ; preds = %102
  %191 = load i64, i64* %18, align 8
  %192 = load i64, i64* %9, align 8
  %193 = icmp ugt i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = load i64, i64* %17, align 8
  %196 = call i32 @mlog_bug_on_msg(i32 %194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %195)
  %197 = load i64, i64* %18, align 8
  %198 = load i64, i64* %9, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %245

201:                                              ; preds = %190
  %202 = load i8*, i8** %16, align 8
  %203 = load i64, i64* %18, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* %18, align 8
  %207 = sub i64 %205, %206
  %208 = call i32 @memset(i8* %204, i32 0, i64 %207)
  %209 = load i64, i64* %9, align 8
  %210 = call i8* @cpu_to_le16(i64 %209)
  %211 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %212 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %211, i32 0, i32 1
  store i8* %210, i8** %212, align 8
  %213 = load i8*, i8** %14, align 8
  %214 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %13, align 8
  %215 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @le16_to_cpu(i8* %216)
  %218 = load i32, i32* @cmp_xe, align 4
  %219 = load i32, i32* @swap_xe, align 4
  %220 = call i32 @sort(i8* %213, i32 %217, i32 16, i32 %218, i32 %219)
  %221 = load i8*, i8** %16, align 8
  store i8* %221, i8** %15, align 8
  store i32 0, i32* %8, align 4
  br label %222

222:                                              ; preds = %235, %201
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %225 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %222
  %229 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %230 = load i32, i32* %8, align 4
  %231 = call i8* @bucket_block(%struct.ocfs2_xattr_bucket* %229, i32 %230)
  %232 = load i8*, i8** %15, align 8
  %233 = load i64, i64* %19, align 8
  %234 = call i32 @memcpy(i8* %231, i8* %232, i64 %233)
  br label %235

235:                                              ; preds = %228
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  %238 = load i64, i64* %19, align 8
  %239 = load i8*, i8** %15, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 %238
  store i8* %240, i8** %15, align 8
  br label %222

241:                                              ; preds = %222
  %242 = load i32*, i32** %5, align 8
  %243 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %244 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %242, %struct.ocfs2_xattr_bucket* %243)
  br label %245

245:                                              ; preds = %241, %200, %64, %33
  %246 = load i8*, i8** %16, align 8
  %247 = call i32 @kfree(i8* %246)
  %248 = load i32, i32* %7, align 4
  ret i32 %248
}

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @bucket_block(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i64, i32) #1

declare dso_local i32 @sort(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i64 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
