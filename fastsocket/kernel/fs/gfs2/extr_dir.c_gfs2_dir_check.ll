; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.gfs2_inode = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_dirent = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@gfs2_dirent_find = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_check(%struct.inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_dirent*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %7, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load %struct.qstr*, %struct.qstr** %6, align 8
  %15 = load i32, i32* @gfs2_dirent_find, align 4
  %16 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode* %13, %struct.qstr* %14, i32 %15, %struct.buffer_head** %8)
  store %struct.gfs2_dirent* %16, %struct.gfs2_dirent** %9, align 8
  %17 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %18 = icmp ne %struct.gfs2_dirent* %17, null
  br i1 %18, label %19, label %76

19:                                               ; preds = %3
  %20 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %21 = call i64 @IS_ERR(%struct.gfs2_dirent* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %25 = call i32 @PTR_ERR(%struct.gfs2_dirent* %24)
  store i32 %25, i32* %4, align 4
  br label %78

26:                                               ; preds = %19
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %28 = icmp ne %struct.gfs2_inode* %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %31 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be64_to_cpu(i32 %33)
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %36 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %73

40:                                               ; preds = %29
  %41 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %42 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @be64_to_cpu(i32 %44)
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %47 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %73

51:                                               ; preds = %40
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IF2DT(i32 %55)
  %57 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %9, align 8
  %58 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be16_to_cpu(i32 %59)
  %61 = icmp ne i64 %56, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call i32 @GFS2_I(%struct.inode* %66)
  %68 = call i32 @gfs2_consist_inode(i32 %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %73

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %26
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %65, %50, %39
  %74 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  br label %76

76:                                               ; preds = %73, %3
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %23
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IF2DT(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @gfs2_consist_inode(i32) #1

declare dso_local i32 @GFS2_I(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
