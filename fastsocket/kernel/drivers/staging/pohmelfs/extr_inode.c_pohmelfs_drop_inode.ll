; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_drop_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_drop_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.pohmelfs_sb = type { i32 }
%struct.pohmelfs_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @pohmelfs_drop_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pohmelfs_drop_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.pohmelfs_sb*, align 8
  %4 = alloca %struct.pohmelfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pohmelfs_sb* @POHMELFS_SB(i32 %7)
  store %struct.pohmelfs_sb* %8, %struct.pohmelfs_sb** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode* %9)
  store %struct.pohmelfs_inode* %10, %struct.pohmelfs_inode** %4, align 8
  %11 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %12 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %4, align 8
  %15 = getelementptr inbounds %struct.pohmelfs_inode, %struct.pohmelfs_inode* %14, i32 0, i32 0
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call i32 @generic_drop_inode(%struct.inode* %20)
  ret void
}

declare dso_local %struct.pohmelfs_sb* @POHMELFS_SB(i32) #1

declare dso_local %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @generic_drop_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
