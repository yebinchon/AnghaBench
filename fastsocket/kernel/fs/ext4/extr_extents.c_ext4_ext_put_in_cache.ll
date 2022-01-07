; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_put_in_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_put_in_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_cache = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32, %struct.ext4_ext_cache }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i64, i32)* @ext4_ext_put_in_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_put_in_cache(%struct.inode* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_ext_cache*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.ext4_ext_cache* %20, %struct.ext4_ext_cache** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %9, align 8
  %23 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %9, align 8
  %26 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ext4_ext_cache*, %struct.ext4_ext_cache** %9, align 8
  %29 = getelementptr inbounds %struct.ext4_ext_cache, %struct.ext4_ext_cache* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
