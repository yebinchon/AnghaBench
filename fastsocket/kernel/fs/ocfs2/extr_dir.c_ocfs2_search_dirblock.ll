; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_search_dirblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_search_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dir_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.inode*, i8*, i32, i64, i8*, i32, %struct.ocfs2_dir_entry**)* @ocfs2_search_dirblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_search_dirblock(%struct.buffer_head* %0, %struct.inode* %1, i8* %2, i32 %3, i64 %4, i8* %5, i32 %6, %struct.ocfs2_dir_entry** %7) #0 {
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_dir_entry**, align 8
  %17 = alloca %struct.ocfs2_dir_entry*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.ocfs2_dir_entry** %7, %struct.ocfs2_dir_entry*** %16, align 8
  store i32 0, i32* %21, align 4
  %22 = call i32 (...) @mlog_entry_void()
  %23 = load i8*, i8** %14, align 8
  store i8* %23, i8** %19, align 8
  %24 = load i8*, i8** %19, align 8
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8* %27, i8** %18, align 8
  br label %28

28:                                               ; preds = %66, %8
  %29 = load i8*, i8** %19, align 8
  %30 = load i8*, i8** %18, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = load i8*, i8** %19, align 8
  %34 = bitcast i8* %33 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %34, %struct.ocfs2_dir_entry** %17, align 8
  %35 = load i8*, i8** %19, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8*, i8** %18, align 8
  %40 = icmp ule i8* %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %45 = call i64 @ocfs2_match(i32 %42, i8* %43, %struct.ocfs2_dir_entry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @ocfs2_check_dir_entry(%struct.inode* %48, %struct.ocfs2_dir_entry* %49, %struct.buffer_head* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 -1, i32* %21, align 4
  br label %76

55:                                               ; preds = %47
  %56 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %57 = load %struct.ocfs2_dir_entry**, %struct.ocfs2_dir_entry*** %16, align 8
  store %struct.ocfs2_dir_entry* %56, %struct.ocfs2_dir_entry** %57, align 8
  store i32 1, i32* %21, align 4
  br label %76

58:                                               ; preds = %41, %32
  %59 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %17, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 -1, i32* %21, align 4
  br label %76

66:                                               ; preds = %58
  %67 = load i32, i32* %20, align 4
  %68 = load i8*, i8** %19, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %19, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %13, align 8
  br label %28

75:                                               ; preds = %28
  br label %76

76:                                               ; preds = %75, %65, %55, %54
  %77 = load i32, i32* %21, align 4
  %78 = call i32 @mlog_exit(i32 %77)
  %79 = load i32, i32* %21, align 4
  ret i32 %79
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_match(i32, i8*, %struct.ocfs2_dir_entry*) #1

declare dso_local i32 @ocfs2_check_dir_entry(%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
