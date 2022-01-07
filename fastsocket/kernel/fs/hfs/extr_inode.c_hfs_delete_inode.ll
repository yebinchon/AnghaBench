; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DBG_INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"delete_inode: %lu\0A\00", align 1
@HFS_ROOT_CNID = common dso_local global i32 0, align 4
@HFS_FLG_MDB_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 4
  %6 = load %struct.super_block*, %struct.super_block** %5, align 8
  store %struct.super_block* %6, %struct.super_block** %3, align 8
  %7 = load i32, i32* @DBG_INODE, align 4
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @dprint(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @S_ISDIR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = call %struct.TYPE_5__* @HFS_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @HFS_ROOT_CNID, align 4
  %29 = call i64 @cpu_to_be32(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = call %struct.TYPE_5__* @HFS_SB(%struct.super_block* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %17
  %38 = load i32, i32* @HFS_FLG_MDB_DIRTY, align 4
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = call %struct.TYPE_5__* @HFS_SB(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %38, i32* %41)
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %90

45:                                               ; preds = %1
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = call %struct.TYPE_5__* @HFS_SB(%struct.super_block* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @HFS_ROOT_CNID, align 4
  %57 = call i64 @cpu_to_be32(i32 %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load %struct.super_block*, %struct.super_block** %3, align 8
  %61 = call %struct.TYPE_5__* @HFS_SB(%struct.super_block* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %45
  %66 = load %struct.inode*, %struct.inode** %2, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISREG(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = call i32 @hfs_file_truncate(%struct.inode* %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %65
  %83 = load i32, i32* @HFS_FLG_MDB_DIRTY, align 4
  %84 = load %struct.super_block*, %struct.super_block** %3, align 8
  %85 = call %struct.TYPE_5__* @HFS_SB(%struct.super_block* %84)
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %83, i32* %86)
  %88 = load %struct.super_block*, %struct.super_block** %3, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %37
  ret void
}

declare dso_local i32 @dprint(i32, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_5__* @HFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_6__* @HFS_I(%struct.inode*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @hfs_file_truncate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
