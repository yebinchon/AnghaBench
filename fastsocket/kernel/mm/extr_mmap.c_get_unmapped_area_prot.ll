; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_get_unmapped_area_prot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_get_unmapped_area_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.file*, i64, i64, i64, i64)* }

@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_unmapped_area_prot(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64 (%struct.file*, i64, i64, i64, i64)*, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @arch_mmap_check(i64 %16, i64 %17, i64 %18)
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %15, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i64, i64* %15, align 8
  store i64 %23, i64* %7, align 8
  br label %109

24:                                               ; preds = %6
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @TASK_SIZE, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @ENOMEM, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %7, align 8
  br label %109

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %38, align 8
  %40 = icmp ne i64 (%struct.file*, i64, i64, i64, i64)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %45, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* %46, i64 (%struct.file*, i64, i64, i64, i64)** %14, align 8
  br label %53

47:                                               ; preds = %34, %31
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %51, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* %52, i64 (%struct.file*, i64, i64, i64, i64)** %14, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.file*, %struct.file** %8, align 8
  %55 = icmp ne %struct.file* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.file*, %struct.file** %8, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.file*, %struct.file** %8, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %65, align 8
  %67 = icmp ne i64 (%struct.file*, i64, i64, i64, i64)* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.file*, %struct.file** %8, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %72, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* %73, i64 (%struct.file*, i64, i64, i64, i64)** %14, align 8
  br label %74

74:                                               ; preds = %68, %61, %56, %53
  %75 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %14, align 8
  %76 = load %struct.file*, %struct.file** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i64 %75(%struct.file* %76, i64 %77, i64 %78, i64 %79, i64 %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @IS_ERR_VALUE(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %7, align 8
  br label %109

87:                                               ; preds = %74
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @TASK_SIZE, align 8
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %89, %90
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i64, i64* @ENOMEM, align 8
  %95 = sub i64 0, %94
  store i64 %95, i64* %7, align 8
  br label %109

96:                                               ; preds = %87
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @PAGE_MASK, align 8
  %99 = xor i64 %98, -1
  %100 = and i64 %97, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i64, i64* @EINVAL, align 8
  %104 = sub i64 0, %103
  store i64 %104, i64* %7, align 8
  br label %109

105:                                              ; preds = %96
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @arch_rebalance_pgtables(i64 %106, i64 %107)
  store i64 %108, i64* %7, align 8
  br label %109

109:                                              ; preds = %105, %102, %93, %85, %28, %22
  %110 = load i64, i64* %7, align 8
  ret i64 %110
}

declare dso_local i64 @arch_mmap_check(i64, i64, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i64 @arch_rebalance_pgtables(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
