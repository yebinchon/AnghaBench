; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i64 }
%struct.inode = type { i64, i32 }
%struct.bfs_dirent = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@BFS_NAMELEN = common dso_local global i32 0, align 4
@BFS_BSIZE = common dso_local global i64 0, align 8
@BFS_DIRENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i8*, i32, %struct.bfs_dirent**)* @bfs_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @bfs_find_entry(%struct.inode* %0, i8* %1, i32 %2, %struct.bfs_dirent** %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfs_dirent**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.bfs_dirent*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bfs_dirent** %3, %struct.bfs_dirent*** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %14 = load %struct.bfs_dirent**, %struct.bfs_dirent*** %9, align 8
  store %struct.bfs_dirent* null, %struct.bfs_dirent** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @BFS_NAMELEN, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %92

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %84, %83, %46, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @BFS_BSIZE, align 8
  %23 = mul i64 %21, %22
  %24 = load i64, i64* %11, align 8
  %25 = add i64 %23, %24
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %20
  %31 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %32 = icmp ne %struct.buffer_head* %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call %struct.TYPE_2__* @BFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %40, %41
  %43 = call %struct.buffer_head* @sb_bread(i32 %36, i64 %42)
  store %struct.buffer_head* %43, %struct.buffer_head** %12, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %45 = icmp ne %struct.buffer_head* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %20

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %53, %54
  %56 = inttoptr i64 %55 to %struct.bfs_dirent*
  store %struct.bfs_dirent* %56, %struct.bfs_dirent** %13, align 8
  %57 = load i64, i64* @BFS_DIRENT_SIZE, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %11, align 8
  %60 = load %struct.bfs_dirent*, %struct.bfs_dirent** %13, align 8
  %61 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le16_to_cpu(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.bfs_dirent*, %struct.bfs_dirent** %13, align 8
  %69 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @bfs_namecmp(i32 %66, i8* %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.bfs_dirent*, %struct.bfs_dirent** %13, align 8
  %75 = load %struct.bfs_dirent**, %struct.bfs_dirent*** %9, align 8
  store %struct.bfs_dirent* %74, %struct.bfs_dirent** %75, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %76, %struct.buffer_head** %5, align 8
  br label %92

77:                                               ; preds = %65, %50
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %20

84:                                               ; preds = %77
  %85 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store i64 0, i64* %11, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %20

89:                                               ; preds = %20
  %90 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %91 = call i32 @brelse(%struct.buffer_head* %90)
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %92

92:                                               ; preds = %89, %73, %18
  %93 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %93
}

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local %struct.TYPE_2__* @BFS_I(%struct.inode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @bfs_namecmp(i32, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
