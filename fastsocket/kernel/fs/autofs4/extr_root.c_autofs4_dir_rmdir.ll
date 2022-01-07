; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_dir_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_dir_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_4__*, %struct.dentry*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"dentry %p, removing %.*s\00", align 1
@EACCES = common dso_local global i32 0, align 4
@dcache_lock = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @autofs4_dir_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_dir_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_info*, align 8
  %8 = alloca %struct.autofs_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %11)
  store %struct.autofs_sb_info* %12, %struct.autofs_sb_info** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %13)
  store %struct.autofs_info* %14, %struct.autofs_info** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15, i32 %19, i32 %23)
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %26 = call i32 @autofs4_oz_mode(%struct.autofs_sb_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %103

31:                                               ; preds = %2
  %32 = call i32 @spin_lock(i32* @dcache_lock)
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call i32 @__simple_empty(%struct.dentry* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = call i32 @spin_unlock(i32* @dcache_lock)
  %38 = load i32, i32* @ENOTEMPTY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %103

40:                                               ; preds = %31
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i32 @autofs4_add_expiring(%struct.dentry* %41)
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 2
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = call i32 @__d_drop(%struct.dentry* %46)
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = call i32 @spin_unlock(i32* @dcache_lock)
  %52 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %53 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 5
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = call i32 @autofs_clear_leaf_automount_flags(%struct.dentry* %57)
  br label %59

59:                                               ; preds = %56, %40
  %60 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %61 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %60, i32 0, i32 1
  %62 = call i64 @atomic_dec_and_test(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 1
  %67 = load %struct.dentry*, %struct.dentry** %66, align 8
  %68 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %67)
  store %struct.autofs_info* %68, %struct.autofs_info** %8, align 8
  %69 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %70 = icmp ne %struct.autofs_info* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 1
  %74 = load %struct.dentry*, %struct.dentry** %73, align 8
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = icmp ne %struct.dentry* %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %79 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %78, i32 0, i32 1
  %80 = call i32 @atomic_dec(i32* %79)
  br label %81

81:                                               ; preds = %77, %71, %64
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %84 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dput(i32 %85)
  %87 = load %struct.dentry*, %struct.dentry** %5, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.dentry*, %struct.dentry** %5, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = call i32 @clear_nlink(%struct.TYPE_4__* %93)
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %82
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = call i32 @drop_nlink(%struct.inode* %100)
  br label %102

102:                                              ; preds = %99, %82
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %36, %28
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @DPRINTK(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @autofs4_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__simple_empty(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @autofs4_add_expiring(%struct.dentry*) #1

declare dso_local i32 @__d_drop(%struct.dentry*) #1

declare dso_local i32 @autofs_clear_leaf_automount_flags(%struct.dentry*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @clear_nlink(%struct.TYPE_4__*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
