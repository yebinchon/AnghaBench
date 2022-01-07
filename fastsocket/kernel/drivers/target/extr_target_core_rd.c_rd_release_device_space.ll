; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_rd.c_rd_release_device_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_rd.c_rd_release_device_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_dev = type { i64, %struct.scatterlist*, i32, %struct.TYPE_2__* }
%struct.scatterlist = type { i64, %struct.scatterlist* }
%struct.TYPE_2__ = type { i32 }
%struct.rd_dev_sg_table = type { i64, %struct.rd_dev_sg_table* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [102 x i8] c"CORE_RD[%u] - Released device space for Ramdisk Device ID: %u, pages %u in %u tables total bytes %lu\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rd_dev*)* @rd_release_device_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rd_release_device_space(%struct.rd_dev* %0) #0 {
  %2 = alloca %struct.rd_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rd_dev_sg_table*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  store %struct.rd_dev* %0, %struct.rd_dev** %2, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %10, i32 0, i32 1
  %12 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %13 = icmp ne %struct.scatterlist* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %93

20:                                               ; preds = %14
  %21 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %22 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %21, i32 0, i32 1
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  %24 = bitcast %struct.scatterlist* %23 to %struct.rd_dev_sg_table*
  store %struct.rd_dev_sg_table* %24, %struct.rd_dev_sg_table** %7, align 8
  store i64 0, i64* %3, align 8
  br label %25

25:                                               ; preds = %66, %20
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %28 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %7, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %32, i64 %33
  %35 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %34, i32 0, i32 1
  %36 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %35, align 8
  %37 = bitcast %struct.rd_dev_sg_table* %36 to %struct.scatterlist*
  store %struct.scatterlist* %37, %struct.scatterlist** %9, align 8
  %38 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %7, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %38, i64 %39
  %41 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %60, %31
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i64 %49
  %51 = call %struct.page* @sg_page(%struct.scatterlist* %50)
  store %struct.page* %51, %struct.page** %8, align 8
  %52 = load %struct.page*, %struct.page** %8, align 8
  %53 = icmp ne %struct.page* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = call i32 @__free_page(%struct.page* %55)
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %54, %47
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %65 = call i32 @kfree(%struct.scatterlist* %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %25

69:                                               ; preds = %25
  %70 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %71 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %76 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %80 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = mul i64 %82, %83
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77, i64 %78, i64 %81, i64 %84)
  %86 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %7, align 8
  %87 = bitcast %struct.rd_dev_sg_table* %86 to %struct.scatterlist*
  %88 = call i32 @kfree(%struct.scatterlist* %87)
  %89 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %90 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %89, i32 0, i32 1
  store %struct.scatterlist* null, %struct.scatterlist** %90, align 8
  %91 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %92 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %69, %19
  ret void
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
