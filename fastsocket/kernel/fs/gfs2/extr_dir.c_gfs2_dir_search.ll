; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_dirent = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@gfs2_dirent_find = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @gfs2_dir_search(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.gfs2_dirent*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.qstr*, %struct.qstr** %5, align 8
  %11 = load i32, i32* @gfs2_dirent_find, align 4
  %12 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode* %9, %struct.qstr* %10, i32 %11, %struct.buffer_head** %6)
  store %struct.gfs2_dirent* %12, %struct.gfs2_dirent** %7, align 8
  %13 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %14 = icmp ne %struct.gfs2_dirent* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %17 = call i64 @IS_ERR(%struct.gfs2_dirent* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %21 = call %struct.inode* @ERR_CAST(%struct.gfs2_dirent* %20)
  store %struct.inode* %21, %struct.inode** %3, align 8
  br label %48

22:                                               ; preds = %15
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %27 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be16_to_cpu(i32 %28)
  %30 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %31 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be64_to_cpu(i32 %33)
  %35 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %7, align 8
  %36 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be64_to_cpu(i32 %38)
  %40 = call %struct.inode* @gfs2_inode_lookup(i32 %25, i32 %29, i32 %34, i32 %39, i32 0)
  store %struct.inode* %40, %struct.inode** %8, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %42 = call i32 @brelse(%struct.buffer_head* %41)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %43, %struct.inode** %3, align 8
  br label %48

44:                                               ; preds = %2
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.inode* @ERR_PTR(i32 %46)
  store %struct.inode* %47, %struct.inode** %3, align 8
  br label %48

48:                                               ; preds = %44, %22, %19
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %49
}

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.gfs2_dirent*) #1

declare dso_local %struct.inode* @gfs2_inode_lookup(i32, i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
