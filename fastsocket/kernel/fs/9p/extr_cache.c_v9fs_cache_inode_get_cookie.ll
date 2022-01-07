; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_inode_get_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c_v9fs_cache_inode_get_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.v9fs_cookie = type { i64 }
%struct.v9fs_session_info = type { i32 }

@v9fs_cache_inode_index_def = common dso_local global i32 0, align 4
@P9_DEBUG_FSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"inode %p get cookie %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_cache_inode_get_cookie(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.v9fs_cookie*, align 8
  %4 = alloca %struct.v9fs_session_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @S_ISREG(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.v9fs_cookie* @v9fs_inode2cookie(%struct.inode* %12)
  store %struct.v9fs_cookie* %13, %struct.v9fs_cookie** %3, align 8
  %14 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %15 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %35

19:                                               ; preds = %11
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %20)
  store %struct.v9fs_session_info* %21, %struct.v9fs_session_info** %4, align 8
  %22 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %23 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %26 = call i64 @fscache_acquire_cookie(i32 %24, i32* @v9fs_cache_inode_index_def, %struct.v9fs_cookie* %25)
  %27 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %28 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @P9_DEBUG_FSC, align 4
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %3, align 8
  %32 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @P9_DPRINTK(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.inode* %30, i64 %33)
  br label %35

35:                                               ; preds = %19, %18, %10
  ret void
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.v9fs_cookie* @v9fs_inode2cookie(%struct.inode*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i64 @fscache_acquire_cookie(i32, i32*, %struct.v9fs_cookie*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
