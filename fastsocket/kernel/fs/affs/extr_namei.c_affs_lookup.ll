; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.nameidata = type { i32 }
%struct.buffer_head = type { i32, %struct.super_block* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"AFFS: lookup(\22%.*s\22)\0A\00", align 1
@SF_INTL = common dso_local global i32 0, align 4
@affs_intl_dentry_operations = common dso_local global i32 0, align 4
@affs_dentry_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @affs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %8, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @affs_lock_dir(%struct.inode* %25)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call %struct.inode* @affs_find_entry(%struct.inode* %27, %struct.dentry* %28)
  %30 = bitcast %struct.inode* %29 to %struct.buffer_head*
  store %struct.buffer_head* %30, %struct.buffer_head** %9, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @affs_unlock_dir(%struct.inode* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %34 = bitcast %struct.buffer_head* %33 to %struct.inode*
  %35 = call i64 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = bitcast %struct.buffer_head* %38 to %struct.inode*
  %40 = call %struct.dentry* @ERR_CAST(%struct.inode* %39)
  store %struct.dentry* %40, %struct.dentry** %4, align 8
  br label %98

41:                                               ; preds = %3
  %42 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %44, label %83

44:                                               ; preds = %41
  %45 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.super_block*, %struct.super_block** %8, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %55 = bitcast %struct.buffer_head* %54 to %struct.inode*
  %56 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %53, %struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  switch i32 %59, label %68 [
    i32 128, label %60
  ]

60:                                               ; preds = %44
  %61 = load %struct.super_block*, %struct.super_block** %8, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %63 = bitcast %struct.buffer_head* %62 to %struct.inode*
  %64 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %61, %struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %60, %44
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = bitcast %struct.buffer_head* %69 to %struct.inode*
  %71 = call i32 @affs_brelse(%struct.inode* %70)
  %72 = load %struct.super_block*, %struct.super_block** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call %struct.inode* @affs_iget(%struct.super_block* %72, i32 %73)
  store %struct.inode* %74, %struct.inode** %10, align 8
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = call i64 @IS_ERR(%struct.inode* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = call i32 @PTR_ERR(%struct.inode* %79)
  %81 = call %struct.dentry* @ERR_PTR(i32 %80)
  store %struct.dentry* %81, %struct.dentry** %4, align 8
  br label %98

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %41
  %84 = load %struct.super_block*, %struct.super_block** %8, align 8
  %85 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SF_INTL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32* @affs_intl_dentry_operations, i32* @affs_dentry_operations
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  %95 = load %struct.dentry*, %struct.dentry** %6, align 8
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call i32 @d_add(%struct.dentry* %95, %struct.inode* %96)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %98

98:                                               ; preds = %83, %78, %37
  %99 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %99
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @affs_lock_dir(%struct.inode*) #1

declare dso_local %struct.inode* @affs_find_entry(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @affs_unlock_dir(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.inode*) #1

declare dso_local %struct.inode* @affs_iget(%struct.super_block*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
