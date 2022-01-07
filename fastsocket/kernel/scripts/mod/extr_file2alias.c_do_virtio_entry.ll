; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_virtio_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_virtio_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device_id = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"virtio:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@VIRTIO_DEV_ANY_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.virtio_device_id*, i8*)* @do_virtio_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_virtio_entry(i8* %0, %struct.virtio_device_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.virtio_device_id*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.virtio_device_id* %1, %struct.virtio_device_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i8* @TO_NATIVE(i64 %9)
  %11 = ptrtoint i8* %10 to i64
  %12 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @TO_NATIVE(i64 %16)
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VIRTIO_DEV_ANY_ID, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ADD(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VIRTIO_DEV_ANY_ID, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %42 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ADD(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %40, i64 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @add_wildcard(i8* %45)
  ret i32 1
}

declare dso_local i8* @TO_NATIVE(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i64) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
