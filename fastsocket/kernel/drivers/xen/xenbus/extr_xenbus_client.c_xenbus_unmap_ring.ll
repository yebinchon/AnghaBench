; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_unmap_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_unmap_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.gnttab_unmap_grant_ref = type { i64, i64, i32 }

@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"unmapping page at handle %d error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_unmap_ring(%struct.xenbus_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gnttab_unmap_grant_ref, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 0
  %9 = load i8*, i8** %6, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 8
  %14 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %15 = call i64 @HYPERVISOR_grant_table_op(i32 %14, %struct.gnttab_unmap_grant_ref* %7, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %17, %3
  %20 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GNTST_okay, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %26 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @xenbus_dev_error(%struct.xenbus_device* %25, i64 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %30)
  br label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  ret i32 %35
}

declare dso_local i64 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @xenbus_dev_error(%struct.xenbus_device*, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
