; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_vm_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_vm_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.file* }
%struct.file = type { %struct.TYPE_13__*, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_14__*, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.vm_fault = type { %struct.page* }
%struct.page = type { %struct.address_space* }

@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"NFS: vm_page_mkwrite(%s/%s(%ld), offset %lld)\0A\00", align 1
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @nfs_vm_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_vm_page_mkwrite(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %4, align 8
  %11 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 0
  %13 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %13, %struct.page** %5, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %6, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %7, align 8
  %21 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @PAGECACHE, align 4
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i64 @page_offset(%struct.page* %40)
  %42 = call i32 @dfprintk(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %39, i64 %41)
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = call i32 @NFS_I(%struct.TYPE_14__* %45)
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @nfs_fscache_wait_on_page_write(i32 %46, %struct.page* %47)
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @lock_page(%struct.page* %49)
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = load %struct.address_space*, %struct.address_space** %52, align 8
  store %struct.address_space* %53, %struct.address_space** %10, align 8
  %54 = load %struct.address_space*, %struct.address_space** %10, align 8
  %55 = load %struct.dentry*, %struct.dentry** %7, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.address_space*, %struct.address_space** %58, align 8
  %60 = icmp ne %struct.address_space* %54, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %2
  br label %83

62:                                               ; preds = %2
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = call i32 @nfs_page_length(%struct.page* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %83

68:                                               ; preds = %62
  %69 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.file*, %struct.file** %6, align 8
  %71 = load %struct.page*, %struct.page** %5, align 8
  %72 = call i64 @nfs_flush_incompatible(%struct.file* %70, %struct.page* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.file*, %struct.file** %6, align 8
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @nfs_updatepage(%struct.file* %75, %struct.page* %76, i32 0, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %86

81:                                               ; preds = %74, %68
  %82 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %67, %61
  %84 = load %struct.page*, %struct.page** %5, align 8
  %85 = call i32 @unlock_page(%struct.page* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @nfs_fscache_wait_on_page_write(i32, %struct.page*) #1

declare dso_local i32 @NFS_I(%struct.TYPE_14__*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i64 @nfs_flush_incompatible(%struct.file*, %struct.page*) #1

declare dso_local i64 @nfs_updatepage(%struct.file*, %struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
