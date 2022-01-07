; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_bg_num_gdb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_balloc.c_ext4_bg_num_gdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EXT4_FEATURE_INCOMPAT_META_BG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_bg_num_gdb(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %16)
  %18 = udiv i64 %15, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i32, i32* @EXT4_FEATURE_INCOMPAT_META_BG, align 4
  %21 = call i32 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %2
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @ext4_bg_num_gdb_nometa(%struct.super_block* %28, i64 %29)
  store i64 %30, i64* %3, align 8
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @ext4_bg_num_gdb_meta(%struct.super_block* %32, i64 %33)
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @ext4_bg_num_gdb_nometa(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_bg_num_gdb_meta(%struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
