; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nameidata = type { i32 }
%struct.fat_slot_info = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @vfat_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @vfat_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.fat_slot_info, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %8, align 8
  %16 = load %struct.super_block*, %struct.super_block** %8, align 8
  %17 = call i32 @lock_super(%struct.super_block* %16)
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 4
  %21 = call i32 @vfat_find(%struct.inode* %18, i32* %20, %struct.fat_slot_info* %9)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %79

30:                                               ; preds = %24
  br label %122

31:                                               ; preds = %3
  %32 = load %struct.super_block*, %struct.super_block** %8, align 8
  %33 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.inode* @fat_build_inode(%struct.super_block* %32, i32 %34, i32 %36)
  store %struct.inode* %37, %struct.inode** %10, align 8
  %38 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @brelse(i32 %39)
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i64 @IS_ERR(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call i32 @PTR_ERR(%struct.inode* %45)
  store i32 %46, i32* %12, align 4
  br label %122

47:                                               ; preds = %31
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call %struct.dentry* @d_find_alias(%struct.inode* %48)
  store %struct.dentry* %49, %struct.dentry** %11, align 8
  %50 = load %struct.dentry*, %struct.dentry** %11, align 8
  %51 = icmp ne %struct.dentry* %50, null
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load %struct.dentry*, %struct.dentry** %11, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %52
  %60 = load %struct.dentry*, %struct.dentry** %11, align 8
  %61 = call i32 @d_unhashed(%struct.dentry* %60)
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @S_ISDIR(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load %struct.dentry*, %struct.dentry** %11, align 8
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = call i32 @d_move(%struct.dentry* %69, %struct.dentry* %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @iput(%struct.inode* %73)
  %75 = load %struct.super_block*, %struct.super_block** %8, align 8
  %76 = call i32 @unlock_super(%struct.super_block* %75)
  %77 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %77, %struct.dentry** %4, align 8
  br label %127

78:                                               ; preds = %52, %47
  br label %79

79:                                               ; preds = %78, %29
  %80 = load %struct.super_block*, %struct.super_block** %8, align 8
  %81 = call i32 @unlock_super(%struct.super_block* %80)
  %82 = load %struct.super_block*, %struct.super_block** %8, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dentry*, %struct.dentry** %6, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = call %struct.dentry* @d_splice_alias(%struct.inode* %98, %struct.dentry* %99)
  store %struct.dentry* %100, %struct.dentry** %6, align 8
  %101 = load %struct.dentry*, %struct.dentry** %6, align 8
  %102 = icmp ne %struct.dentry* %101, null
  br i1 %102, label %103, label %120

103:                                              ; preds = %79
  %104 = load %struct.super_block*, %struct.super_block** %8, align 8
  %105 = getelementptr inbounds %struct.super_block, %struct.super_block* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dentry*, %struct.dentry** %6, align 8
  %110 = getelementptr inbounds %struct.dentry, %struct.dentry* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.dentry*, %struct.dentry** %6, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dentry*, %struct.dentry** %6, align 8
  %119 = getelementptr inbounds %struct.dentry, %struct.dentry* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %103, %79
  %121 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %121, %struct.dentry** %4, align 8
  br label %127

122:                                              ; preds = %44, %30
  %123 = load %struct.super_block*, %struct.super_block** %8, align 8
  %124 = call i32 @unlock_super(%struct.super_block* %123)
  %125 = load i32, i32* %12, align 4
  %126 = call %struct.dentry* @ERR_PTR(i32 %125)
  store %struct.dentry* %126, %struct.dentry** %4, align 8
  br label %127

127:                                              ; preds = %122, %120, %72
  %128 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %128
}

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @vfat_find(%struct.inode*, i32*, %struct.fat_slot_info*) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @d_move(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
