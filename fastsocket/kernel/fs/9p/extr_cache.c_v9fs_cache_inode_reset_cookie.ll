; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_inode_reset_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_inode_reset_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.v9fs_cookie = type { i32, %struct.fscache_cookie* }
%struct.fscache_cookie = type { i32 }
%struct.v9fs_session_info = type { i32 }

@v9fs_cache_inode_index_def = common dso_local global i32 0, align 4
@P9_DEBUG_FSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"inode %p revalidating cookie old %p new %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_cache_inode_reset_cookie(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.v9fs_cookie*, align 8
  %4 = alloca %struct.v9fs_session_info*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.v9fs_cookie* @v9fs_inode2cookie(%struct.inode* %6)
  store %struct.v9fs_cookie* %7, %struct.v9fs_cookie** %3, align 8
  %8 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %9 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %8, i32 0, i32 1
  %10 = load %struct.fscache_cookie*, %struct.fscache_cookie** %9, align 8
  %11 = icmp ne %struct.fscache_cookie* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %15 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %14, i32 0, i32 1
  %16 = load %struct.fscache_cookie*, %struct.fscache_cookie** %15, align 8
  store %struct.fscache_cookie* %16, %struct.fscache_cookie** %5, align 8
  %17 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %18 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %21 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %20, i32 0, i32 1
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %23 = call i32 @fscache_relinquish_cookie(%struct.fscache_cookie* %22, i32 1)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %24)
  store %struct.v9fs_session_info* %25, %struct.v9fs_session_info** %4, align 8
  %26 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %27 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %30 = call %struct.fscache_cookie* @fscache_acquire_cookie(i32 %28, i32* @v9fs_cache_inode_index_def, %struct.v9fs_cookie* %29)
  %31 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %32 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %31, i32 0, i32 1
  store %struct.fscache_cookie* %30, %struct.fscache_cookie** %32, align 8
  %33 = load i32, i32* @P9_DEBUG_FSC, align 4
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %36 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %37 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %36, i32 0, i32 1
  %38 = load %struct.fscache_cookie*, %struct.fscache_cookie** %37, align 8
  %39 = call i32 @P9_DPRINTK(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.inode* %34, %struct.fscache_cookie* %35, %struct.fscache_cookie* %38)
  %40 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %41 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.v9fs_cookie* @v9fs_inode2cookie(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fscache_relinquish_cookie(%struct.fscache_cookie*, i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.fscache_cookie* @fscache_acquire_cookie(i32, i32*, %struct.v9fs_cookie*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.inode*, %struct.fscache_cookie*, %struct.fscache_cookie*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
