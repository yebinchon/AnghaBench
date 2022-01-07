; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_diradd_alloc_required.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_diradd_alloc_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.gfs2_dirent = type { i32 }
%struct.buffer_head = type { i32 }

@gfs2_dirent_find_space = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_diradd_alloc_required(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load %struct.qstr*, %struct.qstr** %5, align 8
  %10 = load i32, i32* @gfs2_dirent_find_space, align 4
  %11 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode* %8, %struct.qstr* %9, i32 %10, %struct.buffer_head** %7)
  store %struct.gfs2_dirent* %11, %struct.gfs2_dirent** %6, align 8
  %12 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %13 = icmp ne %struct.gfs2_dirent* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %17 = call i64 @IS_ERR(%struct.gfs2_dirent* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.gfs2_dirent* %20)
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %15
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = call i32 @brelse(%struct.buffer_head* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %19, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.inode*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
