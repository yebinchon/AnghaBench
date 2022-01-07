; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_write_inode_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_write_inode_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.pohmelfs_inode = type { i32 }

@NETFS_INODE_REMOTE_SYNCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, i32, i8*, i32)* @pohmelfs_write_inode_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_write_inode_complete(%struct.page** %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.pohmelfs_inode*, align 8
  store %struct.page** %0, %struct.page*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.inode*
  store %struct.inode* %12, %struct.inode** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %9, align 8
  %14 = call %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode* %13)
  store %struct.pohmelfs_inode* %14, %struct.pohmelfs_inode** %10, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call i32 @mark_inode_dirty(%struct.inode* %21)
  %23 = load i32, i32* @NETFS_INODE_REMOTE_SYNCED, align 4
  %24 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %10, align 8
  %25 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  br label %32

27:                                               ; preds = %17
  %28 = load i32, i32* @NETFS_INODE_REMOTE_SYNCED, align 4
  %29 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %10, align 8
  %30 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %10, align 8
  %34 = call i32 @pohmelfs_put_inode(%struct.pohmelfs_inode* %33)
  br label %35

35:                                               ; preds = %32, %4
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pohmelfs_put_inode(%struct.pohmelfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
