; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file-item.c_btrfs_csum_one_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file-item.c_btrfs_csum_one_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.inode = type { i32 }
%struct.bio = type { i32, i64, i64, %struct.bio_vec* }
%struct.bio_vec = type { i32, i32, i32 }
%struct.btrfs_ordered_sum = type { i64, i32, %struct.btrfs_sector_sum*, i32 }
%struct.btrfs_sector_sum = type { i32, i32 }
%struct.btrfs_ordered_extent = type { i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_csum_one_bio(%struct.btrfs_root* %0, %struct.inode* %1, %struct.bio* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_ordered_sum*, align 8
  %13 = alloca %struct.btrfs_sector_sum*, align 8
  %14 = alloca %struct.btrfs_ordered_extent*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.bio_vec*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.bio* %2, %struct.bio** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.bio*, %struct.bio** %9, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 3
  %25 = load %struct.bio_vec*, %struct.bio_vec** %24, align 8
  store %struct.bio_vec* %25, %struct.bio_vec** %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %26 = load %struct.bio*, %struct.bio** %9, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %33 = load %struct.bio*, %struct.bio** %9, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @btrfs_ordered_sum_size(%struct.btrfs_root* %32, i64 %35)
  %37 = load i32, i32* @GFP_NOFS, align 4
  %38 = call %struct.btrfs_ordered_sum* @kzalloc(i32 %36, i32 %37)
  store %struct.btrfs_ordered_sum* %38, %struct.btrfs_ordered_sum** %12, align 8
  %39 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %40 = icmp ne %struct.btrfs_ordered_sum* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %5
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %241

44:                                               ; preds = %5
  %45 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %46 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %45, i32 0, i32 2
  %47 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %46, align 8
  store %struct.btrfs_sector_sum* %47, %struct.btrfs_sector_sum** %13, align 8
  %48 = load %struct.bio*, %struct.bio** %9, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 %51, 9
  store i32 %52, i32* %21, align 4
  %53 = load %struct.bio*, %struct.bio** %9, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %57 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %59 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %58, i32 0, i32 3
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %44
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %20, align 4
  br label %74

65:                                               ; preds = %44
  %66 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %67 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @page_offset(i32 %68)
  %70 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %71 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %20, align 4
  br label %74

74:                                               ; preds = %65, %63
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load i32, i32* %20, align 4
  %77 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode* %75, i32 %76)
  store %struct.btrfs_ordered_extent* %77, %struct.btrfs_ordered_extent** %14, align 8
  %78 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %79 = icmp ne %struct.btrfs_ordered_extent* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %84 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %87 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %169, %74
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.bio*, %struct.bio** %9, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %234

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %94
  %98 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %99 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @page_offset(i32 %100)
  %102 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %103 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %97, %94
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %169, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %20, align 4
  %111 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %112 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %115 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = icmp sge i32 %110, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %20, align 4
  %121 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %122 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %119, %109
  %126 = load i64, i64* %19, align 8
  %127 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %128 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  store i64 0, i64* %19, align 8
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %131 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %132 = call i32 @btrfs_add_ordered_sum(%struct.inode* %129, %struct.btrfs_ordered_extent* %130, %struct.btrfs_ordered_sum* %131)
  %133 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %134 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %133)
  %135 = load %struct.bio*, %struct.bio** %9, align 8
  %136 = getelementptr inbounds %struct.bio, %struct.bio* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %18, align 8
  %139 = sub i64 %137, %138
  store i64 %139, i64* %22, align 8
  %140 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %141 = load i64, i64* %22, align 8
  %142 = call i32 @btrfs_ordered_sum_size(%struct.btrfs_root* %140, i64 %141)
  %143 = load i32, i32* @GFP_NOFS, align 4
  %144 = call %struct.btrfs_ordered_sum* @kzalloc(i32 %142, i32 %143)
  store %struct.btrfs_ordered_sum* %144, %struct.btrfs_ordered_sum** %12, align 8
  %145 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %146 = icmp ne %struct.btrfs_ordered_sum* %145, null
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @BUG_ON(i32 %148)
  %150 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %151 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %150, i32 0, i32 2
  %152 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %151, align 8
  store %struct.btrfs_sector_sum* %152, %struct.btrfs_sector_sum** %13, align 8
  %153 = load i64, i64* %22, align 8
  %154 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %155 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = load i32, i32* %20, align 4
  %158 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode* %156, i32 %157)
  store %struct.btrfs_ordered_extent* %158, %struct.btrfs_ordered_extent** %14, align 8
  %159 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %160 = icmp ne %struct.btrfs_ordered_extent* %159, null
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 @BUG_ON(i32 %162)
  %164 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %165 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %168 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %125, %119, %106
  %170 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %171 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @KM_USER0, align 4
  %174 = call i8* @kmap_atomic(i32 %172, i32 %173)
  store i8* %174, i8** %15, align 8
  %175 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %13, align 8
  %176 = getelementptr inbounds %struct.btrfs_sector_sum, %struct.btrfs_sector_sum* %175, i32 0, i32 1
  store i32 -1, i32* %176, align 4
  %177 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %178 = load i8*, i8** %15, align 8
  %179 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %180 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %178, i64 %182
  %184 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %13, align 8
  %185 = getelementptr inbounds %struct.btrfs_sector_sum, %struct.btrfs_sector_sum* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %188 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @btrfs_csum_data(%struct.btrfs_root* %177, i8* %183, i32 %186, i32 %189)
  %191 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %13, align 8
  %192 = getelementptr inbounds %struct.btrfs_sector_sum, %struct.btrfs_sector_sum* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load i8*, i8** %15, align 8
  %194 = load i32, i32* @KM_USER0, align 4
  %195 = call i32 @kunmap_atomic(i8* %193, i32 %194)
  %196 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %13, align 8
  %197 = getelementptr inbounds %struct.btrfs_sector_sum, %struct.btrfs_sector_sum* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %13, align 8
  %200 = getelementptr inbounds %struct.btrfs_sector_sum, %struct.btrfs_sector_sum* %199, i32 0, i32 1
  %201 = bitcast i32* %200 to i8*
  %202 = call i32 @btrfs_csum_final(i32 %198, i8* %201)
  %203 = load i32, i32* %21, align 4
  %204 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %13, align 8
  %205 = getelementptr inbounds %struct.btrfs_sector_sum, %struct.btrfs_sector_sum* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  %206 = load %struct.btrfs_sector_sum*, %struct.btrfs_sector_sum** %13, align 8
  %207 = getelementptr inbounds %struct.btrfs_sector_sum, %struct.btrfs_sector_sum* %206, i32 1
  store %struct.btrfs_sector_sum* %207, %struct.btrfs_sector_sum** %13, align 8
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  %210 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %211 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %18, align 8
  %215 = add i64 %214, %213
  store i64 %215, i64* %18, align 8
  %216 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %217 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %19, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %19, align 8
  %222 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %223 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %21, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %21, align 4
  %227 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %228 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %20, align 4
  %232 = load %struct.bio_vec*, %struct.bio_vec** %16, align 8
  %233 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %232, i32 1
  store %struct.bio_vec* %233, %struct.bio_vec** %16, align 8
  br label %88

234:                                              ; preds = %88
  store i64 0, i64* %19, align 8
  %235 = load %struct.inode*, %struct.inode** %8, align 8
  %236 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %237 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %12, align 8
  %238 = call i32 @btrfs_add_ordered_sum(%struct.inode* %235, %struct.btrfs_ordered_extent* %236, %struct.btrfs_ordered_sum* %237)
  %239 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %14, align 8
  %240 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %239)
  store i32 0, i32* %6, align 4
  br label %241

241:                                              ; preds = %234, %41
  %242 = load i32, i32* %6, align 4
  ret i32 %242
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.btrfs_ordered_sum* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_ordered_sum_size(%struct.btrfs_root*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @page_offset(i32) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_add_ordered_sum(%struct.inode*, %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_sum*) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @btrfs_csum_data(%struct.btrfs_root*, i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @btrfs_csum_final(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
