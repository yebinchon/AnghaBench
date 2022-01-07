; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_create_mem_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_create_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i64, i64, i32, %struct.mem_region*, %struct.mem_attrib, i64 }
%struct.mem_attrib = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"invalid memory region: low >= high\0A\00", align 1
@mem_region_chain = common dso_local global %struct.mem_region* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"overlapping memory region\0A\00", align 1
@mem_number = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_region* (i64, i64, %struct.mem_attrib*)* @create_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_region* @create_mem_region(i64 %0, i64 %1, %struct.mem_attrib* %2) #0 {
  %4 = alloca %struct.mem_region*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mem_attrib*, align 8
  %8 = alloca %struct.mem_region*, align 8
  %9 = alloca %struct.mem_region*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mem_attrib* %2, %struct.mem_attrib** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.mem_region* null, %struct.mem_region** %4, align 8
  br label %102

18:                                               ; preds = %13, %3
  %19 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  store %struct.mem_region* %19, %struct.mem_region** %8, align 8
  br label %20

20:                                               ; preds = %74, %18
  %21 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %22 = icmp ne %struct.mem_region* %21, null
  br i1 %22, label %23, label %78

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %26 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %32 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %72, label %35

35:                                               ; preds = %29
  %36 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %37 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %72, label %40

40:                                               ; preds = %35, %23
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %43 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %49 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %72, label %52

52:                                               ; preds = %46
  %53 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %54 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %52, %40
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %60 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sle i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %66 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69, %63, %52, %46, %35, %29
  %73 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mem_region* null, %struct.mem_region** %4, align 8
  br label %102

74:                                               ; preds = %69, %57
  %75 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %76 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %75, i32 0, i32 3
  %77 = load %struct.mem_region*, %struct.mem_region** %76, align 8
  store %struct.mem_region* %77, %struct.mem_region** %8, align 8
  br label %20

78:                                               ; preds = %20
  %79 = call %struct.mem_region* @xmalloc(i32 48)
  store %struct.mem_region* %79, %struct.mem_region** %9, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %82 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %85 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* @mem_number, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* @mem_number, align 8
  %88 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %89 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %91 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %93 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %92, i32 0, i32 4
  %94 = load %struct.mem_attrib*, %struct.mem_attrib** %7, align 8
  %95 = bitcast %struct.mem_attrib* %93 to i8*
  %96 = bitcast %struct.mem_attrib* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 4 %96, i64 4, i1 false)
  %97 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  %98 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %99 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %98, i32 0, i32 3
  store %struct.mem_region* %97, %struct.mem_region** %99, align 8
  %100 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  store %struct.mem_region* %100, %struct.mem_region** @mem_region_chain, align 8
  %101 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  store %struct.mem_region* %101, %struct.mem_region** %4, align 8
  br label %102

102:                                              ; preds = %78, %72, %16
  %103 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  ret %struct.mem_region* %103
}

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local %struct.mem_region* @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
