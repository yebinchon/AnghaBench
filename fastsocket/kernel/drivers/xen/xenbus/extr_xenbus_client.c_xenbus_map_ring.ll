; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_map_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_map_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.gnttab_map_grant_ref = type { i64, i32, i64, i32, i32, i32 }

@GNTMAP_host_map = common dso_local global i32 0, align 4
@GNTTABOP_map_grant_ref = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"mapping in shared page %d from domain %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_map_ring(%struct.xenbus_device* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gnttab_map_grant_ref, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 0
  %11 = load i8*, i8** %8, align 8
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 3
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 4
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %19 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 5
  %22 = load i32, i32* @GNTMAP_host_map, align 4
  store i32 %22, i32* %21, align 8
  %23 = load i32, i32* @GNTTABOP_map_grant_ref, align 4
  %24 = call i64 @HYPERVISOR_grant_table_op(i32 %23, %struct.gnttab_map_grant_ref* %9, i32 1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %4
  %29 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GNTST_okay, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %35 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %39 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %34, i64 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %46

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %33
  %47 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %9, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  ret i32 %49
}

declare dso_local i64 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_map_grant_ref*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
