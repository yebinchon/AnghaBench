; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_find_next_system_ram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_find_next_system_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.resource* }
%struct.resource = type { i64, i64, i64, i32, %struct.resource* }

@resource_lock = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, i8*)* @find_next_system_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_system_ram(%struct.resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = icmp ne %struct.resource* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.resource*, %struct.resource** %4, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp sge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = call i32 @read_lock(i32* @resource_lock)
  %26 = load %struct.resource*, %struct.resource** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iomem_resource, i32 0, i32 0), align 8
  store %struct.resource* %26, %struct.resource** %8, align 8
  br label %27

27:                                               ; preds = %71, %2
  %28 = load %struct.resource*, %struct.resource** %8, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load %struct.resource*, %struct.resource** %8, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.resource*, %struct.resource** %4, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %71

39:                                               ; preds = %30
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.resource*, %struct.resource** %8, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strcmp(i32 %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %71

50:                                               ; preds = %42, %39
  %51 = load %struct.resource*, %struct.resource** %8, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store %struct.resource* null, %struct.resource** %8, align 8
  br label %75

57:                                               ; preds = %50
  %58 = load %struct.resource*, %struct.resource** %8, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.resource*, %struct.resource** %8, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %75

70:                                               ; preds = %63, %57
  br label %71

71:                                               ; preds = %70, %49, %38
  %72 = load %struct.resource*, %struct.resource** %8, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 4
  %74 = load %struct.resource*, %struct.resource** %73, align 8
  store %struct.resource* %74, %struct.resource** %8, align 8
  br label %27

75:                                               ; preds = %69, %56, %27
  %76 = call i32 @read_unlock(i32* @resource_lock)
  %77 = load %struct.resource*, %struct.resource** %8, align 8
  %78 = icmp ne %struct.resource* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 -1, i32* %3, align 4
  br label %109

80:                                               ; preds = %75
  %81 = load %struct.resource*, %struct.resource** %4, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.resource*, %struct.resource** %8, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.resource*, %struct.resource** %8, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.resource*, %struct.resource** %4, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.resource*, %struct.resource** %4, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.resource*, %struct.resource** %8, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.resource*, %struct.resource** %8, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.resource*, %struct.resource** %4, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %94
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %79
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
