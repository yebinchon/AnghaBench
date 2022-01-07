; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_comms.c_xb_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_comms.c_xb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenstore_domain_interface = type { i64, i64, i32 }

@xen_store_interface = common dso_local global %struct.xenstore_domain_interface* null, align 8
@xb_waitq = common dso_local global i32 0, align 4
@XENSTORE_RING_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@xen_store_evtchn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xb_write(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenstore_domain_interface*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8
  store %struct.xenstore_domain_interface* %12, %struct.xenstore_domain_interface** %6, align 8
  br label %13

13:                                               ; preds = %67, %60, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %89

16:                                               ; preds = %13
  %17 = load i32, i32* @xb_waitq, align 4
  %18 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %19 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %22 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* @XENSTORE_RING_SIZE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @wait_event_interruptible(i32 %17, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %90

33:                                               ; preds = %16
  %34 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %35 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %38 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @check_indexes(i64 %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %33
  %45 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %46 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %48 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %90

51:                                               ; preds = %33
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %55 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @get_output_chunk(i64 %52, i64 %53, i32 %56, i32* %11)
  store i8* %57, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %13

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = call i32 (...) @mb()
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @memcpy(i8* %69, i8* %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr i8, i8* %74, i64 %75
  store i8* %76, i8** %4, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = call i32 (...) @wmb()
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %84 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* @xen_store_evtchn, align 4
  %88 = call i32 @notify_remote_via_evtchn(i32 %87)
  br label %13

89:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %44, %31
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @check_indexes(i64, i64) #1

declare dso_local i8* @get_output_chunk(i64, i64, i32, i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
