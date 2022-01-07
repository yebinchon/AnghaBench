; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_dir.c_cifs_d_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_dir.c_cifs_d_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i64, i32, i64 }
%struct.nameidata = type { i32 }

@DCACHE_NEED_AUTOMOUNT = common dso_local global i32 0, align 4
@LOOKUP_CONTINUE = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@LOOKUP_RENAME_TARGET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@lookupCacheEnabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @cifs_d_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_d_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call i64 @cifs_revalidate_dentry(%struct.dentry* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %79

15:                                               ; preds = %10
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @IS_AUTOMOUNT(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DCACHE_NEED_AUTOMOUNT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 2
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* @DCACHE_NEED_AUTOMOUNT, align 4
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %28, %21, %15
  store i32 1, i32* %3, align 4
  br label %79

41:                                               ; preds = %2
  %42 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %43 = icmp ne %struct.nameidata* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %79

45:                                               ; preds = %41
  %46 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @LOOKUP_CONTINUE, align 4
  %50 = load i32, i32* @LOOKUP_PARENT, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %45
  %55 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LOOKUP_CREATE, align 4
  %59 = load i32, i32* @LOOKUP_RENAME_TARGET, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %79

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32, i32* @jiffies, align 4
  %67 = load %struct.dentry*, %struct.dentry** %4, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HZ, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i64 @time_after(i32 %66, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @lookupCacheEnabled, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74, %65
  store i32 0, i32* %3, align 4
  br label %79

78:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %77, %63, %44, %40, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @cifs_revalidate_dentry(%struct.dentry*) #1

declare dso_local i64 @IS_AUTOMOUNT(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
