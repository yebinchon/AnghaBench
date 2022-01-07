; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_free_ino_caches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_free_ino_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { %struct.jffs2_inode_cache** }
%struct.jffs2_inode_cache = type { %struct.jffs2_inode_cache* }

@INOCACHE_HASHSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_free_ino_caches(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca %struct.jffs2_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_inode_cache*, align 8
  %5 = alloca %struct.jffs2_inode_cache*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @INOCACHE_HASHSIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %12 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %11, i32 0, i32 0
  %13 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %13, i64 %15
  %17 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, align 8
  store %struct.jffs2_inode_cache* %17, %struct.jffs2_inode_cache** %4, align 8
  br label %18

18:                                               ; preds = %21, %10
  %19 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %20 = icmp ne %struct.jffs2_inode_cache* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %23 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %22, i32 0, i32 0
  %24 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %23, align 8
  store %struct.jffs2_inode_cache* %24, %struct.jffs2_inode_cache** %5, align 8
  %25 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %26 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %27 = call i32 @jffs2_xattr_free_inode(%struct.jffs2_sb_info* %25, %struct.jffs2_inode_cache* %26)
  %28 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %29 = call i32 @jffs2_free_inode_cache(%struct.jffs2_inode_cache* %28)
  %30 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %5, align 8
  store %struct.jffs2_inode_cache* %30, %struct.jffs2_inode_cache** %4, align 8
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %33 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %32, i32 0, i32 0
  %34 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %34, i64 %36
  store %struct.jffs2_inode_cache* null, %struct.jffs2_inode_cache** %37, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

declare dso_local i32 @jffs2_xattr_free_inode(%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*) #1

declare dso_local i32 @jffs2_free_inode_cache(%struct.jffs2_inode_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
