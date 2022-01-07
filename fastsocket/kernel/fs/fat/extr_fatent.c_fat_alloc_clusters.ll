; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_alloc_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_alloc_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.msdos_sb_info = type { i32, i32, i32, i32, %struct.fatent_operations* }
%struct.fatent_operations = type { i64 (%struct.fat_entry*)*, i32 (%struct.fat_entry.0*, i32)* }
%struct.fat_entry = type opaque
%struct.fat_entry.0 = type opaque
%struct.fat_entry.1 = type { i32, i64 }
%struct.buffer_head = type { i32 }

@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FAT_START_ENT = common dso_local global i8* null, align 8
@FAT_ENT_FREE = common dso_local global i64 0, align 8
@FAT_ENT_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_alloc_clusters(%struct.inode* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.msdos_sb_info*, align 8
  %10 = alloca %struct.fatent_operations*, align 8
  %11 = alloca %struct.fat_entry.1, align 8
  %12 = alloca %struct.fat_entry.1, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  store %struct.super_block* %24, %struct.super_block** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %8, align 8
  %26 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %25)
  store %struct.msdos_sb_info* %26, %struct.msdos_sb_info** %9, align 8
  %27 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %28 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %27, i32 0, i32 4
  %29 = load %struct.fatent_operations*, %struct.fatent_operations** %28, align 8
  store %struct.fatent_operations* %29, %struct.fatent_operations** %10, align 8
  %30 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %13, align 8
  %33 = alloca %struct.buffer_head*, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %36 = sdiv i32 %35, 2
  %37 = icmp sgt i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %41 = call i32 @lock_fat(%struct.msdos_sb_info* %40)
  %42 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %43 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %62

46:                                               ; preds = %3
  %47 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %48 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %53 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %59 = call i32 @unlock_fat(%struct.msdos_sb_info* %58)
  %60 = load i32, i32* @ENOSPC, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %230

62:                                               ; preds = %51, %46, %3
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %63 = load i8*, i8** @FAT_START_ENT, align 8
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %16, align 4
  %65 = call i32 @fatent_init(%struct.fat_entry.1* %12)
  %66 = call i32 @fatent_init(%struct.fat_entry.1* %11)
  %67 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %68 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  %71 = call i32 @fatent_set_entry(%struct.fat_entry.1* %11, i32 %70)
  br label %72

72:                                               ; preds = %171, %62
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %75 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %172

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.fat_entry.1, %struct.fat_entry.1* %11, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %82 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i8*, i8** @FAT_START_ENT, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = getelementptr inbounds %struct.fat_entry.1, %struct.fat_entry.1* %11, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %78
  %90 = getelementptr inbounds %struct.fat_entry.1, %struct.fat_entry.1* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @fatent_set_entry(%struct.fat_entry.1* %11, i32 %91)
  %93 = load %struct.super_block*, %struct.super_block** %8, align 8
  %94 = call i32 @fat_ent_read_block(%struct.super_block* %93, %struct.fat_entry.1* %11)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %181

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %167, %98
  %100 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %101 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %100, i32 0, i32 0
  %102 = load i64 (%struct.fat_entry*)*, i64 (%struct.fat_entry*)** %101, align 8
  %103 = bitcast %struct.fat_entry.1* %11 to %struct.fat_entry*
  %104 = call i64 %102(%struct.fat_entry* %103)
  %105 = load i64, i64* @FAT_ENT_FREE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %157

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.fat_entry.1, %struct.fat_entry.1* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %21, align 4
  %110 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %111 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %110, i32 0, i32 1
  %112 = load i32 (%struct.fat_entry.0*, i32)*, i32 (%struct.fat_entry.0*, i32)** %111, align 8
  %113 = bitcast %struct.fat_entry.1* %11 to %struct.fat_entry.0*
  %114 = load i32, i32* @FAT_ENT_EOF, align 4
  %115 = call i32 %112(%struct.fat_entry.0* %113, i32 %114)
  %116 = getelementptr inbounds %struct.fat_entry.1, %struct.fat_entry.1* %12, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %107
  %120 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %121 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %120, i32 0, i32 1
  %122 = load i32 (%struct.fat_entry.0*, i32)*, i32 (%struct.fat_entry.0*, i32)** %121, align 8
  %123 = bitcast %struct.fat_entry.1* %12 to %struct.fat_entry.0*
  %124 = load i32, i32* %21, align 4
  %125 = call i32 %122(%struct.fat_entry.0* %123, i32 %124)
  br label %126

126:                                              ; preds = %119, %107
  %127 = call i32 @fat_collect_bhs(%struct.buffer_head** %33, i32* %18, %struct.fat_entry.1* %11)
  %128 = load i32, i32* %21, align 4
  %129 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %130 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %132 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, -1
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %137 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %135, %126
  %141 = load %struct.super_block*, %struct.super_block** %8, align 8
  %142 = getelementptr inbounds %struct.super_block, %struct.super_block* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* %21, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %181

154:                                              ; preds = %140
  %155 = bitcast %struct.fat_entry.1* %12 to i8*
  %156 = bitcast %struct.fat_entry.1* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 8 %156, i64 16, i1 false)
  br label %157

157:                                              ; preds = %154, %99
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %162 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %171

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %169 = call i64 @fat_ent_next(%struct.msdos_sb_info* %168, %struct.fat_entry.1* %11)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %99, label %171

171:                                              ; preds = %167, %165
  br label %72

172:                                              ; preds = %72
  %173 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %174 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %176 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load %struct.super_block*, %struct.super_block** %8, align 8
  %178 = getelementptr inbounds %struct.super_block, %struct.super_block* %177, i32 0, i32 0
  store i32 1, i32* %178, align 4
  %179 = load i32, i32* @ENOSPC, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %172, %153, %97
  %182 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %183 = call i32 @unlock_fat(%struct.msdos_sb_info* %182)
  %184 = call i32 @fatent_brelse(%struct.fat_entry.1* %11)
  %185 = load i32, i32* %17, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %202, label %187

187:                                              ; preds = %181
  %188 = load %struct.inode*, %struct.inode** %5, align 8
  %189 = call i64 @inode_needs_sync(%struct.inode* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @fat_sync_bhs(%struct.buffer_head** %33, i32 %192)
  store i32 %193, i32* %17, align 4
  br label %194

194:                                              ; preds = %191, %187
  %195 = load i32, i32* %17, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = load %struct.super_block*, %struct.super_block** %8, align 8
  %199 = load i32, i32* %18, align 4
  %200 = call i32 @fat_mirror_bhs(%struct.super_block* %198, %struct.buffer_head** %33, i32 %199)
  store i32 %200, i32* %17, align 4
  br label %201

201:                                              ; preds = %197, %194
  br label %202

202:                                              ; preds = %201, %181
  store i32 0, i32* %15, align 4
  br label %203

203:                                              ; preds = %213, %202
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %18, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %33, i64 %209
  %211 = load %struct.buffer_head*, %struct.buffer_head** %210, align 8
  %212 = call i32 @brelse(%struct.buffer_head* %211)
  br label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %203

216:                                              ; preds = %203
  %217 = load i32, i32* %17, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = load i32, i32* %19, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load %struct.inode*, %struct.inode** %5, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @fat_free_clusters(%struct.inode* %223, i32 %226)
  br label %228

228:                                              ; preds = %222, %219, %216
  %229 = load i32, i32* %17, align 4
  store i32 %229, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %230

230:                                              ; preds = %228, %57
  %231 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lock_fat(%struct.msdos_sb_info*) #1

declare dso_local i32 @unlock_fat(%struct.msdos_sb_info*) #1

declare dso_local i32 @fatent_init(%struct.fat_entry.1*) #1

declare dso_local i32 @fatent_set_entry(%struct.fat_entry.1*, i32) #1

declare dso_local i32 @fat_ent_read_block(%struct.super_block*, %struct.fat_entry.1*) #1

declare dso_local i32 @fat_collect_bhs(%struct.buffer_head**, i32*, %struct.fat_entry.1*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @fat_ent_next(%struct.msdos_sb_info*, %struct.fat_entry.1*) #1

declare dso_local i32 @fatent_brelse(%struct.fat_entry.1*) #1

declare dso_local i64 @inode_needs_sync(%struct.inode*) #1

declare dso_local i32 @fat_sync_bhs(%struct.buffer_head**, i32) #1

declare dso_local i32 @fat_mirror_bhs(%struct.super_block*, %struct.buffer_head**, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
