; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_mount_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_mount_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dentry %p %.*s\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"returning = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*)* @autofs4_mount_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_mount_busy(%struct.vfsmount* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.autofs_info*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %12 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  store %struct.vfsmount* %12, %struct.vfsmount** %11, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %14, %struct.dentry** %13, align 8
  store i32 1, i32* %7, align 4
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15, i32 %20, i32 %24)
  %26 = call i32 @path_get(%struct.path* %6)
  %27 = call i32 @follow_down(%struct.path* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %60

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %32 = load %struct.dentry*, %struct.dentry** %31, align 8
  %33 = call i64 @is_autofs4_dentry(%struct.dentry* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %39)
  store %struct.autofs_sb_info* %40, %struct.autofs_sb_info** %8, align 8
  %41 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %42 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @autofs_type_indirect(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %60

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %30
  %49 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %50 = load %struct.vfsmount*, %struct.vfsmount** %49, align 8
  %51 = call i32 @may_umount_tree(%struct.vfsmount* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %54)
  store %struct.autofs_info* %55, %struct.autofs_info** %9, align 8
  %56 = load i32, i32* @jiffies, align 4
  %57 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %58 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %60

59:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %53, %46, %29
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = call i32 @path_put(%struct.path* %6)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @follow_down(%struct.path*) #1

declare dso_local i64 @is_autofs4_dentry(%struct.dentry*) #1

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local i64 @autofs_type_indirect(i32) #1

declare dso_local i32 @may_umount_tree(%struct.vfsmount*) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
