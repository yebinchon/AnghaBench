; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c___hfs_ext_write_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c___hfs_ext_write_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HFS_FK_RSRC = common dso_local global i32 0, align 4
@HFS_FK_DATA = common dso_local global i32 0, align 4
@HFS_FLG_EXT_NEW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HFS_FLG_EXT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.hfs_find_data*)* @__hfs_ext_write_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hfs_ext_write_extent(%struct.inode* %0, %struct.hfs_find_data* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.hfs_find_data*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.hfs_find_data* %1, %struct.hfs_find_data** %4, align 8
  %6 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %7 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i64 @HFS_IS_RSRC(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HFS_FK_RSRC, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @HFS_FK_DATA, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @hfs_ext_build_key(i32 %8, i32 %11, i32 %15, i32 %24)
  %26 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %27 = call i32 @hfs_brec_find(%struct.hfs_find_data* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %83

41:                                               ; preds = %35
  %42 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %42, i32 %46, i32 4)
  %48 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %49 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %83

57:                                               ; preds = %23
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %83

61:                                               ; preds = %57
  %62 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %63 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %70 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hfs_find_data*, %struct.hfs_find_data** %4, align 8
  %73 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hfs_bnode_write(i32 %64, i32 %68, i32 %71, i32 %74)
  %76 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %40, %60, %61, %41
  ret void
}

declare dso_local i32 @hfs_ext_build_key(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @HFS_I(%struct.inode*) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, i32, i32) #1

declare dso_local i32 @hfs_bnode_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
