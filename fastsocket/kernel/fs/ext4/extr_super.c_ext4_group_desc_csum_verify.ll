; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_group_desc_csum_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_group_desc_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_group_desc = type { i64 }

@EXT4_FEATURE_RO_COMPAT_GDT_CSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_group_desc_csum_verify(%struct.ext4_sb_info* %0, i32 %1, %struct.ext4_group_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_group_desc*, align 8
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext4_group_desc* %2, %struct.ext4_group_desc** %7, align 8
  %8 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %9 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_GDT_CSUM, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %19 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %24 = call i64 @ext4_group_desc_csum(%struct.ext4_sb_info* %21, i32 %22, %struct.ext4_group_desc* %23)
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %28

27:                                               ; preds = %17, %3
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @ext4_group_desc_csum(%struct.ext4_sb_info*, i32, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
