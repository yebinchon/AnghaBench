; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nameidata = type { i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_dir_ent = type { i32 }

@DCACHE_AUTOFS_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@AUTOFS_NEGATIVE_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @autofs_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.autofs_sb_info*, align 8
  %8 = alloca %struct.autofs_dir_ent*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.autofs_sb_info* @autofs_sbi(i32 %18)
  store %struct.autofs_sb_info* %19, %struct.autofs_sb_info** %7, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DCACHE_AUTOFS_PENDING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %28 = call i64 @autofs_oz_mode(%struct.autofs_sb_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %38

31:                                               ; preds = %26
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %37 = call i32 @try_to_fill_dentry(%struct.dentry* %32, i32 %35, %struct.autofs_sb_info* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %31, %30
  %39 = call i32 (...) @unlock_kernel()
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %102

41:                                               ; preds = %2
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = call i32 (...) @unlock_kernel()
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @jiffies, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i64, i64* @AUTOFS_NEGATIVE_TIMEOUT, align 8
  %54 = icmp sle i64 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %102

56:                                               ; preds = %41
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @S_ISDIR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %56
  %65 = load %struct.dentry*, %struct.dentry** %4, align 8
  %66 = call i32 @d_mountpoint(%struct.dentry* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %64
  %69 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %70 = call i64 @autofs_oz_mode(%struct.autofs_sb_info* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, i32* %9, align 4
  br label %80

73:                                               ; preds = %68
  %74 = load %struct.dentry*, %struct.dentry** %4, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %79 = call i32 @try_to_fill_dentry(%struct.dentry* %74, i32 %77, %struct.autofs_sb_info* %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %73, %72
  %81 = call i32 (...) @unlock_kernel()
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %102

83:                                               ; preds = %64, %56
  %84 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %85 = call i64 @autofs_oz_mode(%struct.autofs_sb_info* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %83
  %88 = load %struct.dentry*, %struct.dentry** %4, align 8
  %89 = getelementptr inbounds %struct.dentry, %struct.dentry* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.autofs_dir_ent*
  store %struct.autofs_dir_ent* %91, %struct.autofs_dir_ent** %8, align 8
  %92 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %93 = icmp ne %struct.autofs_dir_ent* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %96 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %95, i32 0, i32 0
  %97 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %98 = call i32 @autofs_update_usage(i32* %96, %struct.autofs_dir_ent* %97)
  br label %99

99:                                               ; preds = %94, %87
  br label %100

100:                                              ; preds = %99, %83
  %101 = call i32 (...) @unlock_kernel()
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %80, %46, %38
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i64 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @try_to_fill_dentry(%struct.dentry*, i32, %struct.autofs_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @autofs_update_usage(i32*, %struct.autofs_dir_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
