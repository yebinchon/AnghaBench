; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_copy_fcaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_copy_fcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_names = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.cpu_vfs_cap_data = type { i32, i32, i32 }

@VFS_CAP_FLAGS_EFFECTIVE = common dso_local global i32 0, align 4
@VFS_CAP_REVISION_MASK = common dso_local global i32 0, align 4
@VFS_CAP_REVISION_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_names*, %struct.dentry*)* @audit_copy_fcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_copy_fcaps(%struct.audit_names* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_names*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.cpu_vfs_cap_data, align 4
  %7 = alloca i32, align 4
  store %struct.audit_names* %0, %struct.audit_names** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %9 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @memset(i32* %10, i32 0, i32 4)
  %12 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %13 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @memset(i32* %14, i32 0, i32 4)
  %16 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %17 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %20 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = icmp ne %struct.dentry* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

24:                                               ; preds = %2
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call i32 @get_vfs_caps_from_disk(%struct.dentry* %25, %struct.cpu_vfs_cap_data* %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %35 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %40 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VFS_CAP_FLAGS_EFFECTIVE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %51 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VFS_CAP_REVISION_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @VFS_CAP_REVISION_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = load %struct.audit_names*, %struct.audit_names** %4, align 8
  %60 = getelementptr inbounds %struct.audit_names, %struct.audit_names* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %31, %29, %23
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_vfs_caps_from_disk(%struct.dentry*, %struct.cpu_vfs_cap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
