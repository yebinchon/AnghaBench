; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache-index.c_nfs_fscache_inode_now_uncached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache-index.c_nfs_fscache_inode_now_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pagevec = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"NFS: nfs_inode_now_uncached: nfs_inode 0x%p\0A\00", align 1
@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs_fscache_inode_now_uncached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_fscache_inode_now_uncached(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  %4 = alloca %struct.pagevec, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.nfs_inode*
  store %struct.nfs_inode* %9, %struct.nfs_inode** %3, align 8
  %10 = call i32 @pagevec_init(%struct.pagevec* %4, i32 0)
  store i64 0, i64* %5, align 8
  %11 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.nfs_inode* %11)
  br label %13

13:                                               ; preds = %42, %1
  %14 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @PAGEVEC_SIZE, align 8
  %20 = call i64 @pagevec_count(%struct.pagevec* %4)
  %21 = sub nsw i64 %19, %20
  %22 = call i32 @pagevec_lookup(%struct.pagevec* %4, i32 %17, i64 %18, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %57

26:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 1
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @ClearPageFsCache(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %27

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 1
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = call i32 @pagevec_release(%struct.pagevec* %4)
  %56 = call i32 (...) @cond_resched()
  br label %13

57:                                               ; preds = %25
  ret void
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @dprintk(i8*, %struct.nfs_inode*) #1

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, i32, i64, i64) #1

declare dso_local i64 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @ClearPageFsCache(%struct.TYPE_4__*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
