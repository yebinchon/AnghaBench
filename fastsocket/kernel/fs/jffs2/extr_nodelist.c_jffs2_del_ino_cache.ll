; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_del_ino_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_del_ino_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, %struct.jffs2_inode_cache** }
%struct.jffs2_inode_cache = type { i64, i64, %struct.jffs2_inode_cache*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"del %p (ino #%u)\0A\00", align 1
@INOCACHE_HASHSIZE = common dso_local global i64 0, align 8
@INO_STATE_READING = common dso_local global i64 0, align 8
@INO_STATE_CLEARING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_del_ino_cache(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_cache* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_inode_cache*, align 8
  %5 = alloca %struct.jffs2_inode_cache**, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_inode_cache* %1, %struct.jffs2_inode_cache** %4, align 8
  %6 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %7 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %8 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @dbg_inocache(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.jffs2_inode_cache* %6, i64 %9)
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %14, i32 0, i32 1
  %16 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %15, align 8
  %17 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %18 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INOCACHE_HASHSIZE, align 8
  %21 = urem i64 %19, %20
  %22 = getelementptr inbounds %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, i64 %21
  store %struct.jffs2_inode_cache** %22, %struct.jffs2_inode_cache*** %5, align 8
  br label %23

23:                                               ; preds = %38, %2
  %24 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %25 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %24, align 8
  %26 = icmp ne %struct.jffs2_inode_cache* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %29 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %28, align 8
  %30 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %33 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br label %36

36:                                               ; preds = %27, %23
  %37 = phi i1 [ false, %23 ], [ %35, %27 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %40 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %39, align 8
  %41 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %40, i32 0, i32 2
  store %struct.jffs2_inode_cache** %41, %struct.jffs2_inode_cache*** %5, align 8
  br label %23

42:                                               ; preds = %36
  %43 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %44 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %43, align 8
  %45 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %46 = icmp eq %struct.jffs2_inode_cache* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %49 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %48, i32 0, i32 2
  %50 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %49, align 8
  %51 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  store %struct.jffs2_inode_cache* %50, %struct.jffs2_inode_cache** %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %54 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INO_STATE_READING, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %60 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @INO_STATE_CLEARING, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %66 = call i32 @jffs2_free_inode_cache(%struct.jffs2_inode_cache* %65)
  br label %67

67:                                               ; preds = %64, %58, %52
  %68 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %69 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  ret void
}

declare dso_local i32 @dbg_inocache(i8*, %struct.jffs2_inode_cache*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jffs2_free_inode_cache(%struct.jffs2_inode_cache*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
