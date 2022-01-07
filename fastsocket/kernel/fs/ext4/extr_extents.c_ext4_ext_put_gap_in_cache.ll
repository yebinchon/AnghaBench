; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_put_gap_in_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_put_gap_in_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"cache gap(whole file):\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cache gap(before): %u [%u:%u]\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cache gap(after): [%u:%u] %u\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" -> %u:%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ext4_ext_path*, i64)* @ext4_ext_put_gap_in_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_put_gap_in_cache(%struct.inode* %0, %struct.ext4_ext_path* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_ext_path*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @ext_depth(%struct.inode* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %14, i64 %16
  %18 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %17, i32 0, i32 0
  %19 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  store %struct.ext4_extent* %19, %struct.ext4_extent** %10, align 8
  %20 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %21 = icmp eq %struct.ext4_extent* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %23 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  store i64 %23, i64* %8, align 8
  %24 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %88

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %28 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %35 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le32_to_cpu(i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %42 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %46 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %45)
  %47 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %44, i64 %46)
  br label %87

48:                                               ; preds = %25
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %51 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  %54 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %55 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %54)
  %56 = add nsw i64 %53, %55
  %57 = icmp sge i64 %49, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %48
  %59 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %60 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le32_to_cpu(i32 %61)
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %64 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %63)
  %65 = add nsw i64 %62, %64
  store i64 %65, i64* %9, align 8
  %66 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %67 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %66)
  store i64 %67, i64* %11, align 8
  %68 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %69 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le32_to_cpu(i32 %70)
  %72 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %73 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %72)
  %74 = load i64, i64* %6, align 8
  %75 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %71, i64 %73, i64 %74)
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub nsw i64 %81, %82
  store i64 %83, i64* %8, align 8
  br label %86

84:                                               ; preds = %48
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %85 = call i32 (...) @BUG()
  br label %86

86:                                               ; preds = %84, %58
  br label %87

87:                                               ; preds = %86, %32
  br label %88

88:                                               ; preds = %87, %22
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %89, i64 %90)
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @ext4_ext_put_in_cache(%struct.inode* %92, i64 %93, i64 %94, i32 0)
  ret void
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext_debug(i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ext4_ext_put_in_cache(%struct.inode*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
