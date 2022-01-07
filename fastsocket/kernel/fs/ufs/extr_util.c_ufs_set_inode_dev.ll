; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c_ufs_set_inode_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c_ufs_set_inode_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_inode_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }
%struct.TYPE_4__ = type { i32 }

@UFS_ST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ufs_set_inode_dev(%struct.super_block* %0, %struct.ufs_inode_info* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ufs_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ufs_inode_info* %1, %struct.ufs_inode_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.TYPE_4__* @UFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UFS_ST_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %24 [
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %3, %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @sysv_encode_dev(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, -32768
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @old_encode_dev(i32 %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %14
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @old_encode_dev(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = call %struct.TYPE_4__* @UFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UFS_ST_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @cpu_to_fs32(%struct.super_block* %36, i32 %37)
  %39 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %5, align 8
  %40 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %38, i8** %43, align 8
  br label %53

44:                                               ; preds = %27
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @cpu_to_fs32(%struct.super_block* %45, i32 %46)
  %48 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %5, align 8
  %49 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %47, i8** %52, align 8
  br label %53

53:                                               ; preds = %44, %35
  ret void
}

declare dso_local %struct.TYPE_4__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @sysv_encode_dev(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
