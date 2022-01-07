; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_free_fork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_extents.c_hfsplus_free_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_fork_raw = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.hfs_find_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_free_fork(%struct.super_block* %0, i64 %1, %struct.hfsplus_fork_raw* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hfsplus_fork_raw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfs_find_data, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.hfsplus_fork_raw* %2, %struct.hfsplus_fork_raw** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.hfsplus_fork_raw*, %struct.hfsplus_fork_raw** %8, align 8
  %19 = getelementptr inbounds %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @be32_to_cpu(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %100

25:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %16, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.hfsplus_fork_raw*, %struct.hfsplus_fork_raw** %8, align 8
  %31 = getelementptr inbounds %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @be32_to_cpu(i32 %37)
  %39 = load i64, i64* %13, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = load %struct.hfsplus_fork_raw*, %struct.hfsplus_fork_raw** %8, align 8
  %47 = getelementptr inbounds %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @hfsplus_free_extents(%struct.super_block* %45, %struct.TYPE_9__* %48, i64 %49, i64 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %5, align 4
  br label %100

56:                                               ; preds = %44
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %100

61:                                               ; preds = %56
  %62 = load %struct.super_block*, %struct.super_block** %6, align 8
  %63 = call i32 @HFSPLUS_SB(%struct.super_block* %62)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @hfs_find_init(i32 %66, %struct.hfs_find_data* %10)
  br label %68

68:                                               ; preds = %93, %61
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @__hfsplus_ext_read_extent(%struct.hfs_find_data* %10, %struct.TYPE_9__* %69, i64 %70, i64 %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %97

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @be32_to_cpu(i32 %82)
  store i64 %83, i64* %14, align 8
  %84 = load %struct.super_block*, %struct.super_block** %6, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %14, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @hfsplus_free_extents(%struct.super_block* %84, %struct.TYPE_9__* %85, i64 %88, i64 %89)
  %91 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %10)
  %92 = load i64, i64* %14, align 8
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %77
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %68, label %97

97:                                               ; preds = %93, %76
  %98 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %60, %54, %24
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @hfsplus_free_extents(%struct.super_block*, %struct.TYPE_9__*, i64, i64) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @__hfsplus_ext_read_extent(%struct.hfs_find_data*, %struct.TYPE_9__*, i64, i64, i32) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
