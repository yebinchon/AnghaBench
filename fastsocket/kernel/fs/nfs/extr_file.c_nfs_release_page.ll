; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_release_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_release_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }

@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"NFS: release_page(%p)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_FSTRANS = common dso_local global i32 0, align 4
@FLUSH_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @nfs_release_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_release_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load %struct.address_space*, %struct.address_space** %9, align 8
  store %struct.address_space* %10, %struct.address_space** %6, align 8
  %11 = load i32, i32* @PAGECACHE, align 4
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i32 @dfprintk(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.page* %12)
  %14 = load %struct.address_space*, %struct.address_space** %6, align 8
  %15 = icmp ne %struct.address_space* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PF_FSTRANS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @FLUSH_SYNC, align 4
  store i32 %30, i32* %7, align 4
  %31 = call i64 (...) @current_is_kswapd()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load %struct.address_space*, %struct.address_space** %6, align 8
  %36 = getelementptr inbounds %struct.address_space, %struct.address_space* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nfs_commit_inode(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %22, %16, %2
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i64 @PagePrivate(%struct.page* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %49

45:                                               ; preds = %40
  %46 = load %struct.page*, %struct.page** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @nfs_fscache_release_page(%struct.page* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dfprintk(i32, i8*, %struct.page*) #1

declare dso_local i64 @current_is_kswapd(...) #1

declare dso_local i32 @nfs_commit_inode(i32, i32) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i32 @nfs_fscache_release_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
