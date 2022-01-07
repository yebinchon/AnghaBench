; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_alloc.c_nilfs_palloc_prepare_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_alloc.c_nilfs_palloc_prepare_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_req = type { i64, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.nilfs_palloc_group_desc = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_palloc_prepare_alloc_entry(%struct.inode* %0, %struct.nilfs_palloc_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_palloc_req*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.nilfs_palloc_group_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_palloc_req* %1, %struct.nilfs_palloc_req** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i64 @nilfs_palloc_groups_count(%struct.inode* %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = sub i64 %26, 1
  store i64 %27, i64* %13, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %30 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @nilfs_palloc_group(%struct.inode* %28, i64 %31, i64* %15)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i64 @nilfs_palloc_entries_per_group(%struct.inode* %34)
  store i64 %35, i64* %18, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i64 @nilfs_palloc_groups_per_desc_block(%struct.inode* %36)
  store i64 %37, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %38

38:                                               ; preds = %159, %2
  %39 = load i64, i64* %20, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %163

42:                                               ; preds = %38
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  store i64 0, i64* %12, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %49 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @nilfs_palloc_group(%struct.inode* %47, i64 %50, i64* %16)
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %46, %42
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @nilfs_palloc_get_desc_block(%struct.inode* %55, i64 %56, i32 1, %struct.buffer_head** %6)
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %23, align 4
  store i32 %61, i32* %3, align 4
  br label %174

62:                                               ; preds = %54
  %63 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @kmap(i32 %65)
  store i8* %66, i8** %10, align 8
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call %struct.nilfs_palloc_group_desc* @nilfs_palloc_block_get_group_desc(%struct.inode* %67, i64 %68, %struct.buffer_head* %69, i8* %70)
  store %struct.nilfs_palloc_group_desc* %71, %struct.nilfs_palloc_group_desc** %8, align 8
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @nilfs_palloc_rest_groups_in_desc_block(%struct.inode* %72, i64 %73, i64 %74)
  store i64 %75, i64* %17, align 8
  store i64 0, i64* %21, align 8
  br label %76

76:                                               ; preds = %145, %62
  %77 = load i64, i64* %21, align 8
  %78 = load i64, i64* %17, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %152

80:                                               ; preds = %76
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.nilfs_palloc_group_desc*, %struct.nilfs_palloc_group_desc** %8, align 8
  %84 = call i64 @nilfs_palloc_group_desc_nfrees(%struct.inode* %81, i64 %82, %struct.nilfs_palloc_group_desc* %83)
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %144

86:                                               ; preds = %80
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @nilfs_palloc_get_bitmap_block(%struct.inode* %87, i64 %88, i32 1, %struct.buffer_head** %7)
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %23, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %166

93:                                               ; preds = %86
  %94 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @kmap(i32 %96)
  store i8* %97, i8** %11, align 8
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i8* @nilfs_palloc_block_get_bitmap(%struct.inode* %98, %struct.buffer_head* %99, i8* %100)
  store i8* %101, i8** %9, align 8
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %18, align 8
  %107 = call i32 @nilfs_palloc_find_available_slot(%struct.inode* %102, i64 %103, i64 %104, i8* %105, i64 %106)
  store i32 %107, i32* %22, align 4
  %108 = load i32, i32* %22, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %93
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load %struct.nilfs_palloc_group_desc*, %struct.nilfs_palloc_group_desc** %8, align 8
  %114 = call i32 @nilfs_palloc_group_desc_add_entries(%struct.inode* %111, i64 %112, %struct.nilfs_palloc_group_desc* %113, i32 -1)
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %12, align 8
  %117 = mul i64 %115, %116
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = add i64 %117, %119
  %121 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %122 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @kunmap(i32 %125)
  %127 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %128 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @kunmap(i32 %129)
  %131 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %132 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %133 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %132, i32 0, i32 2
  store %struct.buffer_head* %131, %struct.buffer_head** %133, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %135 = load %struct.nilfs_palloc_req*, %struct.nilfs_palloc_req** %5, align 8
  %136 = getelementptr inbounds %struct.nilfs_palloc_req, %struct.nilfs_palloc_req* %135, i32 0, i32 1
  store %struct.buffer_head* %134, %struct.buffer_head** %136, align 8
  store i32 0, i32* %3, align 4
  br label %174

137:                                              ; preds = %93
  %138 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @kunmap(i32 %140)
  %142 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  br label %144

144:                                              ; preds = %137, %80
  store i64 0, i64* %15, align 8
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %21, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %21, align 8
  %148 = load %struct.nilfs_palloc_group_desc*, %struct.nilfs_palloc_group_desc** %8, align 8
  %149 = getelementptr inbounds %struct.nilfs_palloc_group_desc, %struct.nilfs_palloc_group_desc* %148, i32 1
  store %struct.nilfs_palloc_group_desc* %149, %struct.nilfs_palloc_group_desc** %8, align 8
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %12, align 8
  br label %76

152:                                              ; preds = %76
  %153 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %154 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @kunmap(i32 %155)
  %157 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %158 = call i32 @brelse(%struct.buffer_head* %157)
  br label %159

159:                                              ; preds = %152
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %20, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %20, align 8
  br label %38

163:                                              ; preds = %38
  %164 = load i32, i32* @ENOSPC, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %174

166:                                              ; preds = %92
  %167 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %168 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @kunmap(i32 %169)
  %171 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %172 = call i32 @brelse(%struct.buffer_head* %171)
  %173 = load i32, i32* %23, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %166, %163, %110, %60
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @nilfs_palloc_groups_count(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_group(%struct.inode*, i64, i64*) #1

declare dso_local i64 @nilfs_palloc_entries_per_group(%struct.inode*) #1

declare dso_local i64 @nilfs_palloc_groups_per_desc_block(%struct.inode*) #1

declare dso_local i32 @nilfs_palloc_get_desc_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local %struct.nilfs_palloc_group_desc* @nilfs_palloc_block_get_group_desc(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_palloc_rest_groups_in_desc_block(%struct.inode*, i64, i64) #1

declare dso_local i64 @nilfs_palloc_group_desc_nfrees(%struct.inode*, i64, %struct.nilfs_palloc_group_desc*) #1

declare dso_local i32 @nilfs_palloc_get_bitmap_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @nilfs_palloc_block_get_bitmap(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @nilfs_palloc_find_available_slot(%struct.inode*, i64, i64, i8*, i64) #1

declare dso_local i32 @nilfs_palloc_group_desc_add_entries(%struct.inode*, i64, %struct.nilfs_palloc_group_desc*, i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
