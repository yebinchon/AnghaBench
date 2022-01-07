; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_set_snapshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_set_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { i32, %struct.nilfs_snapshot_list }
%struct.nilfs_snapshot_list = type { i8*, i8* }
%struct.nilfs_checkpoint = type { %struct.nilfs_snapshot_list }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @nilfs_cpfile_set_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_cpfile_set_snapshot(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.nilfs_cpfile_header*, align 8
  %11 = alloca %struct.nilfs_checkpoint*, align 8
  %12 = alloca %struct.nilfs_snapshot_list*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %254

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @down_write(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %29, i64 %30, i32 0, %struct.buffer_head** %9)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %248

35:                                               ; preds = %24
  %36 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KM_USER0, align 4
  %40 = call i8* @kmap_atomic(i32 %38, i32 %39)
  store i8* %40, i8** %17, align 8
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %44 = load i8*, i8** %17, align 8
  %45 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %41, i64 %42, %struct.buffer_head* %43, i8* %44)
  store %struct.nilfs_checkpoint* %45, %struct.nilfs_checkpoint** %11, align 8
  %46 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %47 = call i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %35
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %18, align 4
  %52 = load i8*, i8** %17, align 8
  %53 = load i32, i32* @KM_USER0, align 4
  %54 = call i32 @kunmap_atomic(i8* %52, i32 %53)
  br label %245

55:                                               ; preds = %35
  %56 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %57 = call i64 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  store i32 0, i32* %18, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = load i32, i32* @KM_USER0, align 4
  %62 = call i32 @kunmap_atomic(i8* %60, i32 %61)
  br label %245

63:                                               ; preds = %55
  %64 = load i8*, i8** %17, align 8
  %65 = load i32, i32* @KM_USER0, align 4
  %66 = call i32 @kunmap_atomic(i8* %64, i32 %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %67, %struct.buffer_head** %6)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %245

72:                                               ; preds = %63
  %73 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @KM_USER0, align 4
  %77 = call i8* @kmap_atomic(i32 %75, i32 %76)
  store i8* %77, i8** %17, align 8
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %78, %struct.buffer_head* %79, i8* %80)
  store %struct.nilfs_cpfile_header* %81, %struct.nilfs_cpfile_header** %10, align 8
  %82 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %10, align 8
  %83 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %82, i32 0, i32 1
  store %struct.nilfs_snapshot_list* %83, %struct.nilfs_snapshot_list** %12, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %84, %struct.buffer_head** %7, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %86 = call i32 @get_bh(%struct.buffer_head* %85)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %87 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %88 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @le64_to_cpu(i8* %89)
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %121, %72
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %5, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %134

95:                                               ; preds = %91
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i64 @nilfs_cpfile_get_blkoff(%struct.inode* %96, i64 %97)
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %14, align 8
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %16, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %95
  %104 = load i8*, i8** %17, align 8
  %105 = load i32, i32* @KM_USER0, align 4
  %106 = call i32 @kunmap_atomic(i8* %104, i32 %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %108 = call i32 @brelse(%struct.buffer_head* %107)
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %109, i64 %110, i32 0, %struct.buffer_head** %7)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %242

115:                                              ; preds = %103
  %116 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @KM_USER0, align 4
  %120 = call i8* @kmap_atomic(i32 %118, i32 %119)
  store i8* %120, i8** %17, align 8
  br label %121

121:                                              ; preds = %115, %95
  %122 = load i64, i64* %16, align 8
  store i64 %122, i64* %15, align 8
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %123, i64 %124, %struct.buffer_head* %125, i8* %126)
  store %struct.nilfs_checkpoint* %127, %struct.nilfs_checkpoint** %11, align 8
  %128 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %129 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %128, i32 0, i32 0
  store %struct.nilfs_snapshot_list* %129, %struct.nilfs_snapshot_list** %12, align 8
  %130 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %131 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @le64_to_cpu(i8* %132)
  store i64 %133, i64* %14, align 8
  br label %91

134:                                              ; preds = %91
  %135 = load i8*, i8** %17, align 8
  %136 = load i32, i32* @KM_USER0, align 4
  %137 = call i32 @kunmap_atomic(i8* %135, i32 %136)
  %138 = load i64, i64* %14, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = load i64, i64* %14, align 8
  %143 = call i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode* %141, i64 %142, i32 0, %struct.buffer_head** %8)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %239

147:                                              ; preds = %140
  br label %152

148:                                              ; preds = %134
  %149 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %149, %struct.buffer_head** %8, align 8
  %150 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %151 = call i32 @get_bh(%struct.buffer_head* %150)
  br label %152

152:                                              ; preds = %148, %147
  %153 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %154 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @KM_USER0, align 4
  %157 = call i8* @kmap_atomic(i32 %155, i32 %156)
  store i8* %157, i8** %17, align 8
  %158 = load %struct.inode*, %struct.inode** %4, align 8
  %159 = load i64, i64* %13, align 8
  %160 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %161 = load i8*, i8** %17, align 8
  %162 = call %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %158, i64 %159, %struct.buffer_head* %160, i8* %161)
  store %struct.nilfs_snapshot_list* %162, %struct.nilfs_snapshot_list** %12, align 8
  %163 = load i64, i64* %5, align 8
  %164 = call i8* @cpu_to_le64(i64 %163)
  %165 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %166 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = load i32, i32* @KM_USER0, align 4
  %169 = call i32 @kunmap_atomic(i8* %167, i32 %168)
  %170 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %171 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @KM_USER0, align 4
  %174 = call i8* @kmap_atomic(i32 %172, i32 %173)
  store i8* %174, i8** %17, align 8
  %175 = load %struct.inode*, %struct.inode** %4, align 8
  %176 = load i64, i64* %5, align 8
  %177 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = call %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode* %175, i64 %176, %struct.buffer_head* %177, i8* %178)
  store %struct.nilfs_checkpoint* %179, %struct.nilfs_checkpoint** %11, align 8
  %180 = load i64, i64* %13, align 8
  %181 = call i8* @cpu_to_le64(i64 %180)
  %182 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %183 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %183, i32 0, i32 0
  store i8* %181, i8** %184, align 8
  %185 = load i64, i64* %14, align 8
  %186 = call i8* @cpu_to_le64(i64 %185)
  %187 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %188 = getelementptr inbounds %struct.nilfs_checkpoint, %struct.nilfs_checkpoint* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %188, i32 0, i32 1
  store i8* %186, i8** %189, align 8
  %190 = load %struct.nilfs_checkpoint*, %struct.nilfs_checkpoint** %11, align 8
  %191 = call i32 @nilfs_checkpoint_set_snapshot(%struct.nilfs_checkpoint* %190)
  %192 = load i8*, i8** %17, align 8
  %193 = load i32, i32* @KM_USER0, align 4
  %194 = call i32 @kunmap_atomic(i8* %192, i32 %193)
  %195 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %196 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @KM_USER0, align 4
  %199 = call i8* @kmap_atomic(i32 %197, i32 %198)
  store i8* %199, i8** %17, align 8
  %200 = load %struct.inode*, %struct.inode** %4, align 8
  %201 = load i64, i64* %14, align 8
  %202 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = call %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode* %200, i64 %201, %struct.buffer_head* %202, i8* %203)
  store %struct.nilfs_snapshot_list* %204, %struct.nilfs_snapshot_list** %12, align 8
  %205 = load i64, i64* %5, align 8
  %206 = call i8* @cpu_to_le64(i64 %205)
  %207 = load %struct.nilfs_snapshot_list*, %struct.nilfs_snapshot_list** %12, align 8
  %208 = getelementptr inbounds %struct.nilfs_snapshot_list, %struct.nilfs_snapshot_list* %207, i32 0, i32 0
  store i8* %206, i8** %208, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = load i32, i32* @KM_USER0, align 4
  %211 = call i32 @kunmap_atomic(i8* %209, i32 %210)
  %212 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %213 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @KM_USER0, align 4
  %216 = call i8* @kmap_atomic(i32 %214, i32 %215)
  store i8* %216, i8** %17, align 8
  %217 = load %struct.inode*, %struct.inode** %4, align 8
  %218 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %219 = load i8*, i8** %17, align 8
  %220 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %217, %struct.buffer_head* %218, i8* %219)
  store %struct.nilfs_cpfile_header* %220, %struct.nilfs_cpfile_header** %10, align 8
  %221 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %10, align 8
  %222 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %221, i32 0, i32 0
  %223 = call i32 @le64_add_cpu(i32* %222, i32 1)
  %224 = load i8*, i8** %17, align 8
  %225 = load i32, i32* @KM_USER0, align 4
  %226 = call i32 @kunmap_atomic(i8* %224, i32 %225)
  %227 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %228 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %227)
  %229 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %230 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %229)
  %231 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %232 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %231)
  %233 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %234 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %233)
  %235 = load %struct.inode*, %struct.inode** %4, align 8
  %236 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %235)
  %237 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %238 = call i32 @brelse(%struct.buffer_head* %237)
  br label %239

239:                                              ; preds = %152, %146
  %240 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %241 = call i32 @brelse(%struct.buffer_head* %240)
  br label %242

242:                                              ; preds = %239, %114
  %243 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %244 = call i32 @brelse(%struct.buffer_head* %243)
  br label %245

245:                                              ; preds = %242, %71, %59, %49
  %246 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %247 = call i32 @brelse(%struct.buffer_head* %246)
  br label %248

248:                                              ; preds = %245, %34
  %249 = load %struct.inode*, %struct.inode** %4, align 8
  %250 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %249)
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = call i32 @up_write(i32* %251)
  %253 = load i32, i32* %18, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %248, %21
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_checkpoint_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_checkpoint* @nilfs_cpfile_block_get_checkpoint(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_checkpoint_invalid(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i64 @nilfs_checkpoint_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i64 @nilfs_cpfile_get_blkoff(%struct.inode*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.nilfs_snapshot_list* @nilfs_cpfile_block_get_snapshot_list(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @nilfs_checkpoint_set_snapshot(%struct.nilfs_checkpoint*) #1

declare dso_local i32 @le64_add_cpu(i32*, i32) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
