; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_comms.c_xb_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_comms.c_xb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenstore_domain_interface = type { i64, i32, i64 }

@xen_store_interface = common dso_local global %struct.xenstore_domain_interface* null, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Finished read of %i bytes (%i to go)\0A\00", align 1
@xen_store_evtchn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xb_read(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenstore_domain_interface*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8
  store %struct.xenstore_domain_interface* %12, %struct.xenstore_domain_interface** %6, align 8
  br label %13

13:                                               ; preds = %56, %49, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %13
  %17 = call i32 (...) @xb_wait_for_data_to_read()
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %16
  %23 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %24 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %27 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @check_indexes(i64 %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %22
  %34 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %35 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %37 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %82

40:                                               ; preds = %22
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %44 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @get_input_chunk(i64 %41, i64 %42, i32 %45, i32* %10)
  store i8* %46, i8** %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %13

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = call i32 (...) @rmb()
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @memcpy(i8* %58, i8* %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr i8, i8* %63, i64 %64
  store i8* %65, i8** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sub i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = call i32 (...) @mb()
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %73 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* @xen_store_evtchn, align 4
  %80 = call i32 @notify_remote_via_evtchn(i32 %79)
  br label %13

81:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %33, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @xb_wait_for_data_to_read(...) #1

declare dso_local i32 @check_indexes(i64, i64) #1

declare dso_local i8* @get_input_chunk(i64, i64, i32, i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
