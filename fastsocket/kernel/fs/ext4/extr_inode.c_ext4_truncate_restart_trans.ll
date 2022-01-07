; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_truncate_restart_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_truncate_restart_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"restarting handle %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_truncate_restart_trans(i32* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call i32* @EXT4_JOURNAL(%struct.inode* %8)
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @jbd_debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @up_write(i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @blocks_for_truncate(%struct.inode* %20)
  %22 = call i32 @ext4_journal_restart(i32* %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @down_write(i32* %25)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @ext4_discard_preallocations(%struct.inode* %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @EXT4_JOURNAL(%struct.inode*) #1

declare dso_local i32 @jbd_debug(i32, i8*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_journal_restart(i32*, i32) #1

declare dso_local i32 @blocks_for_truncate(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
