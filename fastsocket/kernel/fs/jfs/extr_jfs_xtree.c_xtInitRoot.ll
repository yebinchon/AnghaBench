; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtInitRoot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_xtree.c_xtInitRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.metapage = type { i32 }

@tlckXTREE = common dso_local global i32 0, align 4
@tlckNEW = common dso_local global i32 0, align 4
@DXD_INDEX = common dso_local global i32 0, align 4
@BT_ROOT = common dso_local global i32 0, align 4
@BT_LEAF = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i32 0, align 4
@XTROOTINITSLOT_DIR = common dso_local global i32 0, align 4
@XTROOTINITSLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xtInitRoot(i32 %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to %struct.metapage*
  %12 = load i32, i32* @tlckXTREE, align 4
  %13 = load i32, i32* @tlckNEW, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @txLock(i32 %6, %struct.inode* %7, %struct.metapage* %11, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %5, align 8
  %19 = load i32, i32* @DXD_INDEX, align 4
  %20 = load i32, i32* @BT_ROOT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BT_LEAF, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @XTENTRYSTART, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i32, i32* @XTROOTINITSLOT_DIR, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  br label %51

43:                                               ; preds = %2
  %44 = load i32, i32* @XTROOTINITSLOT, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
