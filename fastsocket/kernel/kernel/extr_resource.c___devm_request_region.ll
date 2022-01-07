; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c___devm_request_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c___devm_request_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.region_devres = type { i8*, i8*, %struct.resource* }

@devm_region_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @__devm_request_region(%struct.device* %0, %struct.resource* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.region_devres*, align 8
  %13 = alloca %struct.resource*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.resource* %1, %struct.resource** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.region_devres* null, %struct.region_devres** %12, align 8
  %14 = load i32, i32* @devm_region_release, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.region_devres* @devres_alloc(i32 %14, i32 24, i32 %15)
  store %struct.region_devres* %16, %struct.region_devres** %12, align 8
  %17 = load %struct.region_devres*, %struct.region_devres** %12, align 8
  %18 = icmp ne %struct.region_devres* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.resource* null, %struct.resource** %6, align 8
  br label %46

20:                                               ; preds = %5
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = load %struct.region_devres*, %struct.region_devres** %12, align 8
  %23 = getelementptr inbounds %struct.region_devres, %struct.region_devres* %22, i32 0, i32 2
  store %struct.resource* %21, %struct.resource** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.region_devres*, %struct.region_devres** %12, align 8
  %26 = getelementptr inbounds %struct.region_devres, %struct.region_devres* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.region_devres*, %struct.region_devres** %12, align 8
  %29 = getelementptr inbounds %struct.region_devres, %struct.region_devres* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call %struct.resource* @__request_region(%struct.resource* %30, i8* %31, i8* %32, i8* %33, i32 0)
  store %struct.resource* %34, %struct.resource** %13, align 8
  %35 = load %struct.resource*, %struct.resource** %13, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load %struct.region_devres*, %struct.region_devres** %12, align 8
  %40 = call i32 @devres_add(%struct.device* %38, %struct.region_devres* %39)
  br label %44

41:                                               ; preds = %20
  %42 = load %struct.region_devres*, %struct.region_devres** %12, align 8
  %43 = call i32 @devres_free(%struct.region_devres* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.resource*, %struct.resource** %13, align 8
  store %struct.resource* %45, %struct.resource** %6, align 8
  br label %46

46:                                               ; preds = %44, %19
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  ret %struct.resource* %47
}

declare dso_local %struct.region_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.resource* @__request_region(%struct.resource*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.region_devres*) #1

declare dso_local i32 @devres_free(%struct.region_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
