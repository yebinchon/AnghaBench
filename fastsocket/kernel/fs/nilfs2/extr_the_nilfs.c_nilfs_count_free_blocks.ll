; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_count_free_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_count_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_count_free_blocks(%struct.the_nilfs* %0, i32* %1) #0 {
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %9 = call %struct.inode* @nilfs_dat_inode(%struct.the_nilfs* %8)
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @down_read(i32* %12)
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %15 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nilfs_sufile_get_ncleansegs(i32 %16, i64* %6)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @up_read(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %32 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %2
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.inode* @nilfs_dat_inode(%struct.the_nilfs*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_sufile_get_ncleansegs(i32, i64*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
