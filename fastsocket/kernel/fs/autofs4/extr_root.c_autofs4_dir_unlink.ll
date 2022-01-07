; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_dir_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_dir_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32, %struct.TYPE_2__*, %struct.dentry* }
%struct.TYPE_2__ = type { i64 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@dcache_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @autofs4_dir_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_dir_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
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
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %11)
  store %struct.autofs_sb_info* %12, %struct.autofs_sb_info** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %13)
  store %struct.autofs_info* %14, %struct.autofs_info** %7, align 8
  %15 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %16 = call i32 @autofs4_oz_mode(%struct.autofs_sb_info* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %18, %2
  %26 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %27 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %26, i32 0, i32 1
  %28 = call i64 @atomic_dec_and_test(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 2
  %33 = load %struct.dentry*, %struct.dentry** %32, align 8
  %34 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %33)
  store %struct.autofs_info* %34, %struct.autofs_info** %8, align 8
  %35 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %36 = icmp ne %struct.autofs_info* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 2
  %40 = load %struct.dentry*, %struct.dentry** %39, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = icmp ne %struct.dentry* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %45 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %44, i32 0, i32 1
  %46 = call i32 @atomic_dec(i32* %45)
  br label %47

47:                                               ; preds = %43, %37, %30
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %50 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dput(i32 %51)
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @clear_nlink(%struct.TYPE_2__* %59)
  %61 = load i32, i32* @CURRENT_TIME, align 4
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = call i32 @spin_lock(i32* @dcache_lock)
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = call i32 @autofs4_add_expiring(%struct.dentry* %65)
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call i32 @__d_drop(%struct.dentry* %70)
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = call i32 @spin_unlock(i32* @dcache_lock)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %48, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs4_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @clear_nlink(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @autofs4_add_expiring(%struct.dentry*) #1

declare dso_local i32 @__d_drop(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
