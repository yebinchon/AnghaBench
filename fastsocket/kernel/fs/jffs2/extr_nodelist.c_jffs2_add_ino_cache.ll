; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_add_ino_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_add_ino_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, i32, %struct.jffs2_inode_cache** }
%struct.jffs2_inode_cache = type { i64, %struct.jffs2_inode_cache* }

@.str = private unnamed_addr constant [18 x i8] c"add %p (ino #%u)\0A\00", align 1
@INOCACHE_HASHSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_add_ino_cache(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_cache* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_inode_cache*, align 8
  %5 = alloca %struct.jffs2_inode_cache**, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_inode_cache* %1, %struct.jffs2_inode_cache** %4, align 8
  %6 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %10 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %19 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %22 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %23 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dbg_inocache(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.jffs2_inode_cache* %21, i64 %24)
  %26 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %26, i32 0, i32 2
  %28 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %27, align 8
  %29 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %30 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INOCACHE_HASHSIZE, align 8
  %33 = urem i64 %31, %32
  %34 = getelementptr inbounds %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %28, i64 %33
  store %struct.jffs2_inode_cache** %34, %struct.jffs2_inode_cache*** %5, align 8
  br label %35

35:                                               ; preds = %50, %20
  %36 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %37 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %36, align 8
  %38 = icmp ne %struct.jffs2_inode_cache* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %41 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %40, align 8
  %42 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %45 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br label %48

48:                                               ; preds = %39, %35
  %49 = phi i1 [ false, %35 ], [ %47, %39 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %52 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %51, align 8
  %53 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %52, i32 0, i32 1
  store %struct.jffs2_inode_cache** %53, %struct.jffs2_inode_cache*** %5, align 8
  br label %35

54:                                               ; preds = %48
  %55 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %56 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %55, align 8
  %57 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %58 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %57, i32 0, i32 1
  store %struct.jffs2_inode_cache* %56, %struct.jffs2_inode_cache** %58, align 8
  %59 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %60 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  store %struct.jffs2_inode_cache* %59, %struct.jffs2_inode_cache** %60, align 8
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %62 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dbg_inocache(i8*, %struct.jffs2_inode_cache*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
