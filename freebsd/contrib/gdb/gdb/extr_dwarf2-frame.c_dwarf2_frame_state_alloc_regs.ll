; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_state_alloc_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_frame_state_alloc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_frame_state_reg_info = type { i32, %struct.dwarf2_frame_state_reg* }
%struct.dwarf2_frame_state_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwarf2_frame_state_reg_info*, i32)* @dwarf2_frame_state_alloc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_frame_state_alloc_regs(%struct.dwarf2_frame_state_reg_info* %0, i32 %1) #0 {
  %3 = alloca %struct.dwarf2_frame_state_reg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dwarf2_frame_state_reg_info* %0, %struct.dwarf2_frame_state_reg_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 4, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %3, align 8
  %8 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %3, align 8
  %14 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %13, i32 0, i32 1
  %15 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %5, align 8
  %19 = mul i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 @xrealloc(%struct.dwarf2_frame_state_reg* %15, i32 %20)
  %22 = inttoptr i64 %21 to %struct.dwarf2_frame_state_reg*
  %23 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %3, align 8
  %24 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %23, i32 0, i32 1
  store %struct.dwarf2_frame_state_reg* %22, %struct.dwarf2_frame_state_reg** %24, align 8
  %25 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %3, align 8
  %26 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %25, i32 0, i32 1
  %27 = load %struct.dwarf2_frame_state_reg*, %struct.dwarf2_frame_state_reg** %26, align 8
  %28 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %3, align 8
  %29 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dwarf2_frame_state_reg, %struct.dwarf2_frame_state_reg* %27, i64 %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %3, align 8
  %35 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %5, align 8
  %40 = mul i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(%struct.dwarf2_frame_state_reg* %32, i32 0, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.dwarf2_frame_state_reg_info*, %struct.dwarf2_frame_state_reg_info** %3, align 8
  %45 = getelementptr inbounds %struct.dwarf2_frame_state_reg_info, %struct.dwarf2_frame_state_reg_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @xrealloc(%struct.dwarf2_frame_state_reg*, i32) #1

declare dso_local i32 @memset(%struct.dwarf2_frame_state_reg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
