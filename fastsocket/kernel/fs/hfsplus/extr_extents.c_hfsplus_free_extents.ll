; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_free_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_free_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_extent = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.hfsplus_extent*, i64, i64)* @hfsplus_free_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_free_extents(%struct.super_block* %0, %struct.hfsplus_extent* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.hfsplus_extent*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.hfsplus_extent* %1, %struct.hfsplus_extent** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %14 = call i32 @hfsplus_dump_extent(%struct.hfsplus_extent* %13)
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %37, %4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %20 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @be32_to_cpu(i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %45

27:                                               ; preds = %18
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %42

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %33
  %38 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %39 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %38, i32 1
  store %struct.hfsplus_extent* %39, %struct.hfsplus_extent** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %15

42:                                               ; preds = %31, %15
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %96

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %87, %45
  %47 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %48 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @be32_to_cpu(i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @hfsplus_block_free(%struct.super_block* %55, i64 %56, i64 %57)
  %59 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %60 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %62 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %80

66:                                               ; preds = %46
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = sub nsw i64 %68, %67
  store i64 %69, i64* %10, align 8
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @hfsplus_block_free(%struct.super_block* %70, i64 %73, i64 %74)
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @cpu_to_be32(i64 %76)
  %78 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %79 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  store i64 0, i64* %9, align 8
  br label %80

80:                                               ; preds = %66, %54
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %80
  store i32 0, i32* %5, align 4
  br label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %12, align 4
  %90 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %91 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %90, i32 -1
  store %struct.hfsplus_extent* %91, %struct.hfsplus_extent** %7, align 8
  %92 = load %struct.hfsplus_extent*, %struct.hfsplus_extent** %7, align 8
  %93 = getelementptr inbounds %struct.hfsplus_extent, %struct.hfsplus_extent* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @be32_to_cpu(i64 %94)
  store i64 %95, i64* %10, align 8
  br label %46

96:                                               ; preds = %86, %42
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @hfsplus_dump_extent(%struct.hfsplus_extent*) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @hfsplus_block_free(%struct.super_block*, i64, i64) #1

declare dso_local i64 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
