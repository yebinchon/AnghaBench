; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_force_relocation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_force_relocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fix = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@BFD_RELOC_ARM_IMMEDIATE = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_OFFSET_IMM = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_ADRL_IMMEDIATE = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_T32_ADD_IMM = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_T32_IMMEDIATE = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_T32_IMM12 = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_T32_ADD_PC12 = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_ALU_PC_G0_NC = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_LDC_SB_G2 = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_LDR_PC_G0 = common dso_local global i64 0, align 8
@BFD_RELOC_32 = common dso_local global i64 0, align 8
@BSF_FUNCTION = common dso_local global i32 0, align 4
@BFD_RELOC_RVA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_force_relocation(%struct.fix* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fix*, align 8
  store %struct.fix* %0, %struct.fix** %3, align 8
  %4 = load %struct.fix*, %struct.fix** %3, align 8
  %5 = getelementptr inbounds %struct.fix, %struct.fix* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BFD_RELOC_ARM_IMMEDIATE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = load %struct.fix*, %struct.fix** %3, align 8
  %11 = getelementptr inbounds %struct.fix, %struct.fix* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BFD_RELOC_ARM_OFFSET_IMM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %9
  %16 = load %struct.fix*, %struct.fix** %3, align 8
  %17 = getelementptr inbounds %struct.fix, %struct.fix* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BFD_RELOC_ARM_ADRL_IMMEDIATE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %15
  %22 = load %struct.fix*, %struct.fix** %3, align 8
  %23 = getelementptr inbounds %struct.fix, %struct.fix* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BFD_RELOC_ARM_T32_ADD_IMM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = load %struct.fix*, %struct.fix** %3, align 8
  %29 = getelementptr inbounds %struct.fix, %struct.fix* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BFD_RELOC_ARM_T32_IMMEDIATE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load %struct.fix*, %struct.fix** %3, align 8
  %35 = getelementptr inbounds %struct.fix, %struct.fix* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BFD_RELOC_ARM_T32_IMM12, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.fix*, %struct.fix** %3, align 8
  %41 = getelementptr inbounds %struct.fix, %struct.fix* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BFD_RELOC_ARM_T32_ADD_PC12, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %33, %27, %21, %15, %9, %1
  store i32 0, i32* %2, align 4
  br label %90

46:                                               ; preds = %39
  %47 = load %struct.fix*, %struct.fix** %3, align 8
  %48 = getelementptr inbounds %struct.fix, %struct.fix* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BFD_RELOC_ARM_ALU_PC_G0_NC, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.fix*, %struct.fix** %3, align 8
  %54 = getelementptr inbounds %struct.fix, %struct.fix* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BFD_RELOC_ARM_LDC_SB_G2, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.fix*, %struct.fix** %3, align 8
  %60 = getelementptr inbounds %struct.fix, %struct.fix* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BFD_RELOC_ARM_LDR_PC_G0, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %52
  store i32 1, i32* %2, align 4
  br label %90

65:                                               ; preds = %58
  %66 = load %struct.fix*, %struct.fix** %3, align 8
  %67 = getelementptr inbounds %struct.fix, %struct.fix* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BFD_RELOC_32, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.fix*, %struct.fix** %3, align 8
  %73 = getelementptr inbounds %struct.fix, %struct.fix* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.fix*, %struct.fix** %3, align 8
  %78 = getelementptr inbounds %struct.fix, %struct.fix* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call %struct.TYPE_2__* @symbol_get_bfdsym(i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BSF_FUNCTION, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %90

87:                                               ; preds = %76, %71, %65
  %88 = load %struct.fix*, %struct.fix** %3, align 8
  %89 = call i32 @generic_force_reloc(%struct.fix* %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %86, %64, %45
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_2__* @symbol_get_bfdsym(i64) #1

declare dso_local i32 @generic_force_reloc(%struct.fix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
