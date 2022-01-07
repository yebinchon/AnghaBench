; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_mountpoint_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_mountpoint_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.dentry*, i32 }
%struct.path = type { %struct.dentry* }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.path*)* @autofs4_mountpoint_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @autofs4_mountpoint_changed(%struct.path* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.autofs_info*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %9 = load %struct.path*, %struct.path** %3, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %14)
  store %struct.autofs_sb_info* %15, %struct.autofs_sb_info** %5, align 8
  %16 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @autofs_type_indirect(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %1
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = call i64 @d_unhashed(%struct.dentry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = load %struct.dentry*, %struct.dentry** %27, align 8
  store %struct.dentry* %28, %struct.dentry** %6, align 8
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = call %struct.dentry* @d_lookup(%struct.dentry* %29, i32* %31)
  store %struct.dentry* %32, %struct.dentry** %8, align 8
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  store %struct.dentry* null, %struct.dentry** %2, align 8
  br label %53

36:                                               ; preds = %25
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %37)
  store %struct.autofs_info* %38, %struct.autofs_info** %7, align 8
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %41 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.path*, %struct.path** %3, align 8
  %43 = getelementptr inbounds %struct.path, %struct.path* %42, i32 0, i32 0
  %44 = load %struct.dentry*, %struct.dentry** %43, align 8
  %45 = call i32 @dput(%struct.dentry* %44)
  %46 = load %struct.dentry*, %struct.dentry** %8, align 8
  %47 = load %struct.path*, %struct.path** %3, align 8
  %48 = getelementptr inbounds %struct.path, %struct.path* %47, i32 0, i32 0
  store %struct.dentry* %46, %struct.dentry** %48, align 8
  br label %49

49:                                               ; preds = %36, %21, %1
  %50 = load %struct.path*, %struct.path** %3, align 8
  %51 = getelementptr inbounds %struct.path, %struct.path* %50, i32 0, i32 0
  %52 = load %struct.dentry*, %struct.dentry** %51, align 8
  store %struct.dentry* %52, %struct.dentry** %2, align 8
  br label %53

53:                                               ; preds = %49, %35
  %54 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %54
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local i64 @autofs_type_indirect(i32) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, i32*) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
