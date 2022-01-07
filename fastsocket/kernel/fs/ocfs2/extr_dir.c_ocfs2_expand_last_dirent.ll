; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_expand_last_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_expand_last_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_dir_entry = type { i32 }

@OCFS2_DIR_MIN_REC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.inode*)* @ocfs2_expand_last_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_expand_last_dirent(i8* %0, i32 %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ocfs2_dir_entry*, align 8
  %10 = alloca %struct.ocfs2_dir_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %8, align 8
  %20 = load %struct.super_block*, %struct.super_block** %8, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i64 @ocfs2_new_dir_wants_trailer(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.super_block*, %struct.super_block** %8, align 8
  %28 = call i32 @ocfs2_dir_trailer_blk_off(%struct.super_block* %27)
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast i8* %38 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %39, %struct.ocfs2_dir_entry** %9, align 8
  br label %40

40:                                               ; preds = %59, %29
  %41 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %42 = call i32 @ocfs2_figure_dirent_hole(%struct.ocfs2_dir_entry* %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %16, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  store %struct.ocfs2_dir_entry* %49, %struct.ocfs2_dir_entry** %10, align 8
  %50 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %9, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load i8*, i8** %11, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = bitcast i8* %57 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %58, %struct.ocfs2_dir_entry** %9, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %40, label %63

63:                                               ; preds = %59
  %64 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %65 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @le16_add_cpu(i32* %65, i32 %66)
  %68 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %10, align 8
  %69 = call i32 @ocfs2_figure_dirent_hole(%struct.ocfs2_dir_entry* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %73, %63
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @OCFS2_DIR_MIN_REC_LEN, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %79
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @ocfs2_new_dir_wants_trailer(%struct.inode*) #1

declare dso_local i32 @ocfs2_dir_trailer_blk_off(%struct.super_block*) #1

declare dso_local i32 @ocfs2_figure_dirent_hole(%struct.ocfs2_dir_entry*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
