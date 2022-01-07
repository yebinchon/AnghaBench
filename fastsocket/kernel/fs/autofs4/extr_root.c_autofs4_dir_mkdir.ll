; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_dir_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_dir_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.dentry*, %struct.autofs_info*, %struct.TYPE_2__ }
%struct.autofs_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.autofs_sb_info = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dentry %p, creating %.*s\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @autofs4_dir_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_dir_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.autofs_info*, align 8
  %10 = alloca %struct.autofs_info*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %14)
  store %struct.autofs_sb_info* %15, %struct.autofs_sb_info** %8, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %16)
  store %struct.autofs_info* %17, %struct.autofs_info** %9, align 8
  %18 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %19 = call i32 @autofs4_oz_mode(%struct.autofs_sb_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EACCES, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %110

24:                                               ; preds = %3
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.dentry* %25, i32 %29, i32 %33)
  %35 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %36 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %37 = load i32, i32* @S_IFDIR, align 4
  %38 = or i32 %37, 365
  %39 = call %struct.autofs_info* @autofs4_init_ino(%struct.autofs_info* %35, %struct.autofs_sb_info* %36, i32 %38)
  store %struct.autofs_info* %39, %struct.autofs_info** %9, align 8
  %40 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %41 = icmp ne %struct.autofs_info* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %110

45:                                               ; preds = %24
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = call i32 @autofs4_del_active(%struct.dentry* %46)
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %52 = call %struct.inode* @autofs4_get_inode(i32 %50, %struct.autofs_info* %51)
  store %struct.inode* %52, %struct.inode** %11, align 8
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = icmp ne %struct.inode* %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %45
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 1
  %58 = load %struct.autofs_info*, %struct.autofs_info** %57, align 8
  %59 = icmp ne %struct.autofs_info* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %62 = call i32 @kfree(%struct.autofs_info* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %110

66:                                               ; preds = %45
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i32 @d_add(%struct.dentry* %67, %struct.inode* %68)
  %70 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %71 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 5
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.dentry*, %struct.dentry** %6, align 8
  %76 = call i32 @autofs_set_leaf_automount_flags(%struct.dentry* %75)
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %79 = load %struct.dentry*, %struct.dentry** %6, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 1
  store %struct.autofs_info* %78, %struct.autofs_info** %80, align 8
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  %82 = call i32 @dget(%struct.dentry* %81)
  %83 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %84 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %86 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %85, i32 0, i32 0
  %87 = call i32 @atomic_inc(i32* %86)
  %88 = load %struct.dentry*, %struct.dentry** %6, align 8
  %89 = getelementptr inbounds %struct.dentry, %struct.dentry* %88, i32 0, i32 0
  %90 = load %struct.dentry*, %struct.dentry** %89, align 8
  %91 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %90)
  store %struct.autofs_info* %91, %struct.autofs_info** %10, align 8
  %92 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %93 = icmp ne %struct.autofs_info* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %77
  %95 = load %struct.dentry*, %struct.dentry** %6, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 0
  %97 = load %struct.dentry*, %struct.dentry** %96, align 8
  %98 = load %struct.dentry*, %struct.dentry** %6, align 8
  %99 = icmp ne %struct.dentry* %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.autofs_info*, %struct.autofs_info** %10, align 8
  %102 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %101, i32 0, i32 0
  %103 = call i32 @atomic_inc(i32* %102)
  br label %104

104:                                              ; preds = %100, %94, %77
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = call i32 @inc_nlink(%struct.inode* %105)
  %107 = load i32, i32* @CURRENT_TIME, align 4
  %108 = load %struct.inode*, %struct.inode** %5, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %104, %63, %42, %21
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs4_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @DPRINTK(i8*, %struct.dentry*, i32, i32) #1

declare dso_local %struct.autofs_info* @autofs4_init_ino(%struct.autofs_info*, %struct.autofs_sb_info*, i32) #1

declare dso_local i32 @autofs4_del_active(%struct.dentry*) #1

declare dso_local %struct.inode* @autofs4_get_inode(i32, %struct.autofs_info*) #1

declare dso_local i32 @kfree(%struct.autofs_info*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @autofs_set_leaf_automount_flags(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
