; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_hid_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_hid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device_id = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"hid:b%04X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@HID_ANY_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hid_device_id*, i8*)* @do_hid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_hid_entry(i8* %0, %struct.hid_device_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @TO_NATIVE(i32 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @TO_NATIVE(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @TO_NATIVE(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @HID_ANY_ID, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %42 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @ADD(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %40, i64 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @HID_ANY_ID, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %55 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @ADD(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %53, i64 %57)
  ret i32 1
}

declare dso_local i8* @TO_NATIVE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
