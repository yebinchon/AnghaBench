; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_index_root_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_index_root_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.ocfs2_dx_root_block = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_dir_entry = type { i32, i32, i32, i32 }
%struct.ocfs2_dx_hinfo = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"dir: %llu, major: 0x%x minor: 0x%x, index: %u, name: %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.buffer_head*, %struct.buffer_head*)* @ocfs2_dx_dir_index_root_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dx_dir_index_root_block(%struct.inode* %0, %struct.buffer_head* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ocfs2_dx_root_block*, align 8
  %10 = alloca %struct.ocfs2_dir_entry*, align 8
  %11 = alloca %struct.ocfs2_dx_hinfo, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %19, %struct.ocfs2_dx_root_block** %9, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %23, i64 %29
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %83, %3
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %37, %struct.ocfs2_dir_entry** %10, align 8
  %38 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %39 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %35
  br label %83

48:                                               ; preds = %42
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %54 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ocfs2_dx_dir_name_hash(%struct.inode* %49, i32 %52, i32 %55, %struct.ocfs2_dx_hinfo* %11)
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dx_hinfo, %struct.ocfs2_dx_hinfo* %11, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.ocfs2_dx_hinfo, %struct.ocfs2_dx_hinfo* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %9, align 8
  %65 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %70 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %73 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %59, i32 %61, i32 %63, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %9, align 8
  %77 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %76, i32 0, i32 1
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @ocfs2_dx_entry_list_insert(%struct.TYPE_4__* %77, %struct.ocfs2_dx_hinfo* %11, i32 %78)
  %80 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %9, align 8
  %81 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %80, i32 0, i32 0
  %82 = call i32 @le32_add_cpu(i32* %81, i32 1)
  br label %83

83:                                               ; preds = %48, %47
  %84 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %85 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = load i8*, i8** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  br label %31

91:                                               ; preds = %31
  ret void
}

declare dso_local i32 @ocfs2_dx_dir_name_hash(%struct.inode*, i32, i32, %struct.ocfs2_dx_hinfo*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_dx_entry_list_insert(%struct.TYPE_4__*, %struct.ocfs2_dx_hinfo*, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
