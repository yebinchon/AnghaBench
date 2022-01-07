; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_ext4_count_dirs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_ext4_count_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_count_dirs(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i64 @ext4_get_groups_count(%struct.super_block* %7)
  store i64 %8, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %14, i64 %15, i32* null)
  store %struct.ext4_group_desc* %16, %struct.ext4_group_desc** %6, align 8
  %17 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %18 = icmp ne %struct.ext4_group_desc* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %6, align 8
  %23 = call i64 @ext4_used_dirs_count(%struct.super_block* %21, %struct.ext4_group_desc* %22)
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i64 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i64 @ext4_used_dirs_count(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
