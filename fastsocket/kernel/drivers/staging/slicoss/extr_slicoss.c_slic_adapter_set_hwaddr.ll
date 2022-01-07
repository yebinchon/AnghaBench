; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_adapter_set_hwaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_adapter_set_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i64*, %struct.TYPE_6__*, i64*, %struct.sliccard* }
%struct.TYPE_6__ = type { i64* }
%struct.sliccard = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @slic_adapter_set_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_adapter_set_hwaddr(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.sliccard*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 4
  %6 = load %struct.sliccard*, %struct.sliccard** %5, align 8
  store %struct.sliccard* %6, %struct.sliccard** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 4
  %9 = load %struct.sliccard*, %struct.sliccard** %8, align 8
  %10 = icmp ne %struct.sliccard* %9, null
  br i1 %10, label %11, label %96

11:                                               ; preds = %1
  %12 = load %struct.sliccard*, %struct.sliccard** %3, align 8
  %13 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %96

16:                                               ; preds = %11
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 3
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.sliccard*, %struct.sliccard** %3, align 8
  %21 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = call i32 @memcpy(i64* %19, i64* %29, i32 4)
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %80, label %37

37:                                               ; preds = %16
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %80, label %44

44:                                               ; preds = %37
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %44
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %51
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %58
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %65
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = call i32 @memcpy(i64* %75, i64* %78, i32 6)
  br label %80

80:                                               ; preds = %72, %65, %58, %51, %44, %37, %16
  %81 = load %struct.adapter*, %struct.adapter** %2, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = icmp ne %struct.TYPE_6__* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.adapter*, %struct.adapter** %2, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @memcpy(i64* %90, i64* %93, i32 6)
  br label %95

95:                                               ; preds = %85, %80
  br label %96

96:                                               ; preds = %95, %11, %1
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
