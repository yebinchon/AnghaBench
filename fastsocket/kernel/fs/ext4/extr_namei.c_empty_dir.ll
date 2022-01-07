; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_empty_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_dir_entry_2 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"error %d reading directory #%lu offset 0\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"bad directory (dir #%lu) - no data block\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"bad directory (dir #%lu) - no `.' or `..'\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"error %d reading directory #%lu offset %u\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"empty_dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @empty_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ext4_dir_entry_2*, align 8
  %7 = alloca %struct.ext4_dir_entry_2*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @EXT4_DIR_REC_LEN(i32 1)
  %17 = call i32 @EXT4_DIR_REC_LEN(i32 2)
  %18 = add i32 %16, %17
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call %struct.buffer_head* @ext4_bread(i32* null, %struct.inode* %21, i32 0, i32 0, i32* %9)
  store %struct.buffer_head* %22, %struct.buffer_head** %5, align 8
  %23 = icmp ne %struct.buffer_head* %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 2
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.super_block*, i8*, i32, i64, ...) @ext4_error(%struct.super_block* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %34)
  br label %44

36:                                               ; preds = %24
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  %39 = load %struct.super_block*, %struct.super_block** %38, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ext4_warning(%struct.super_block* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %36, %27
  store i32 1, i32* %2, align 4
  br label %218

45:                                               ; preds = %20
  %46 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %49, %struct.ext4_dir_entry_2** %6, align 8
  %50 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %51 = load %struct.super_block*, %struct.super_block** %8, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %50, i32 %53)
  store %struct.ext4_dir_entry_2* %54, %struct.ext4_dir_entry_2** %7, align 8
  %55 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %56 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le32_to_cpu(i32 %57)
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %45
  %64 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %65 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @le32_to_cpu(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %71 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %77 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75, %69, %63, %45
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 2
  %84 = load %struct.super_block*, %struct.super_block** %83, align 8
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ext4_warning(%struct.super_block* %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %87)
  %89 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  store i32 1, i32* %2, align 4
  br label %218

91:                                               ; preds = %75
  %92 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %93 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.super_block*, %struct.super_block** %8, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ext4_rec_len_from_disk(i32 %94, i32 %97)
  %99 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %100 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.super_block*, %struct.super_block** %8, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ext4_rec_len_from_disk(i32 %101, i32 %104)
  %106 = add i32 %98, %105
  store i32 %106, i32* %4, align 4
  %107 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  %108 = load %struct.super_block*, %struct.super_block** %8, align 8
  %109 = getelementptr inbounds %struct.super_block, %struct.super_block* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %107, i32 %110)
  store %struct.ext4_dir_entry_2* %111, %struct.ext4_dir_entry_2** %6, align 8
  br label %112

112:                                              ; preds = %200, %174, %156, %91
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ult i32 %113, %116
  br i1 %117, label %118, label %215

118:                                              ; preds = %112
  %119 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %120 = icmp ne %struct.buffer_head* %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %123 = bitcast %struct.ext4_dir_entry_2* %122 to i8*
  %124 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.super_block*, %struct.super_block** %8, align 8
  %128 = getelementptr inbounds %struct.super_block, %struct.super_block* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  %131 = add nsw i64 %126, %130
  %132 = inttoptr i64 %131 to i8*
  %133 = icmp uge i8* %123, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %121, %118
  store i32 0, i32* %9, align 4
  %135 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.super_block*, %struct.super_block** %8, align 8
  %140 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %139)
  %141 = lshr i32 %138, %140
  %142 = call %struct.buffer_head* @ext4_bread(i32* null, %struct.inode* %137, i32 %141, i32 0, i32* %9)
  store %struct.buffer_head* %142, %struct.buffer_head** %5, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %144 = icmp ne %struct.buffer_head* %143, null
  br i1 %144, label %162, label %145

145:                                              ; preds = %134
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = load %struct.super_block*, %struct.super_block** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call i32 (%struct.super_block*, i8*, i32, i64, ...) @ext4_error(%struct.super_block* %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %150, i64 %153, i32 %154)
  br label %156

156:                                              ; preds = %148, %145
  %157 = load %struct.super_block*, %struct.super_block** %8, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %4, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %4, align 4
  br label %112

162:                                              ; preds = %134
  %163 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %164 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %166, %struct.ext4_dir_entry_2** %6, align 8
  br label %167

167:                                              ; preds = %162, %121
  %168 = load %struct.inode*, %struct.inode** %3, align 8
  %169 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %170 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @ext4_check_dir_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.inode* %168, %struct.ext4_dir_entry_2* %169, %struct.buffer_head* %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %191, label %174

174:                                              ; preds = %167
  %175 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %176 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.super_block*, %struct.super_block** %8, align 8
  %179 = getelementptr inbounds %struct.super_block, %struct.super_block* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = zext i32 %180 to i64
  %182 = add nsw i64 %177, %181
  %183 = inttoptr i64 %182 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %183, %struct.ext4_dir_entry_2** %6, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.super_block*, %struct.super_block** %8, align 8
  %186 = getelementptr inbounds %struct.super_block, %struct.super_block* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sub i32 %187, 1
  %189 = or i32 %184, %188
  %190 = add i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %112

191:                                              ; preds = %167
  %192 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %193 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @le32_to_cpu(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %199 = call i32 @brelse(%struct.buffer_head* %198)
  store i32 0, i32* %2, align 4
  br label %218

200:                                              ; preds = %191
  %201 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %202 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.super_block*, %struct.super_block** %8, align 8
  %205 = getelementptr inbounds %struct.super_block, %struct.super_block* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ext4_rec_len_from_disk(i32 %203, i32 %206)
  %208 = load i32, i32* %4, align 4
  %209 = add i32 %208, %207
  store i32 %209, i32* %4, align 4
  %210 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %211 = load %struct.super_block*, %struct.super_block** %8, align 8
  %212 = getelementptr inbounds %struct.super_block, %struct.super_block* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %210, i32 %213)
  store %struct.ext4_dir_entry_2* %214, %struct.ext4_dir_entry_2** %6, align 8
  br label %112

215:                                              ; preds = %112
  %216 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %217 = call i32 @brelse(%struct.buffer_head* %216)
  store i32 1, i32* %2, align 4
  br label %218

218:                                              ; preds = %215, %197, %81, %44
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local %struct.buffer_head* @ext4_bread(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i64, ...) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, i64) #1

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i32 @ext4_check_dir_entry(i8*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
