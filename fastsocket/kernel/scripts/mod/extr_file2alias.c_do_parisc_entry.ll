; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_parisc_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_parisc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device_id = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"parisc:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@PA_HWTYPE_ANY_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@PA_HVERSION_ANY_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@PA_HVERSION_REV_ANY_ID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@PA_SVERSION_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.parisc_device_id*, i8*)* @do_parisc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_parisc_entry(i8* %0, %struct.parisc_device_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.parisc_device_id*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.parisc_device_id* %1, %struct.parisc_device_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i8* @TO_NATIVE(i64 %9)
  %11 = ptrtoint i8* %10 to i64
  %12 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @TO_NATIVE(i64 %16)
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @TO_NATIVE(i64 %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @TO_NATIVE(i64 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PA_HWTYPE_ANY_ID, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ADD(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PA_HVERSION_ANY_ID, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ADD(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %54, i64 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %61 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PA_HVERSION_REV_ANY_ID, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %67 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ADD(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %65, i64 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %72 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PA_SVERSION_ANY_ID, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load %struct.parisc_device_id*, %struct.parisc_device_id** %5, align 8
  %78 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ADD(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %76, i64 %79)
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @add_wildcard(i8* %81)
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
