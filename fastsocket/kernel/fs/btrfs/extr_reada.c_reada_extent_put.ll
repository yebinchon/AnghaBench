; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_extent_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_extent_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.reada_extent = type { i64, i32, %struct.TYPE_4__*, %struct.reada_zone**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.reada_zone = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@reada_kref_dummy = common dso_local global i32 0, align 4
@reada_zone_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.reada_extent*)* @reada_extent_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reada_extent_put(%struct.btrfs_fs_info* %0, %struct.reada_extent* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.reada_extent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.reada_zone*, align 8
  %8 = alloca %struct.reada_zone*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.reada_extent* %1, %struct.reada_extent** %4, align 8
  %9 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %10 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %13 = lshr i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %18 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %17, i32 0, i32 4
  %19 = load i32, i32* @reada_kref_dummy, align 4
  %20 = call i32 @kref_put(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  br label %122

26:                                               ; preds = %2
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 1
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @radix_tree_delete(i32* %28, i64 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %51, %26
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %34 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %39 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %38, i32 0, i32 3
  %40 = load %struct.reada_zone**, %struct.reada_zone*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.reada_zone*, %struct.reada_zone** %40, i64 %42
  %44 = load %struct.reada_zone*, %struct.reada_zone** %43, align 8
  store %struct.reada_zone* %44, %struct.reada_zone** %7, align 8
  %45 = load %struct.reada_zone*, %struct.reada_zone** %7, align 8
  %46 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @radix_tree_delete(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %56 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %105, %54
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %61 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %108

64:                                               ; preds = %58
  %65 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %66 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %65, i32 0, i32 3
  %67 = load %struct.reada_zone**, %struct.reada_zone*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.reada_zone*, %struct.reada_zone** %67, i64 %69
  %71 = load %struct.reada_zone*, %struct.reada_zone** %70, align 8
  store %struct.reada_zone* %71, %struct.reada_zone** %8, align 8
  %72 = load %struct.reada_zone*, %struct.reada_zone** %8, align 8
  %73 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %72, i32 0, i32 1
  %74 = call i32 @kref_get(i32* %73)
  %75 = load %struct.reada_zone*, %struct.reada_zone** %8, align 8
  %76 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %75, i32 0, i32 2
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.reada_zone*, %struct.reada_zone** %8, align 8
  %79 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.reada_zone*, %struct.reada_zone** %8, align 8
  %83 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %64
  %87 = load %struct.reada_zone*, %struct.reada_zone** %8, align 8
  %88 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %87, i32 0, i32 1
  %89 = load i32, i32* @reada_zone_release, align 4
  %90 = call i32 @kref_put(i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %64
  %92 = load %struct.reada_zone*, %struct.reada_zone** %8, align 8
  %93 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %96 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.reada_zone*, %struct.reada_zone** %8, align 8
  %99 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %98, i32 0, i32 1
  %100 = load i32, i32* @reada_zone_release, align 4
  %101 = call i32 @kref_put(i32* %99, i32 %100)
  %102 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %103 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  br label %105

105:                                              ; preds = %91
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %58

108:                                              ; preds = %58
  %109 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %110 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = icmp ne %struct.TYPE_4__* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %115 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i32 @atomic_dec(i32* %117)
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  %121 = call i32 @kfree(%struct.reada_extent* %120)
  br label %122

122:                                              ; preds = %119, %22
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.reada_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
