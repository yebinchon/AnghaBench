; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_inode_set_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_inode_set_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.p9_fid* }
%struct.p9_fid = type { i32 }
%struct.v9fs_cookie = type { i32, i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_cache_inode_set_cookie(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v9fs_cookie*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.v9fs_cookie* @v9fs_inode2cookie(%struct.inode* %7)
  store %struct.v9fs_cookie* %8, %struct.v9fs_cookie** %5, align 8
  %9 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %5, align 8
  %10 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %5, align 8
  %16 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = load %struct.p9_fid*, %struct.p9_fid** %19, align 8
  store %struct.p9_fid* %20, %struct.p9_fid** %6, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @O_ACCMODE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call i32 @v9fs_cache_inode_flush_cookie(%struct.inode* %29)
  br label %34

31:                                               ; preds = %14
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call i32 @v9fs_cache_inode_get_cookie(%struct.inode* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %5, align 8
  %36 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  br label %38

38:                                               ; preds = %34, %13
  ret void
}

declare dso_local %struct.v9fs_cookie* @v9fs_inode2cookie(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @v9fs_cache_inode_flush_cookie(%struct.inode*) #1

declare dso_local i32 @v9fs_cache_inode_get_cookie(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
