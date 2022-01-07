; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_map_ring_valloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_map_ring_valloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.gnttab_map_grant_ref = type { i32, i64, i64, i64, i32, i32 }
%struct.vm_struct = type { i64, i8* }

@GNTMAP_host_map = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GNTTABOP_map_grant_ref = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"mapping in shared page %d from domain %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_map_ring_valloc(%struct.xenbus_device* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.gnttab_map_grant_ref, align 8
  %9 = alloca %struct.vm_struct*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 4
  %16 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %17 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 5
  %20 = load i32, i32* @GNTMAP_host_map, align 4
  store i32 %20, i32* %19, align 4
  %21 = load i8**, i8*** %7, align 8
  store i8* null, i8** %21, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call %struct.vm_struct* @xen_alloc_vm_area(i32 %22)
  store %struct.vm_struct* %23, %struct.vm_struct** %9, align 8
  %24 = load %struct.vm_struct*, %struct.vm_struct** %9, align 8
  %25 = icmp ne %struct.vm_struct* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %68

29:                                               ; preds = %3
  %30 = load %struct.vm_struct*, %struct.vm_struct** %9, align 8
  %31 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @GNTTABOP_map_grant_ref, align 4
  %36 = call i64 @HYPERVISOR_grant_table_op(i32 %35, %struct.gnttab_map_grant_ref* %8, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 (...) @BUG()
  br label %40

40:                                               ; preds = %38, %29
  %41 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GNTST_okay, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.vm_struct*, %struct.vm_struct** %9, align 8
  %47 = call i32 @xen_free_vm_area(%struct.vm_struct* %46)
  %48 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %49 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %53 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %48, i64 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  %56 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %68

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.vm_struct*, %struct.vm_struct** %9, align 8
  %63 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.vm_struct*, %struct.vm_struct** %9, align 8
  %65 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %59, %45, %26
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.vm_struct* @xen_alloc_vm_area(i32) #1

declare dso_local i64 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_map_grant_ref*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @xen_free_vm_area(%struct.vm_struct*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
