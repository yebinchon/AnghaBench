; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_expire_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_expire_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.vfsmount = type { i32 }
%struct.autofs_sb_info = type { i64, i32 }
%struct.autofs_info = type { i32, i32 }

@AUTOFS_EXP_IMMEDIATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@AUTOFS_INF_PENDING = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @autofs4_expire_direct(%struct.super_block* %0, %struct.vfsmount* %1, %struct.autofs_sb_info* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.autofs_info*, align 8
  %14 = alloca %struct.autofs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store %struct.autofs_sb_info* %2, %struct.autofs_sb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.dentry* @dget(i32 %17)
  store %struct.dentry* %18, %struct.dentry** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @AUTOFS_EXP_IMMEDIATE, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.dentry*, %struct.dentry** %11, align 8
  %23 = icmp ne %struct.dentry* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %71

25:                                               ; preds = %4
  %26 = load i32, i32* @jiffies, align 4
  store i32 %26, i32* @now, align 4
  %27 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %28 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %31 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %30, i32 0, i32 1
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %11, align 8
  %34 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %33)
  store %struct.autofs_info* %34, %struct.autofs_info** %13, align 8
  %35 = load %struct.autofs_info*, %struct.autofs_info** %13, align 8
  %36 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %65

42:                                               ; preds = %25
  %43 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %44 = load %struct.dentry*, %struct.dentry** %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @autofs4_direct_busy(%struct.vfsmount* %43, %struct.dentry* %44, i64 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %42
  %50 = load %struct.dentry*, %struct.dentry** %11, align 8
  %51 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %50)
  store %struct.autofs_info* %51, %struct.autofs_info** %14, align 8
  %52 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %53 = load %struct.autofs_info*, %struct.autofs_info** %14, align 8
  %54 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.autofs_info*, %struct.autofs_info** %14, align 8
  %58 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %57, i32 0, i32 1
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %61 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %63, %struct.dentry** %5, align 8
  br label %71

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %67 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.dentry*, %struct.dentry** %11, align 8
  %70 = call i32 @dput(%struct.dentry* %69)
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %71

71:                                               ; preds = %65, %49, %24
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %72
}

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs4_direct_busy(%struct.vfsmount*, %struct.dentry*, i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
