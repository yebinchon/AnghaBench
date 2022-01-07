; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_iomem_is_exclusive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_iomem_is_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, i32, %struct.resource* }

@iomem_resource = common dso_local global %struct.resource zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@strict_iomem_checks = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@resource_lock = common dso_local global i32 0, align 4
@IORESOURCE_BUSY = common dso_local global i32 0, align 4
@IORESOURCE_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomem_is_exclusive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.resource* @iomem_resource, %struct.resource** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @strict_iomem_checks, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PAGE_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = call i32 @read_lock(i32* @resource_lock)
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 3
  %19 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %19, %struct.resource** %4, align 8
  br label %20

20:                                               ; preds = %55, %12
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %58

32:                                               ; preds = %23
  %33 = load %struct.resource*, %struct.resource** %4, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %55

39:                                               ; preds = %32
  %40 = load %struct.resource*, %struct.resource** %4, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IORESOURCE_BUSY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.resource*, %struct.resource** %4, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IORESOURCE_EXCLUSIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %58

54:                                               ; preds = %46, %39
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.resource*, %struct.resource** %4, align 8
  %57 = call %struct.resource* @r_next(i32* null, %struct.resource* %56, i32* %6)
  store %struct.resource* %57, %struct.resource** %4, align 8
  br label %20

58:                                               ; preds = %53, %31, %20
  %59 = call i32 @read_unlock(i32* @resource_lock)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.resource* @r_next(i32*, %struct.resource*, i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
