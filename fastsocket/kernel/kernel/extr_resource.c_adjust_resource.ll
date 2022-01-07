; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_adjust_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@EBUSY = common dso_local global i32 0, align 4
@resource_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adjust_resource(%struct.resource* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 4
  %13 = load %struct.resource*, %struct.resource** %12, align 8
  store %struct.resource* %13, %struct.resource** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %14, %15
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = call i32 @write_lock(i32* @resource_lock)
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.resource*, %struct.resource** %8, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.resource*, %struct.resource** %8, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %3
  br label %105

33:                                               ; preds = %26
  %34 = load %struct.resource*, %struct.resource** %4, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 3
  %36 = load %struct.resource*, %struct.resource** %35, align 8
  store %struct.resource* %36, %struct.resource** %7, align 8
  br label %37

37:                                               ; preds = %54, %33
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load %struct.resource*, %struct.resource** %7, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40
  br label %105

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.resource*, %struct.resource** %7, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 2
  %57 = load %struct.resource*, %struct.resource** %56, align 8
  store %struct.resource* %57, %struct.resource** %7, align 8
  br label %37

58:                                               ; preds = %37
  %59 = load %struct.resource*, %struct.resource** %4, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 2
  %61 = load %struct.resource*, %struct.resource** %60, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.resource*, %struct.resource** %4, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 2
  %66 = load %struct.resource*, %struct.resource** %65, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %105

72:                                               ; preds = %63, %58
  %73 = load %struct.resource*, %struct.resource** %8, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 3
  %75 = load %struct.resource*, %struct.resource** %74, align 8
  store %struct.resource* %75, %struct.resource** %7, align 8
  %76 = load %struct.resource*, %struct.resource** %7, align 8
  %77 = load %struct.resource*, %struct.resource** %4, align 8
  %78 = icmp ne %struct.resource* %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %86, %79
  %81 = load %struct.resource*, %struct.resource** %7, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 2
  %83 = load %struct.resource*, %struct.resource** %82, align 8
  %84 = load %struct.resource*, %struct.resource** %4, align 8
  %85 = icmp ne %struct.resource* %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.resource*, %struct.resource** %7, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 2
  %89 = load %struct.resource*, %struct.resource** %88, align 8
  store %struct.resource* %89, %struct.resource** %7, align 8
  br label %80

90:                                               ; preds = %80
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.resource*, %struct.resource** %7, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %105

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %72
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.resource*, %struct.resource** %4, align 8
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.resource*, %struct.resource** %4, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %98, %96, %71, %52, %32
  %106 = call i32 @write_unlock(i32* @resource_lock)
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
