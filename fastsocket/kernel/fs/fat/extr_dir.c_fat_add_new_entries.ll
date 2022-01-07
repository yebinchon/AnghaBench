; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_add_new_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_add_new_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.msdos_dir_entry = type { i32 }
%struct.buffer_head = type { i64 }
%struct.msdos_sb_info = type { i32, i64, i64 }

@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, i32*, %struct.msdos_dir_entry**, %struct.buffer_head**, i32*)* @fat_add_new_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_add_new_entries(%struct.inode* %0, i8* %1, i32 %2, i32* %3, %struct.msdos_dir_entry** %4, %struct.buffer_head** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.msdos_dir_entry**, align 8
  %14 = alloca %struct.buffer_head**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.msdos_sb_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [2 x i32], align 4
  %30 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.msdos_dir_entry** %4, %struct.msdos_dir_entry*** %13, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %14, align 8
  store i32* %6, i32** %15, align 8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %16, align 8
  %34 = load %struct.super_block*, %struct.super_block** %16, align 8
  %35 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %34)
  store %struct.msdos_sb_info* %35, %struct.msdos_sb_info** %17, align 8
  %36 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %18, align 8
  %39 = alloca %struct.buffer_head*, i64 %37, align 16
  store i64 %37, i64* %19, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  store i64 %42, i64* %23, align 8
  %43 = load i64, i64* %23, align 8
  %44 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %17, align 8
  %45 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = add i64 %43, %48
  %50 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %17, align 8
  %51 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = lshr i64 %49, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %12, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 2
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fat_alloc_clusters(%struct.inode* %61, i32* %62, i32 %64)
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %25, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %7
  br label %228

69:                                               ; preds = %7
  store i64 0, i64* %24, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %70

70:                                               ; preds = %142, %69
  %71 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %17, align 8
  %72 = load i32, i32* %26, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @fat_clus_to_blknr(%struct.msdos_sb_info* %71, i32 %75)
  store i64 %76, i64* %20, align 8
  store i64 %76, i64* %21, align 8
  %77 = load i64, i64* %21, align 8
  %78 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %17, align 8
  %79 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  store i64 %81, i64* %22, align 8
  br label %82

82:                                               ; preds = %136, %70
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %22, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %141

86:                                               ; preds = %82
  %87 = load %struct.super_block*, %struct.super_block** %16, align 8
  %88 = load i64, i64* %20, align 8
  %89 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %87, i64 %88)
  %90 = load i32, i32* %27, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %91
  store %struct.buffer_head* %89, %struct.buffer_head** %92, align 8
  %93 = load i32, i32* %27, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %94
  %96 = load %struct.buffer_head*, %struct.buffer_head** %95, align 8
  %97 = icmp ne %struct.buffer_head* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %25, align 4
  br label %209

101:                                              ; preds = %86
  %102 = load i64, i64* %23, align 8
  %103 = load %struct.super_block*, %struct.super_block** %16, align 8
  %104 = getelementptr inbounds %struct.super_block, %struct.super_block* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @min(i64 %102, i64 %105)
  store i64 %106, i64* %24, align 8
  %107 = load i32, i32* %27, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %108
  %110 = load %struct.buffer_head*, %struct.buffer_head** %109, align 8
  %111 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i64, i64* %24, align 8
  %115 = call i32 @memcpy(i64 %112, i8* %113, i64 %114)
  %116 = load i64, i64* %24, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr i8, i8* %117, i64 %116
  store i8* %118, i8** %10, align 8
  %119 = load i64, i64* %24, align 8
  %120 = load i64, i64* %23, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %23, align 8
  %122 = load i32, i32* %27, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %123
  %125 = load %struct.buffer_head*, %struct.buffer_head** %124, align 8
  %126 = call i32 @set_buffer_uptodate(%struct.buffer_head* %125)
  %127 = load i32, i32* %27, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %128
  %130 = load %struct.buffer_head*, %struct.buffer_head** %129, align 8
  %131 = load %struct.inode*, %struct.inode** %9, align 8
  %132 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %130, %struct.inode* %131)
  %133 = load i64, i64* %23, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %101
  br label %141

136:                                              ; preds = %101
  %137 = load i32, i32* %27, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %27, align 4
  %139 = load i64, i64* %20, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %20, align 8
  br label %82

141:                                              ; preds = %135, %82
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %26, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %26, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %70, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %27, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %150
  %152 = load %struct.buffer_head*, %struct.buffer_head** %151, align 8
  %153 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %24, align 8
  %156 = add i64 %154, %155
  %157 = load %struct.super_block*, %struct.super_block** %16, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %24, align 8
  %161 = sub i64 %159, %160
  %162 = call i32 @memset(i64 %156, i32 0, i64 %161)
  %163 = load i64, i64* %24, align 8
  %164 = sub i64 %163, 4
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %28, align 4
  %166 = load i32, i32* %27, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %167
  %169 = load %struct.buffer_head*, %struct.buffer_head** %168, align 8
  %170 = call i32 @get_bh(%struct.buffer_head* %169)
  %171 = load i32, i32* %27, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %172
  %174 = load %struct.buffer_head*, %struct.buffer_head** %173, align 8
  %175 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %174, %struct.buffer_head** %175, align 8
  %176 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %177 = load %struct.buffer_head*, %struct.buffer_head** %176, align 8
  %178 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %28, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = inttoptr i64 %182 to %struct.msdos_dir_entry*
  %184 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %13, align 8
  store %struct.msdos_dir_entry* %183, %struct.msdos_dir_entry** %184, align 8
  %185 = load %struct.super_block*, %struct.super_block** %16, align 8
  %186 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %187 = load %struct.buffer_head*, %struct.buffer_head** %186, align 8
  %188 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %13, align 8
  %189 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %188, align 8
  %190 = call i32 @fat_make_i_pos(%struct.super_block* %185, %struct.buffer_head* %187, %struct.msdos_dir_entry* %189)
  %191 = load i32*, i32** %15, align 8
  store i32 %190, i32* %191, align 4
  %192 = load %struct.inode*, %struct.inode** %9, align 8
  %193 = load i64, i64* %21, align 8
  %194 = load i32, i32* %27, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %27, align 4
  %196 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %197 = call i32 @fat_zeroed_cluster(%struct.inode* %192, i64 %193, i32 %195, %struct.buffer_head** %39, i32 %196)
  store i32 %197, i32* %25, align 4
  %198 = load i32, i32* %25, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %148
  br label %204

201:                                              ; preds = %148
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %230

204:                                              ; preds = %200
  %205 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %206 = load %struct.buffer_head*, %struct.buffer_head** %205, align 8
  %207 = call i32 @brelse(%struct.buffer_head* %206)
  %208 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %208, align 8
  store i32 0, i32* %27, align 4
  br label %209

209:                                              ; preds = %204, %98
  store i32 0, i32* %26, align 4
  br label %210

210:                                              ; preds = %220, %209
  %211 = load i32, i32* %26, align 4
  %212 = load i32, i32* %27, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %210
  %215 = load i32, i32* %26, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %216
  %218 = load %struct.buffer_head*, %struct.buffer_head** %217, align 8
  %219 = call i32 @bforget(%struct.buffer_head* %218)
  br label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %26, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %26, align 4
  br label %210

223:                                              ; preds = %210
  %224 = load %struct.inode*, %struct.inode** %9, align 8
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @fat_free_clusters(%struct.inode* %224, i32 %226)
  br label %228

228:                                              ; preds = %223, %68
  %229 = load i32, i32* %25, align 4
  store i32 %229, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %230

230:                                              ; preds = %228, %201
  %231 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %8, align 4
  ret i32 %232
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fat_alloc_clusters(%struct.inode*, i32*, i32) #1

declare dso_local i64 @fat_clus_to_blknr(%struct.msdos_sb_info*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @fat_make_i_pos(%struct.super_block*, %struct.buffer_head*, %struct.msdos_dir_entry*) #1

declare dso_local i32 @fat_zeroed_cluster(%struct.inode*, i64, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
