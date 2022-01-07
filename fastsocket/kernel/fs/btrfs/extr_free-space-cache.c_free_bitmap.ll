; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_free_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_free_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_free_space_ctl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.btrfs_free_space_ctl*)* }
%struct.btrfs_free_space = type { i32 }

@btrfs_free_space_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*)* @free_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_bitmap(%struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space* %1) #0 {
  %3 = alloca %struct.btrfs_free_space_ctl*, align 8
  %4 = alloca %struct.btrfs_free_space*, align 8
  store %struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space_ctl** %3, align 8
  store %struct.btrfs_free_space* %1, %struct.btrfs_free_space** %4, align 8
  %5 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %6 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %4, align 8
  %7 = call i32 @unlink_free_space(%struct.btrfs_free_space_ctl* %5, %struct.btrfs_free_space* %6)
  %8 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kfree(i32 %10)
  %12 = load i32, i32* @btrfs_free_space_cachep, align 4
  %13 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %4, align 8
  %14 = call i32 @kmem_cache_free(i32 %12, %struct.btrfs_free_space* %13)
  %15 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.btrfs_free_space_ctl*)*, i32 (%struct.btrfs_free_space_ctl*)** %22, align 8
  %24 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %25 = call i32 %23(%struct.btrfs_free_space_ctl* %24)
  ret void
}

declare dso_local i32 @unlink_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_free_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
