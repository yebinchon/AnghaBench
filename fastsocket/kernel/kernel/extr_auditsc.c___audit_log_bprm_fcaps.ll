; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_log_bprm_fcaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c___audit_log_bprm_fcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.audit_context* }
%struct.audit_context = type { i8* }
%struct.linux_binprm = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.cred = type { i32, i32, i32 }
%struct.audit_aux_data_bprm_fcaps = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.cpu_vfs_cap_data = type { i32, i32, i32 }
%struct.dentry = type { i32 }

@current = common dso_local global %struct.TYPE_12__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_BPRM_FCAPS = common dso_local global i32 0, align 4
@VFS_CAP_FLAGS_EFFECTIVE = common dso_local global i32 0, align 4
@VFS_CAP_REVISION_MASK = common dso_local global i32 0, align 4
@VFS_CAP_REVISION_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__audit_log_bprm_fcaps(%struct.linux_binprm* %0, %struct.cred* %1, %struct.cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.audit_aux_data_bprm_fcaps*, align 8
  %9 = alloca %struct.audit_context*, align 8
  %10 = alloca %struct.cpu_vfs_cap_data, align 4
  %11 = alloca %struct.dentry*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store %struct.cred* %2, %struct.cred** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.audit_context*, %struct.audit_context** %13, align 8
  store %struct.audit_context* %14, %struct.audit_context** %9, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.audit_aux_data_bprm_fcaps* @kmalloc(i32 56, i32 %15)
  store %struct.audit_aux_data_bprm_fcaps* %16, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %17 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %18 = icmp ne %struct.audit_aux_data_bprm_fcaps* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %112

22:                                               ; preds = %3
  %23 = load i32, i32* @AUDIT_BPRM_FCAPS, align 4
  %24 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %25 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %28 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %31 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %34 = bitcast %struct.audit_aux_data_bprm_fcaps* %33 to i8*
  %35 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %36 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %38 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.dentry* @dget(i32 %41)
  store %struct.dentry* %42, %struct.dentry** %11, align 8
  %43 = load %struct.dentry*, %struct.dentry** %11, align 8
  %44 = call i32 @get_vfs_caps_from_disk(%struct.dentry* %43, %struct.cpu_vfs_cap_data* %10)
  %45 = load %struct.dentry*, %struct.dentry** %11, align 8
  %46 = call i32 @dput(%struct.dentry* %45)
  %47 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %50 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %55 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @VFS_CAP_FLAGS_EFFECTIVE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %66 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @VFS_CAP_REVISION_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @VFS_CAP_REVISION_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %75 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cred*, %struct.cred** %7, align 8
  %77 = getelementptr inbounds %struct.cred, %struct.cred* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %80 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load %struct.cred*, %struct.cred** %7, align 8
  %83 = getelementptr inbounds %struct.cred, %struct.cred* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %86 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.cred*, %struct.cred** %7, align 8
  %89 = getelementptr inbounds %struct.cred, %struct.cred* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %92 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.cred*, %struct.cred** %6, align 8
  %95 = getelementptr inbounds %struct.cred, %struct.cred* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %98 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.cred*, %struct.cred** %6, align 8
  %101 = getelementptr inbounds %struct.cred, %struct.cred* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %104 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.cred*, %struct.cred** %6, align 8
  %107 = getelementptr inbounds %struct.cred, %struct.cred* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.audit_aux_data_bprm_fcaps*, %struct.audit_aux_data_bprm_fcaps** %8, align 8
  %110 = getelementptr inbounds %struct.audit_aux_data_bprm_fcaps, %struct.audit_aux_data_bprm_fcaps* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %22, %19
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.audit_aux_data_bprm_fcaps* @kmalloc(i32, i32) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @get_vfs_caps_from_disk(%struct.dentry*, %struct.cpu_vfs_cap_data*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
