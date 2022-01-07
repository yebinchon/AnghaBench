; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_unmap_ring_vfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_unmap_ring_vfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i8*, i64, %struct.vm_struct* }
%struct.xenbus_device = type { i32 }
%struct.gnttab_unmap_grant_ref = type { i64, i32, i64 }

@vmlist_lock = common dso_local global i32 0, align 4
@vmlist = common dso_local global %struct.vm_struct* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"can't find mapped virtual address %p\00", align 1
@GNTST_bad_virt_addr = common dso_local global i32 0, align 4
@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unmapping page at handle %d error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vm_struct*, align 8
  %7 = alloca %struct.gnttab_unmap_grant_ref, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 0
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = call i32 @read_lock(i32* @vmlist_lock)
  %14 = load %struct.vm_struct*, %struct.vm_struct** @vmlist, align 8
  store %struct.vm_struct* %14, %struct.vm_struct** %6, align 8
  br label %15

15:                                               ; preds = %26, %2
  %16 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %17 = icmp ne %struct.vm_struct* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %20 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %28 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %27, i32 0, i32 2
  %29 = load %struct.vm_struct*, %struct.vm_struct** %28, align 8
  store %struct.vm_struct* %29, %struct.vm_struct** %6, align 8
  br label %15

30:                                               ; preds = %24, %15
  %31 = call i32 @read_unlock(i32* @vmlist_lock)
  %32 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %33 = icmp ne %struct.vm_struct* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 (%struct.xenbus_device*, i32, i8*, i8*, ...) @xenbus_dev_error(%struct.xenbus_device* %35, i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @GNTST_bad_virt_addr, align 4
  store i32 %40, i32* %3, align 4
  br label %75

41:                                               ; preds = %30
  %42 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %43 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 2
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %47 = call i64 @HYPERVISOR_grant_table_op(i32 %46, %struct.gnttab_unmap_grant_ref* %7, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 (...) @BUG()
  br label %51

51:                                               ; preds = %49, %41
  %52 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GNTST_okay, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %58 = call i32 @xen_free_vm_area(%struct.vm_struct* %57)
  br label %72

59:                                               ; preds = %51
  %60 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %61 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %64 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (%struct.xenbus_device*, i32, i8*, i8*, ...) @xenbus_dev_error(%struct.xenbus_device* %60, i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %68, i32 %70)
  br label %72

72:                                               ; preds = %59, %56
  %73 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %34
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @xenbus_dev_error(%struct.xenbus_device*, i32, i8*, i8*, ...) #1

declare dso_local i64 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @xen_free_vm_area(%struct.vm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
