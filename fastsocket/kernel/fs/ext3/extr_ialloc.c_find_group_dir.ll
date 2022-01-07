; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_find_group_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_find_group_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext3_group_desc = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @find_group_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_dir(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext3_group_desc*, align 8
  %9 = alloca %struct.ext3_group_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  store %struct.ext3_group_desc* null, %struct.ext3_group_desc** %9, align 8
  store i32 -1, i32* %11, align 4
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @percpu_counter_read_positive(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = udiv i32 %20, %21
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %64, %2
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %28, i32 %29, i32* null)
  store %struct.ext3_group_desc* %30, %struct.ext3_group_desc** %8, align 8
  %31 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %32 = icmp ne %struct.ext3_group_desc* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %35 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %27
  br label %64

39:                                               ; preds = %33
  %40 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %41 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %64

47:                                               ; preds = %39
  %48 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %9, align 8
  %49 = icmp ne %struct.ext3_group_desc* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  %52 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %9, align 8
  %56 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = icmp ugt i32 %54, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %8, align 8
  store %struct.ext3_group_desc* %62, %struct.ext3_group_desc** %9, align 8
  br label %63

63:                                               ; preds = %60, %50
  br label %64

64:                                               ; preds = %63, %46, %38
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %23

67:                                               ; preds = %23
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @percpu_counter_read_positive(i32*) #1

declare dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
