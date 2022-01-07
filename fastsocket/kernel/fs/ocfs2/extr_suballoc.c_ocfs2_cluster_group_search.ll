; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_cluster_group_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_cluster_group_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i32, i32, i64 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Desc %llu, bg_bits %u, clusters %u, use %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Checking %llu against %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i64, i64, i64*, i64*)* @ocfs2_cluster_group_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cluster_group_search(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.ocfs2_group_desc*, align 8
  %20 = alloca %struct.ocfs2_super*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  %27 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %30, %struct.ocfs2_group_desc** %19, align 8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ocfs2_super* @OCFS2_SB(i32 %33)
  store %struct.ocfs2_super* %34, %struct.ocfs2_super** %20, align 8
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = call i32 @ocfs2_is_cluster_bitmap(%struct.inode* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %42 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %143

45:                                               ; preds = %7
  %46 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %47 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %23, align 4
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %54 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le64_to_cpu(i32 %55)
  %57 = call i32 @ocfs2_blocks_to_clusters(i32 %52, i64 %56)
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %23, align 4
  %60 = add i32 %58, %59
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ugt i32 %60, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %45
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %24, align 4
  %72 = sub i32 %70, %71
  store i32 %72, i32* %23, align 4
  %73 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %74 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le64_to_cpu(i32 %75)
  %77 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %19, align 8
  %78 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = zext i32 %80 to i64
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %23, align 4
  %87 = call i32 (i32, i8*, i64, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %76, i64 %81, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %66, %45
  %89 = load %struct.inode*, %struct.inode** %9, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.ocfs2_super* @OCFS2_SB(i32 %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* %23, align 4
  %96 = call i32 @ocfs2_block_group_find_clear_bits(%struct.ocfs2_super* %92, %struct.buffer_head* %93, i64 %94, i32 %95, i64* %21, i64* %22)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %8, align 4
  br label %145

101:                                              ; preds = %88
  %102 = load i64, i64* %13, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load %struct.inode*, %struct.inode** %9, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %24, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %21, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i64, i64* %22, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i64 @ocfs2_clusters_to_blocks(i32 %107, i64 %113)
  store i64 %114, i64* %18, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i32 (i32, i8*, i64, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %115, i64 %116)
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %104
  %122 = load i32, i32* @ENOSPC, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %8, align 4
  br label %145

124:                                              ; preds = %104
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %22, align 8
  %128 = icmp sle i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i64, i64* %21, align 8
  %131 = load i64*, i64** %14, align 8
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* %22, align 8
  %133 = load i64*, i64** %15, align 8
  store i64 %132, i64* %133, align 8
  store i32 0, i32* %16, align 4
  br label %142

134:                                              ; preds = %125
  %135 = load i64, i64* %22, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %139 = load i64, i64* %22, align 8
  %140 = call i32 @ocfs2_local_alloc_seen_free_bits(%struct.ocfs2_super* %138, i64 %139)
  br label %141

141:                                              ; preds = %137, %134
  br label %142

142:                                              ; preds = %141, %129
  br label %143

143:                                              ; preds = %142, %7
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %143, %121, %99
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @ocfs2_block_group_find_clear_bits(%struct.ocfs2_super*, %struct.buffer_head*, i64, i32, i64*, i64*) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i64) #1

declare dso_local i32 @ocfs2_local_alloc_seen_free_bits(%struct.ocfs2_super*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
