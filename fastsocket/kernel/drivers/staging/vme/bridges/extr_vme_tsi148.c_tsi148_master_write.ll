; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_master_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_master_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vme_master_resource = type { i32, i32 }
%struct.vme_bus_error = type { i32 }

@err_chk = common dso_local global i32 0, align 4
@flush_image = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"First VME write error detected an at address 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsi148_master_write(%struct.vme_master_resource* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vme_master_resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vme_bus_error*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.vme_bus_error* null, %struct.vme_bus_error** %16, align 8
  %17 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %18 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %21 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy_toio(i32 %24, i8* %25, i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @err_chk, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  br label %76

34:                                               ; preds = %4
  %35 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %36 = call i32 @__tsi148_master_get(%struct.vme_master_resource* %35, i32* %10, i64* %11, i64* %12, i32* %13, i32* %14, i32* %15)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flush_image, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 520192
  %41 = call i32 @ioread16(i64 %40)
  %42 = load i32, i32* %13, align 4
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* %7, align 8
  %49 = call %struct.vme_bus_error* @tsi148_find_error(i32 %42, i32 %47, i64 %48)
  store %struct.vme_bus_error* %49, %struct.vme_bus_error** %16, align 8
  %50 = load %struct.vme_bus_error*, %struct.vme_bus_error** %16, align 8
  %51 = icmp ne %struct.vme_bus_error* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %34
  %53 = load %struct.vme_bus_error*, %struct.vme_bus_error** %16, align 8
  %54 = getelementptr inbounds %struct.vme_bus_error, %struct.vme_bus_error* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.vme_bus_error*, %struct.vme_bus_error** %16, align 8
  %58 = getelementptr inbounds %struct.vme_bus_error, %struct.vme_bus_error* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = sub i64 %60, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %68, %70
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @tsi148_clear_errors(i32 %67, i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %52, %34
  br label %76

76:                                               ; preds = %75, %33
  %77 = load %struct.vme_master_resource*, %struct.vme_master_resource** %5, align 8
  %78 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy_toio(i32, i8*, i32) #1

declare dso_local i32 @__tsi148_master_get(%struct.vme_master_resource*, i32*, i64*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local %struct.vme_bus_error* @tsi148_find_error(i32, i32, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @tsi148_clear_errors(i32, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
