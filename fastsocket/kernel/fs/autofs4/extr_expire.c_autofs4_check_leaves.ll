; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_check_leaves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_check_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"parent %p %.*s\00", align 1
@dcache_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"dentry %p %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.vfsmount*, %struct.dentry*, i64, i32)* @autofs4_check_leaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @autofs4_check_leaves(%struct.vfsmount* %0, %struct.dentry* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %11, i32 %16, i32 %20)
  %22 = call i32 @spin_lock(i32* @dcache_lock)
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %23, %struct.dentry** %10, align 8
  br label %24

24:                                               ; preds = %70, %4
  %25 = load %struct.dentry*, %struct.dentry** %10, align 8
  %26 = icmp ne %struct.dentry* %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = load %struct.dentry*, %struct.dentry** %10, align 8
  %29 = call i32 @simple_positive(%struct.dentry* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %70

32:                                               ; preds = %27
  %33 = load %struct.dentry*, %struct.dentry** %10, align 8
  %34 = load %struct.dentry*, %struct.dentry** %10, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.dentry*, %struct.dentry** %10, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %33, i32 %38, i32 %42)
  %44 = load %struct.dentry*, %struct.dentry** %10, align 8
  %45 = call %struct.dentry* @dget(%struct.dentry* %44)
  store %struct.dentry* %45, %struct.dentry** %10, align 8
  %46 = call i32 @spin_unlock(i32* @dcache_lock)
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = call i64 @d_mountpoint(%struct.dentry* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %32
  %51 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %52 = load %struct.dentry*, %struct.dentry** %10, align 8
  %53 = call i64 @autofs4_mount_busy(%struct.vfsmount* %51, %struct.dentry* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %66

56:                                               ; preds = %50
  %57 = load %struct.dentry*, %struct.dentry** %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @autofs4_can_expire(%struct.dentry* %57, i64 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %63, %struct.dentry** %5, align 8
  br label %76

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %32
  br label %66

66:                                               ; preds = %65, %55
  %67 = load %struct.dentry*, %struct.dentry** %10, align 8
  %68 = call i32 @dput(%struct.dentry* %67)
  %69 = call i32 @spin_lock(i32* @dcache_lock)
  br label %70

70:                                               ; preds = %66, %31
  %71 = load %struct.dentry*, %struct.dentry** %10, align 8
  %72 = load %struct.dentry*, %struct.dentry** %7, align 8
  %73 = call %struct.dentry* @next_dentry(%struct.dentry* %71, %struct.dentry* %72)
  store %struct.dentry* %73, %struct.dentry** %10, align 8
  br label %24

74:                                               ; preds = %24
  %75 = call i32 @spin_unlock(i32* @dcache_lock)
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %76

76:                                               ; preds = %74, %62
  %77 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %77
}

declare dso_local i32 @DPRINTK(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @simple_positive(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i64 @autofs4_mount_busy(%struct.vfsmount*, %struct.dentry*) #1

declare dso_local i64 @autofs4_can_expire(%struct.dentry*, i64, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @next_dentry(%struct.dentry*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
