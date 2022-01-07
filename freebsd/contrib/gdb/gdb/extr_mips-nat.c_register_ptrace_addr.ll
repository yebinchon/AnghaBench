; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-nat.c_register_ptrace_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-nat.c_register_ptrace_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@GPR_BASE = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@PC = common dso_local global i32 0, align 4
@CAUSE = common dso_local global i32 0, align 4
@MMHI = common dso_local global i32 0, align 4
@MMLO = common dso_local global i32 0, align 4
@FPC_CSR = common dso_local global i32 0, align 4
@FPC_EIR = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@FPR_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @register_ptrace_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_ptrace_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 32
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @GPR_BASE, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %6, %7
  br label %88

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @current_gdbarch, align 4
  %12 = call %struct.TYPE_2__* @mips_regnum(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @PC, align 4
  br label %86

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = call %struct.TYPE_2__* @mips_regnum(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @CAUSE, align 4
  br label %84

27:                                               ; preds = %18
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @current_gdbarch, align 4
  %30 = call %struct.TYPE_2__* @mips_regnum(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @MMHI, align 4
  br label %82

36:                                               ; preds = %27
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @current_gdbarch, align 4
  %39 = call %struct.TYPE_2__* @mips_regnum(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @MMLO, align 4
  br label %80

45:                                               ; preds = %36
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @current_gdbarch, align 4
  %48 = call %struct.TYPE_2__* @mips_regnum(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @FPC_CSR, align 4
  br label %78

54:                                               ; preds = %45
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @current_gdbarch, align 4
  %57 = call %struct.TYPE_2__* @mips_regnum(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @FPC_EIR, align 4
  br label %76

63:                                               ; preds = %54
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @FP0_REGNUM, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @FPR_BASE, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @FP0_REGNUM, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %68, %71
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i32 [ %72, %67 ], [ 0, %73 ]
  br label %76

76:                                               ; preds = %74, %61
  %77 = phi i32 [ %62, %61 ], [ %75, %74 ]
  br label %78

78:                                               ; preds = %76, %52
  %79 = phi i32 [ %53, %52 ], [ %77, %76 ]
  br label %80

80:                                               ; preds = %78, %43
  %81 = phi i32 [ %44, %43 ], [ %79, %78 ]
  br label %82

82:                                               ; preds = %80, %34
  %83 = phi i32 [ %35, %34 ], [ %81, %80 ]
  br label %84

84:                                               ; preds = %82, %25
  %85 = phi i32 [ %26, %25 ], [ %83, %82 ]
  br label %86

86:                                               ; preds = %84, %16
  %87 = phi i32 [ %17, %16 ], [ %85, %84 ]
  br label %88

88:                                               ; preds = %86, %5
  %89 = phi i32 [ %8, %5 ], [ %87, %86 ]
  ret i32 %89
}

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
