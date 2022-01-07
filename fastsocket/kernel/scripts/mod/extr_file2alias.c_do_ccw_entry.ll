; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_ccw_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_ccw_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device_id = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ccw:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@CCW_DEVICE_ID_MATCH_CU_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@CCW_DEVICE_ID_MATCH_CU_MODEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@CCW_DEVICE_ID_MATCH_DEVICE_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"dm\00", align 1
@CCW_DEVICE_ID_MATCH_DEVICE_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ccw_device_id*, i8*)* @do_ccw_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ccw_entry(i8* %0, %struct.ccw_device_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ccw_device_id*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ccw_device_id* %1, %struct.ccw_device_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @TO_NATIVE(i32 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @TO_NATIVE(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @TO_NATIVE(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @TO_NATIVE(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @TO_NATIVE(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CCW_DEVICE_ID_MATCH_CU_TYPE, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %51 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ADD(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CCW_DEVICE_ID_MATCH_CU_MODEL, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %61 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ADD(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %66 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CCW_DEVICE_ID_MATCH_DEVICE_TYPE, align 4
  %69 = and i32 %67, %68
  %70 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %71 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ADD(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %76 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CCW_DEVICE_ID_MATCH_DEVICE_MODEL, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.ccw_device_id*, %struct.ccw_device_id** %5, align 8
  %81 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ADD(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @add_wildcard(i8* %84)
  ret i32 1
}

declare dso_local i8* @TO_NATIVE(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
