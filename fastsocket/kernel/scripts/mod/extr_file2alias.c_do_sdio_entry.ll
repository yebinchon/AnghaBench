; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_sdio_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_sdio_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_device_id = type { i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"sdio:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@SDIO_ANY_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sdio_device_id*, i8*)* @do_sdio_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sdio_entry(i8* %0, %struct.sdio_device_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i8* @TO_NATIVE(i64 %9)
  %11 = ptrtoint i8* %10 to i64
  %12 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @TO_NATIVE(i64 %16)
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @TO_NATIVE(i64 %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strcpy(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SDIO_ANY_ID, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ADD(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SDIO_ANY_ID, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %49 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ADD(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %54 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SDIO_ANY_ID, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %60 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ADD(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %58, i64 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @add_wildcard(i8* %63)
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
