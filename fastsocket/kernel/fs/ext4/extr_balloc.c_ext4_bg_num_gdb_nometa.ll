; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_bg_num_gdb_nometa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_bg_num_gdb_nometa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EXT4_FEATURE_INCOMPAT_META_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, i32)* @ext4_bg_num_gdb_nometa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_bg_num_gdb_nometa(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @ext4_bg_has_super(%struct.super_block* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load i32, i32* @EXT4_FEATURE_INCOMPAT_META_BG, align 4
  %14 = call i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  store i64 %23, i64* %3, align 8
  br label %29

24:                                               ; preds = %11
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %24, %16, %10
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i32 @ext4_bg_has_super(%struct.super_block*, i32) #1

declare dso_local i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
