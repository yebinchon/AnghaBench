; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_write_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_ext_write_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hfs_find_data = type { i32 }
%struct.TYPE_3__ = type { i32 }

@HFSPLUS_FLG_EXT_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfsplus_ext_write_extent(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca %struct.hfs_find_data, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call i32 @HFSPLUS_I(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HFSPLUS_FLG_EXT_DIRTY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @HFSPLUS_SB(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hfs_find_init(i32 %21, %struct.hfs_find_data* %4)
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call i32 @__hfsplus_ext_write_extent(%struct.inode* %23, %struct.hfs_find_data* %4)
  %25 = call i32 @hfs_find_exit(%struct.hfs_find_data* %4)
  br label %26

26:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @HFSPLUS_SB(i32) #1

declare dso_local i32 @__hfsplus_ext_write_extent(%struct.inode*, %struct.hfs_find_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
