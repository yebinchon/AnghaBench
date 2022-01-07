; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fde_entry = type { %struct.fde_entry*, i32*, i32* }
%struct.cfi_insn_data = type { i32 }
%struct.cie_entry = type { i32 }

@all_fde_data = common dso_local global %struct.fde_entry* null, align 8
@.str = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@EH_FRAME_ALIGNMENT = common dso_local global i32 0, align 4
@flag_traditional_format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"open CFI at the end of file; missing .cfi_endproc directive\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfi_finish() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fde_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfi_insn_data*, align 8
  %5 = alloca %struct.cie_entry*, align 8
  %6 = load %struct.fde_entry*, %struct.fde_entry** @all_fde_data, align 8
  %7 = icmp eq %struct.fde_entry* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %66

9:                                                ; preds = %0
  %10 = call i32 @subseg_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @stdoutput, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @SEC_ALLOC, align 4
  %14 = load i32, i32* @SEC_LOAD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SEC_DATA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SEC_READONLY, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @bfd_set_section_flags(i32 %11, i32 %12, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @subseg_set(i32 %21, i32 0)
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @EH_FRAME_ALIGNMENT, align 4
  %25 = call i32 @record_alignment(i32 %23, i32 %24)
  %26 = load i32, i32* @flag_traditional_format, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* @flag_traditional_format, align 4
  %27 = load %struct.fde_entry*, %struct.fde_entry** @all_fde_data, align 8
  store %struct.fde_entry* %27, %struct.fde_entry** %2, align 8
  br label %28

28:                                               ; preds = %60, %9
  %29 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %30 = icmp ne %struct.fde_entry* %29, null
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %33 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @as_bad(i32 %37)
  %39 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %40 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %43 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %46 = call %struct.cie_entry* @select_cie_for_fde(%struct.fde_entry* %45, %struct.cfi_insn_data** %4)
  store %struct.cie_entry* %46, %struct.cie_entry** %5, align 8
  %47 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %48 = load %struct.cie_entry*, %struct.cie_entry** %5, align 8
  %49 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %4, align 8
  %50 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %51 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %50, i32 0, i32 0
  %52 = load %struct.fde_entry*, %struct.fde_entry** %51, align 8
  %53 = icmp eq %struct.fde_entry* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @EH_FRAME_ALIGNMENT, align 4
  br label %57

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 2, %56 ]
  %59 = call i32 @output_fde(%struct.fde_entry* %47, %struct.cie_entry* %48, %struct.cfi_insn_data* %49, i32 %58)
  br label %60

60:                                               ; preds = %57
  %61 = load %struct.fde_entry*, %struct.fde_entry** %2, align 8
  %62 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %61, i32 0, i32 0
  %63 = load %struct.fde_entry*, %struct.fde_entry** %62, align 8
  store %struct.fde_entry* %63, %struct.fde_entry** %2, align 8
  br label %28

64:                                               ; preds = %28
  %65 = load i32, i32* %3, align 4
  store i32 %65, i32* @flag_traditional_format, align 4
  br label %66

66:                                               ; preds = %64, %8
  ret void
}

declare dso_local i32 @subseg_new(i8*, i32) #1

declare dso_local i32 @bfd_set_section_flags(i32, i32, i32) #1

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32 @record_alignment(i32, i32) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.cie_entry* @select_cie_for_fde(%struct.fde_entry*, %struct.cfi_insn_data**) #1

declare dso_local i32 @output_fde(%struct.fde_entry*, %struct.cie_entry*, %struct.cfi_insn_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
