; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_nops_for_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_nops_for_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cl_insn = type { i32 }

@MAX_DELAY_NOPS = common dso_local global i32 0, align 4
@mips_fix_vr4130 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_cl_insn*, %struct.mips_cl_insn*)* @nops_for_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nops_for_insn(%struct.mips_cl_insn* %0, %struct.mips_cl_insn* %1) #0 {
  %3 = alloca %struct.mips_cl_insn*, align 8
  %4 = alloca %struct.mips_cl_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %3, align 8
  store %struct.mips_cl_insn* %1, %struct.mips_cl_insn** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAX_DELAY_NOPS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %13, i64 %15
  %17 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %12
  %21 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %21, i64 %23
  %25 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %26 = call i32 @insns_between(%struct.mips_cl_insn* %24, %struct.mips_cl_insn* %25)
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %20
  br label %35

35:                                               ; preds = %34, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load i64, i64* @mips_fix_vr4130, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %3, align 8
  %44 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %4, align 8
  %45 = call i32 @nops_for_vr4130(%struct.mips_cl_insn* %43, %struct.mips_cl_insn* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %42
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @insns_between(%struct.mips_cl_insn*, %struct.mips_cl_insn*) #1

declare dso_local i32 @nops_for_vr4130(%struct.mips_cl_insn*, %struct.mips_cl_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
