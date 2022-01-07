; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_issue_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_issue_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i64, i32)* @ext4_issue_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_issue_discard(%struct.super_block* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @ext4_group_first_block_no(%struct.super_block* %11, i32 %12)
  %14 = add nsw i64 %10, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @trace_ext4_discard_blocks(%struct.super_block* %15, i64 %16, i32 %17)
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_NOFS, align 4
  %23 = call i32 @sb_issue_discard(%struct.super_block* %19, i64 %20, i32 %21, i32 %22, i32 0)
  ret i32 %23
}

declare dso_local i64 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @trace_ext4_discard_blocks(%struct.super_block*, i64, i32) #1

declare dso_local i32 @sb_issue_discard(%struct.super_block*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
