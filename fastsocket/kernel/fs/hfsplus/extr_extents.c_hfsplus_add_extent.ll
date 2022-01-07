; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_add_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_add_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsplus_extent = type { i8*, i8* }

@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfsplus_extent*, i64, i64, i64)* @hfsplus_add_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_add_extent(%struct.hfsplus_extent* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfsplus_extent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hfsplus_extent* %0, %struct.hfsplus_extent** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %6, align 8
  %14 = call i32 @hfsplus_dump_extent(%struct.hfsplus_extent* %13)
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %69, %4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %74

18:                                               ; preds = %15
  %19 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %6, align 8
  %20 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @be32_to_cpu(i8* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %18
  %27 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %6, align 8
  %28 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @be32_to_cpu(i8* %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %32, %33
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = icmp sge i32 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %77

43:                                               ; preds = %36
  %44 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %6, align 8
  %45 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %44, i32 1
  store %struct.hfsplus_extent* %45, %struct.hfsplus_extent** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i8* @cpu_to_be32(i64 %46)
  %48 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %6, align 8
  %49 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %54

50:                                               ; preds = %26
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i64, i64* %9, align 8
  %56 = call i8* @cpu_to_be32(i64 %55)
  %57 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %6, align 8
  %58 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  store i32 0, i32* %5, align 4
  br label %77

59:                                               ; preds = %18
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %74

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %65
  %70 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %6, align 8
  %71 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %70, i32 1
  store %struct.hfsplus_extent* %71, %struct.hfsplus_extent** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %15

74:                                               ; preds = %63, %15
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %54, %40
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @hfsplus_dump_extent(%struct.hfsplus_extent*) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
