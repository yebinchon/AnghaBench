; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"jfs_truncate: size = 0x%lx\00", align 1
@jfs_get_block = common dso_local global i32 0, align 4
@RDWRLOCK_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jfs_truncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = getelementptr inbounds %struct.inode, %struct.inode* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @jfs_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @jfs_get_block, align 4
  %15 = call i32 @nobh_truncate_page(i32 %10, i64 %13, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = load i32, i32* @RDWRLOCK_NORMAL, align 4
  %18 = call i32 @IWRITE_LOCK(%struct.inode* %16, i32 %17)
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @jfs_truncate_nolock(%struct.inode* %19, i64 %22)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i32 @IWRITE_UNLOCK(%struct.inode* %24)
  ret void
}

declare dso_local i32 @jfs_info(i8*, i32) #1

declare dso_local i32 @nobh_truncate_page(i32, i64, i32) #1

declare dso_local i32 @IWRITE_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @jfs_truncate_nolock(%struct.inode*, i64) #1

declare dso_local i32 @IWRITE_UNLOCK(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
