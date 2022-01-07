; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_commit_gcdat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_commit_gcdat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@nilfs_bmap_dat_lock_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_bmap_commit_gcdat(%struct.nilfs_bmap* %0, %struct.nilfs_bmap* %1) #0 {
  %3 = alloca %struct.nilfs_bmap*, align 8
  %4 = alloca %struct.nilfs_bmap*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %3, align 8
  store %struct.nilfs_bmap* %1, %struct.nilfs_bmap** %4, align 8
  %5 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %6 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %7 = call i32 @memcpy(%struct.nilfs_bmap* %5, %struct.nilfs_bmap* %6, i32 4)
  %8 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %8, i32 0, i32 1
  %10 = call i32 @init_rwsem(i32* %9)
  %11 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %12 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %11, i32 0, i32 1
  %13 = call i32 @lockdep_set_class(i32* %12, i32* @nilfs_bmap_dat_lock_key)
  %14 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %15 = call %struct.TYPE_2__* @NILFS_BMAP_I(%struct.nilfs_bmap* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %18 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.nilfs_bmap*, %struct.nilfs_bmap*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_BMAP_I(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
