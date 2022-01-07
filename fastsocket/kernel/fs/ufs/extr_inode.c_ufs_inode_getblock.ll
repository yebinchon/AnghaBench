; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_inode_getblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_inode_getblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.page = type { i32 }
%struct.ufs_sb_private_info = type { i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [63 x i8] c"ENTER, ino %lu, fragment %llu, new_fragment %llu, metadata %d\0A\00", align 1
@READ = common dso_local global i32 0, align 4
@UFS2_MAGIC = common dso_local global i64 0, align 8
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"result %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.buffer_head*, i32, i64, i32*, i64*, i32*, %struct.page*)* @ufs_inode_getblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ufs_inode_getblock(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i64 %3, i32* %4, i64* %5, i32* %6, %struct.page* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca %struct.ufs_sb_private_info*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.page* %7, %struct.page** %16, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %17, align 8
  %28 = load %struct.super_block*, %struct.super_block** %17, align 8
  %29 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %30, align 8
  store %struct.ufs_sb_private_info* %31, %struct.ufs_sb_private_info** %18, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @ufs_fragstoblks(i32 %32)
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ufs_fragnum(i32 %34)
  store i32 %35, i32* %20, align 4
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %12, align 8
  %42 = load i64*, i64** %14, align 8
  %43 = icmp ne i64* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %40, i64 %41, i32 %45)
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %48 = icmp ne %struct.buffer_head* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %8
  br label %242

50:                                               ; preds = %8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %52 = call i32 @buffer_uptodate(%struct.buffer_head* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @READ, align 4
  %56 = call i32 @ll_rw_block(i32 %55, i32 1, %struct.buffer_head** %10)
  %57 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %58 = call i32 @wait_on_buffer(%struct.buffer_head* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %60 = call i32 @buffer_uptodate(%struct.buffer_head* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %242

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %66 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UFS2_MAGIC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* %23, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = bitcast i32* %77 to i8*
  store i8* %78, i8** %24, align 8
  br label %88

79:                                               ; preds = %64
  %80 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* %23, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = bitcast i32* %86 to i8*
  store i8* %87, i8** %24, align 8
  br label %88

88:                                               ; preds = %79, %70
  br label %89

89:                                               ; preds = %195, %114, %88
  %90 = load %struct.super_block*, %struct.super_block** %17, align 8
  %91 = load i8*, i8** %24, align 8
  %92 = call i32 @ufs_data_ptr_to_cpu(%struct.super_block* %90, i8* %91)
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %21, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %89
  %96 = load i64*, i64** %14, align 8
  %97 = icmp ne i64* %96, null
  br i1 %97, label %117, label %98

98:                                               ; preds = %95
  %99 = load %struct.super_block*, %struct.super_block** %17, align 8
  %100 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %101 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %20, align 4
  %106 = add i32 %104, %105
  %107 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %99, i32 %106)
  store %struct.buffer_head* %107, %struct.buffer_head** %19, align 8
  %108 = load i32, i32* %21, align 4
  %109 = load %struct.super_block*, %struct.super_block** %17, align 8
  %110 = load i8*, i8** %24, align 8
  %111 = call i32 @ufs_data_ptr_to_cpu(%struct.super_block* %109, i8* %110)
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  br label %242

114:                                              ; preds = %98
  %115 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %116 = call i32 @brelse(%struct.buffer_head* %115)
  br label %89

117:                                              ; preds = %95
  %118 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %119 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %20, align 4
  %124 = add i32 %122, %123
  %125 = zext i32 %124 to i64
  %126 = load i64*, i64** %14, align 8
  store i64 %125, i64* %126, align 8
  br label %242

127:                                              ; preds = %89
  %128 = load i32, i32* %23, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %168

130:                                              ; preds = %127
  %131 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %132 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @UFS2_MAGIC, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.super_block*, %struct.super_block** %17, align 8
  %138 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = load i32, i32* %23, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @fs64_to_cpu(%struct.super_block* %137, i32 %146)
  store i32 %147, i32* %21, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %162, label %168

149:                                              ; preds = %130
  %150 = load %struct.super_block*, %struct.super_block** %17, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %152 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i32*
  %155 = load i32, i32* %23, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @fs32_to_cpu(%struct.super_block* %150, i32 %159)
  store i32 %160, i32* %21, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %149, %136
  %163 = load i32, i32* %21, align 4
  %164 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %165 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %163, %166
  store i32 %167, i32* %22, align 4
  br label %176

168:                                              ; preds = %149, %136, %127
  %169 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %170 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %173 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %171, %174
  store i32 %175, i32* %22, align 4
  br label %176

176:                                              ; preds = %168, %162
  %177 = load %struct.inode*, %struct.inode** %9, align 8
  %178 = load i8*, i8** %24, align 8
  %179 = load i64, i64* %12, align 8
  %180 = call i32 @ufs_blknum(i64 %179)
  %181 = load i32, i32* %22, align 4
  %182 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %183 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %13, align 8
  %186 = load %struct.page*, %struct.page** %16, align 8
  %187 = call i32 @ufs_new_fragments(%struct.inode* %177, i8* %178, i32 %180, i32 %181, i32 %184, i32* %185, %struct.page* %186)
  store i32 %187, i32* %21, align 4
  %188 = load i32, i32* %21, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %176
  %191 = load %struct.super_block*, %struct.super_block** %17, align 8
  %192 = load i8*, i8** %24, align 8
  %193 = call i32 @ufs_data_ptr_to_cpu(%struct.super_block* %191, i8* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %89

196:                                              ; preds = %190
  br label %242

197:                                              ; preds = %176
  %198 = load i64*, i64** %14, align 8
  %199 = icmp ne i64* %198, null
  br i1 %199, label %210, label %200

200:                                              ; preds = %197
  %201 = load %struct.super_block*, %struct.super_block** %17, align 8
  %202 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %203 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %21, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* %20, align 4
  %208 = add i32 %206, %207
  %209 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %201, i32 %208)
  store %struct.buffer_head* %209, %struct.buffer_head** %19, align 8
  br label %221

210:                                              ; preds = %197
  %211 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %18, align 8
  %212 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %21, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %20, align 4
  %217 = add i32 %215, %216
  %218 = zext i32 %217 to i64
  %219 = load i64*, i64** %14, align 8
  store i64 %218, i64* %219, align 8
  %220 = load i32*, i32** %15, align 8
  store i32 1, i32* %220, align 4
  br label %221

221:                                              ; preds = %210, %200
  %222 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %223 = call i32 @mark_buffer_dirty(%struct.buffer_head* %222)
  %224 = load %struct.inode*, %struct.inode** %9, align 8
  %225 = call i64 @IS_SYNC(%struct.inode* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %229 = call i32 @sync_dirty_buffer(%struct.buffer_head* %228)
  br label %230

230:                                              ; preds = %227, %221
  %231 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %232 = load %struct.inode*, %struct.inode** %9, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.inode*, %struct.inode** %9, align 8
  %235 = call i32 @mark_inode_dirty(%struct.inode* %234)
  %236 = load i32, i32* %21, align 4
  %237 = sext i32 %236 to i64
  %238 = load i32, i32* %20, align 4
  %239 = zext i32 %238 to i64
  %240 = add i64 %237, %239
  %241 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %240)
  br label %242

242:                                              ; preds = %230, %196, %117, %113, %62, %49
  %243 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %244 = call i32 @brelse(%struct.buffer_head* %243)
  %245 = call i32 (i8*, ...) @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %246 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  ret %struct.buffer_head* %246
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @ufs_fragstoblks(i32) #1

declare dso_local i32 @ufs_fragnum(i32) #1

declare dso_local i32 @UFSD(i8*, ...) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_new_fragments(%struct.inode*, i8*, i32, i32, i32, i32*, %struct.page*) #1

declare dso_local i32 @ufs_blknum(i64) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
