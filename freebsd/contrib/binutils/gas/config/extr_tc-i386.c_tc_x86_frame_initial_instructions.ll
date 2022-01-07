; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_tc_x86_frame_initial_instructions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_tc_x86_frame_initial_instructions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tc_x86_frame_initial_instructions.sp_regno = internal global i32 0, align 4
@flag_code = common dso_local global i64 0, align 8
@CODE_64BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"esp\00", align 1
@x86_cie_data_alignment = common dso_local global i32 0, align 4
@x86_dwarf2_return_column = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tc_x86_frame_initial_instructions() #0 {
  %1 = load i32, i32* @tc_x86_frame_initial_instructions.sp_regno, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @flag_code, align 8
  %5 = load i64, i64* @CODE_64BIT, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %9 = call i32 @tc_x86_regname_to_dw2regnum(i8* %8)
  store i32 %9, i32* @tc_x86_frame_initial_instructions.sp_regno, align 4
  br label %10

10:                                               ; preds = %3, %0
  %11 = load i32, i32* @tc_x86_frame_initial_instructions.sp_regno, align 4
  %12 = load i32, i32* @x86_cie_data_alignment, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @cfi_add_CFA_def_cfa(i32 %11, i32 %13)
  %15 = load i32, i32* @x86_dwarf2_return_column, align 4
  %16 = load i32, i32* @x86_cie_data_alignment, align 4
  %17 = call i32 @cfi_add_CFA_offset(i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @tc_x86_regname_to_dw2regnum(i8*) #1

declare dso_local i32 @cfi_add_CFA_def_cfa(i32, i32) #1

declare dso_local i32 @cfi_add_CFA_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
