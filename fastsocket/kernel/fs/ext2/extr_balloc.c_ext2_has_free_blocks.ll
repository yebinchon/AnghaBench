; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_has_free_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_has_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_sb_info = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_sb_info*)* @ext2_has_free_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_has_free_blocks(%struct.ext2_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext2_sb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ext2_sb_info* %0, %struct.ext2_sb_info** %3, align 8
  %6 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %6, i32 0, i32 3
  %8 = call i64 @percpu_counter_read_positive(i32* %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, 1
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %19
  %24 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %3, align 8
  %25 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 (...) @current_fsuid()
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %3, align 8
  %36 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @in_group_p(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %29
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %34, %23, %19, %1
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @percpu_counter_read_positive(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i32 @in_group_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
