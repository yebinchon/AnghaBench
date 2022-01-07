; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_expand_dir_adinicb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_expand_dir_adinicb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.extent_position = type { %struct.buffer_head*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.udf_fileident_bh = type { i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.fileIdentDesc = type { i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.udf_inode_info = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32 }

@UDF_FLAG_USE_SHORT_AD = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i8* null, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i8* null, align 8
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @udf_expand_dir_adinicb(%struct.inode* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.kernel_lb_addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.extent_position, align 8
  %14 = alloca %struct.udf_fileident_bh, align 8
  %15 = alloca %struct.udf_fileident_bh, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fileIdentDesc, align 8
  %19 = alloca %struct.fileIdentDesc*, align 8
  %20 = alloca %struct.fileIdentDesc*, align 8
  %21 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i32 @udf_ext0_offset(%struct.inode* %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call i32 @udf_ext0_offset(%struct.inode* %24)
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %17, align 4
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %30)
  store %struct.udf_inode_info* %31, %struct.udf_inode_info** %21, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i32, i32* @UDF_FLAG_USE_SHORT_AD, align 4
  %36 = call i64 @UDF_QUERY_FLAG(%struct.TYPE_11__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i8*, i8** @ICBTAG_FLAG_AD_SHORT, align 8
  store i8* %39, i8** %12, align 8
  br label %42

40:                                               ; preds = %3
  %41 = load i8*, i8** @ICBTAG_FLAG_AD_LONG, align 8
  store i8* %41, i8** %12, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %50 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call i32 @mark_inode_dirty(%struct.inode* %51)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %251

53:                                               ; preds = %42
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %59 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %63 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @udf_new_block(%struct.TYPE_11__* %56, %struct.inode* %57, i32 %61, i32 %65, i32* %66)
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %53
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %251

73:                                               ; preds = %53
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %80 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @udf_get_pblock(%struct.TYPE_11__* %76, i32 %78, i32 %82, i32 0)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %73
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %251

87:                                               ; preds = %73
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call %struct.buffer_head* @udf_tgetblk(%struct.TYPE_11__* %90, i32 %91)
  store %struct.buffer_head* %92, %struct.buffer_head** %9, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %94 = icmp ne %struct.buffer_head* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %251

96:                                               ; preds = %87
  %97 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %98 = call i32 @lock_buffer(%struct.buffer_head* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %100 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memset(i32 %101, i32 0, i32 %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %109 = call i32 @set_buffer_uptodate(%struct.buffer_head* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %111 = call i32 @unlock_buffer(%struct.buffer_head* %110)
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %112, %struct.inode* %113)
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 1
  %122 = and i32 %115, %121
  %123 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %125, align 8
  %126 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 3
  store %struct.buffer_head* null, %struct.buffer_head** %126, align 8
  %127 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 1
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %130 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 2
  store %struct.buffer_head* %129, %struct.buffer_head** %130, align 8
  %131 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 3
  store %struct.buffer_head* %129, %struct.buffer_head** %131, align 8
  br label %132

132:                                              ; preds = %198, %96
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %199

136:                                              ; preds = %132
  %137 = load i8*, i8** @ICBTAG_FLAG_AD_IN_ICB, align 8
  %138 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %139 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = call %struct.fileIdentDesc* @udf_fileident_read(%struct.inode* %140, i32* %16, %struct.udf_fileident_bh* %14, %struct.fileIdentDesc* %18, i32* null, i32* null, i32* null, i32* null)
  store %struct.fileIdentDesc* %141, %struct.fileIdentDesc** %19, align 8
  %142 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %19, align 8
  %143 = icmp ne %struct.fileIdentDesc* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %136
  %145 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %146 = call i32 @brelse(%struct.buffer_head* %145)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %251

147:                                              ; preds = %136
  %148 = load i8*, i8** %12, align 8
  %149 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %150 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %149, i32 0, i32 5
  store i8* %148, i8** %150, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cpu_to_le32(i32 %152)
  %154 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %19, align 8
  %155 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 0
  store i32 %158, i32* %159, align 8
  %160 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %161, %163
  %165 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %164
  store i32 %167, i32* %165, align 4
  %168 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %170, %172
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %175, %struct.fileIdentDesc** %20, align 8
  %176 = load %struct.inode*, %struct.inode** %5, align 8
  %177 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %19, align 8
  %178 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %20, align 8
  %179 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %19, align 8
  %180 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %19, align 8
  %183 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %19, align 8
  %186 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @le16_to_cpu(i32 %187)
  %189 = add nsw i64 %184, %188
  %190 = call i64 @udf_write_fi(%struct.inode* %176, %struct.fileIdentDesc* %177, %struct.fileIdentDesc* %178, %struct.udf_fileident_bh* %15, i32 %181, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %147
  %193 = load i8*, i8** @ICBTAG_FLAG_AD_IN_ICB, align 8
  %194 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %195 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %194, i32 0, i32 5
  store i8* %193, i8** %195, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %197 = call i32 @brelse(%struct.buffer_head* %196)
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %251

198:                                              ; preds = %147
  br label %132

199:                                              ; preds = %132
  %200 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %201 = load %struct.inode*, %struct.inode** %5, align 8
  %202 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %200, %struct.inode* %201)
  %203 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %204 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %208 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %206, %209
  %211 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %212 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @memset(i32 %210, i32 0, i32 %213)
  %215 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %216 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %215, i32 0, i32 1
  store i32 0, i32* %216, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %10, i32 0, i32 0
  store i32 %218, i32* %219, align 4
  %220 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %221 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %10, i32 0, i32 1
  store i32 %223, i32* %224, align 4
  %225 = load %struct.inode*, %struct.inode** %5, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 1
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %232 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %233, align 8
  %234 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 2
  %235 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %236 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %235, i32 0, i32 3
  %237 = bitcast %struct.TYPE_10__* %234 to i8*
  %238 = bitcast %struct.TYPE_10__* %236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %237, i8* align 4 %238, i64 8, i1 false)
  %239 = load %struct.inode*, %struct.inode** %5, align 8
  %240 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %239)
  %241 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 1
  store i32 %240, i32* %241, align 8
  %242 = load %struct.inode*, %struct.inode** %5, align 8
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @udf_add_aext(%struct.inode* %242, %struct.extent_position* %13, %struct.kernel_lb_addr* %10, i32 %243, i32 0)
  %245 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 0
  %246 = load %struct.buffer_head*, %struct.buffer_head** %245, align 8
  %247 = call i32 @brelse(%struct.buffer_head* %246)
  %248 = load %struct.inode*, %struct.inode** %5, align 8
  %249 = call i32 @mark_inode_dirty(%struct.inode* %248)
  %250 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %250, %struct.buffer_head** %4, align 8
  br label %251

251:                                              ; preds = %199, %192, %144, %95, %86, %72, %47
  %252 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %252
}

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @udf_new_block(%struct.TYPE_11__*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @udf_get_pblock(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local %struct.buffer_head* @udf_tgetblk(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_fileident_read(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
