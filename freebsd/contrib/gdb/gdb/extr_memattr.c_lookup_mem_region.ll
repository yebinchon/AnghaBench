; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_lookup_mem_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_memattr.c_lookup_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, i64, i64, i32, %struct.mem_region* }

@lookup_mem_region.region = internal global %struct.mem_region zeroinitializer, align 8
@mem_region_chain = common dso_local global %struct.mem_region* null, align 8
@default_mem_attrib = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mem_region* @lookup_mem_region(i64 %0) #0 {
  %2 = alloca %struct.mem_region*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mem_region*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %5, align 8
  store i64 -1, i64* %6, align 8
  %7 = load %struct.mem_region*, %struct.mem_region** @mem_region_chain, align 8
  store %struct.mem_region* %7, %struct.mem_region** %4, align 8
  br label %8

8:                                                ; preds = %69, %1
  %9 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %10 = icmp ne %struct.mem_region* %9, null
  br i1 %10, label %11, label %73

11:                                               ; preds = %8
  %12 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %13 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %68

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %19 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %25 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %30 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %22
  %34 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  store %struct.mem_region* %34, %struct.mem_region** %2, align 8
  br label %77

35:                                               ; preds = %28, %16
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %38 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %44 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %49 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %47, %41, %35
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %54 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %60 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %65 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %63, %57, %51
  br label %68

68:                                               ; preds = %67, %11
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.mem_region*, %struct.mem_region** %4, align 8
  %71 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %70, i32 0, i32 4
  %72 = load %struct.mem_region*, %struct.mem_region** %71, align 8
  store %struct.mem_region* %72, %struct.mem_region** %4, align 8
  br label %8

73:                                               ; preds = %8
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* getelementptr inbounds (%struct.mem_region, %struct.mem_region* @lookup_mem_region.region, i32 0, i32 1), align 8
  %75 = load i64, i64* %6, align 8
  store i64 %75, i64* getelementptr inbounds (%struct.mem_region, %struct.mem_region* @lookup_mem_region.region, i32 0, i32 2), align 8
  %76 = load i32, i32* @default_mem_attrib, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.mem_region, %struct.mem_region* @lookup_mem_region.region, i32 0, i32 3), align 8
  store %struct.mem_region* @lookup_mem_region.region, %struct.mem_region** %2, align 8
  br label %77

77:                                               ; preds = %73, %33
  %78 = load %struct.mem_region*, %struct.mem_region** %2, align 8
  ret %struct.mem_region* %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
