; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_do_expire_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_do_expire_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.vfsmount = type { i32 }
%struct.autofs_sb_info = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.autofs_info = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NFY_EXPIRE = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs4_do_expire_multi(%struct.super_block* %0, %struct.vfsmount* %1, %struct.autofs_sb_info* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.autofs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.autofs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %6, align 8
  store %struct.autofs_sb_info* %2, %struct.autofs_sb_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %15 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @autofs_type_trigger(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %22 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.dentry* @autofs4_expire_direct(%struct.super_block* %20, %struct.vfsmount* %21, %struct.autofs_sb_info* %22, i32 %23)
  store %struct.dentry* %24, %struct.dentry** %9, align 8
  br label %31

25:                                               ; preds = %4
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %28 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.dentry* @autofs4_expire_indirect(%struct.super_block* %26, %struct.vfsmount* %27, %struct.autofs_sb_info* %28, i32 %29)
  store %struct.dentry* %30, %struct.dentry** %9, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load %struct.dentry*, %struct.dentry** %9, align 8
  %36 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %35)
  store %struct.autofs_info* %36, %struct.autofs_info** %11, align 8
  %37 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = load i32, i32* @NFY_EXPIRE, align 4
  %40 = call i32 @autofs4_wait(%struct.autofs_sb_info* %37, %struct.dentry* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %42 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %47 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %51 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %50, i32 0, i32 0
  %52 = call i32 @complete_all(i32* %51)
  %53 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %54 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.dentry*, %struct.dentry** %9, align 8
  %57 = call i32 @dput(%struct.dentry* %56)
  br label %58

58:                                               ; preds = %34, %31
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i64 @autofs_type_trigger(i32) #1

declare dso_local %struct.dentry* @autofs4_expire_direct(%struct.super_block*, %struct.vfsmount*, %struct.autofs_sb_info*, i32) #1

declare dso_local %struct.dentry* @autofs4_expire_indirect(%struct.super_block*, %struct.vfsmount*, %struct.autofs_sb_info*, i32) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs4_wait(%struct.autofs_sb_info*, %struct.dentry*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
