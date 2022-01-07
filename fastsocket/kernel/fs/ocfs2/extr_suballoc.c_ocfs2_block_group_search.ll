; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i32, i32, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Checking %llu against %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, i32, i64, i64*, i64*)* @ocfs2_block_group_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_search(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %15, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %23, %struct.ocfs2_group_desc** %17, align 8
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @ocfs2_is_cluster_bitmap(%struct.inode* %28)
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %32 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %7
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @OCFS2_SB(i32 %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %43 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load i64*, i64** %13, align 8
  %47 = load i64*, i64** %14, align 8
  %48 = call i32 @ocfs2_block_group_find_clear_bits(i32 %39, %struct.buffer_head* %40, i32 %41, i32 %45, i64* %46, i64* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %35
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %56 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @le64_to_cpu(i32 %57)
  %59 = load i64*, i64** %13, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %58, %60
  %62 = load i64*, i64** %14, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %61, %63
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %66)
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %71, %54
  br label %75

75:                                               ; preds = %74, %51, %35
  br label %76

76:                                               ; preds = %75, %7
  %77 = load i32, i32* %15, align 4
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_cluster_bitmap(%struct.inode*) #1

declare dso_local i32 @ocfs2_block_group_find_clear_bits(i32, %struct.buffer_head*, i32, i32, i64*, i64*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
