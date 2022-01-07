; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.autofs_sb_info = type { i64, %struct.autofs_dirhash }
%struct.autofs_dirhash = type { i32 }
%struct.autofs_dir_ent = type { %struct.dentry*, i64, i32, i8*, i32 }

@EACCES = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@AUTOFS_FIRST_DIR_INO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"autofs: Out of inode numbers -- what the heck did you do??\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @autofs_root_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_root_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.autofs_dirhash*, align 8
  %10 = alloca %struct.autofs_dir_ent*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.autofs_sb_info* @autofs_sbi(i32 %15)
  store %struct.autofs_sb_info* %16, %struct.autofs_sb_info** %8, align 8
  %17 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %18 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %17, i32 0, i32 1
  store %struct.autofs_dirhash* %18, %struct.autofs_dirhash** %9, align 8
  %19 = call i32 (...) @lock_kernel()
  %20 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %21 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = call i32 (...) @unlock_kernel()
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %134

27:                                               ; preds = %3
  %28 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %9, align 8
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = call %struct.autofs_dir_ent* @autofs_hash_lookup(%struct.autofs_dirhash* %28, %struct.TYPE_2__* %30)
  store %struct.autofs_dir_ent* %31, %struct.autofs_dir_ent** %10, align 8
  %32 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %33 = icmp ne %struct.autofs_dir_ent* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = call i32 (...) @unlock_kernel()
  %36 = load i32, i32* @EEXIST, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %134

38:                                               ; preds = %27
  %39 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %40 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AUTOFS_FIRST_DIR_INO, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = call i32 @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (...) @unlock_kernel()
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %134

49:                                               ; preds = %38
  %50 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %51 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kmalloc(i32 40, i32 %54)
  %56 = bitcast i8* %55 to %struct.autofs_dir_ent*
  store %struct.autofs_dir_ent* %56, %struct.autofs_dir_ent** %10, align 8
  %57 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %58 = icmp ne %struct.autofs_dir_ent* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = call i32 (...) @unlock_kernel()
  %61 = load i32, i32* @ENOSPC, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %134

63:                                               ; preds = %49
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kmalloc(i32 %68, i32 %69)
  %71 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %72 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %74 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %63
  %78 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %79 = call i32 @kfree(%struct.autofs_dir_ent* %78)
  %80 = call i32 (...) @unlock_kernel()
  %81 = load i32, i32* @ENOSPC, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %134

83:                                               ; preds = %63
  %84 = load %struct.dentry*, %struct.dentry** %6, align 8
  %85 = getelementptr inbounds %struct.dentry, %struct.dentry* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %89 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %91 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %102 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = add nsw i32 1, %100
  %104 = call i32 @memcpy(i8* %92, i32 %96, i32 %103)
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %107 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.dentry*, %struct.dentry** %6, align 8
  %109 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %110 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %109, i32 0, i32 0
  store %struct.dentry* %108, %struct.dentry** %110, align 8
  %111 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %9, align 8
  %112 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %113 = call i32 @autofs_hash_insert(%struct.autofs_dirhash* %111, %struct.autofs_dir_ent* %112)
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = call i32 @inc_nlink(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %12, align 8
  %120 = call %struct.inode* @autofs_iget(i32 %118, i64 %119)
  store %struct.inode* %120, %struct.inode** %11, align 8
  %121 = load %struct.inode*, %struct.inode** %11, align 8
  %122 = call i64 @IS_ERR(%struct.inode* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %83
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = call i32 @drop_nlink(%struct.inode* %125)
  %127 = load %struct.inode*, %struct.inode** %11, align 8
  %128 = call i32 @PTR_ERR(%struct.inode* %127)
  store i32 %128, i32* %4, align 4
  br label %134

129:                                              ; preds = %83
  %130 = load %struct.dentry*, %struct.dentry** %6, align 8
  %131 = load %struct.inode*, %struct.inode** %11, align 8
  %132 = call i32 @d_instantiate(%struct.dentry* %130, %struct.inode* %131)
  %133 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %124, %77, %59, %44, %34, %23
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.autofs_dir_ent* @autofs_hash_lookup(%struct.autofs_dirhash*, %struct.TYPE_2__*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.autofs_dir_ent*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @autofs_hash_insert(%struct.autofs_dirhash*, %struct.autofs_dir_ent*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local %struct.inode* @autofs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
