; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.c_nilfs_bmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.nilfs_inode = type { i32 }

@NILFS_INODE_BMAP_SIZE = common dso_local global i32 0, align 4
@NILFS_DAT_INO = common dso_local global i64 0, align 8
@NILFS_BMAP_NEW_PTR_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_bmap_write(%struct.nilfs_bmap* %0, %struct.nilfs_inode* %1) #0 {
  %3 = alloca %struct.nilfs_bmap*, align 8
  %4 = alloca %struct.nilfs_inode*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %3, align 8
  store %struct.nilfs_inode* %1, %struct.nilfs_inode** %4, align 8
  %5 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %6 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %5, i32 0, i32 0
  %7 = call i32 @down_write(i32* %6)
  %8 = load %struct.nilfs_inode*, %struct.nilfs_inode** %4, align 8
  %9 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %12 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NILFS_INODE_BMAP_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memcpy(i32 %10, i32 %14, i32 %18)
  %20 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %21 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NILFS_DAT_INO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @NILFS_BMAP_NEW_PTR_INIT, align 4
  %29 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %30 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %3, align 8
  %33 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %32, i32 0, i32 0
  %34 = call i32 @up_write(i32* %33)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
