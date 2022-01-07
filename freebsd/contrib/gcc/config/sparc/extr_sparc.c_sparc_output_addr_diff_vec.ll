; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_output_addr_diff_vec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_output_addr_diff_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)* }

@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@asm_out_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sparc_output_addr_diff_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_output_addr_diff_vec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @XEXP(i32 %8, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @XEXP(i32 %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @XEXP(i32 %12, i32 0)
  %14 = call i32 @XEXP(i32 %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @XVECLEN(i32 %15, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %18 = load i32, i32* @asm_out_file, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @CODE_LABEL_NUMBER(i32 %19)
  %21 = call i32 %17(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %37, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i32, i32* @asm_out_file, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @XVECEXP(i32 %29, i32 1, i32 %30)
  %32 = call i32 @XEXP(i32 %31, i32 0)
  %33 = call i32 @CODE_LABEL_NUMBER(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @CODE_LABEL_NUMBER(i32 %34)
  %36 = call i32 @ASM_OUTPUT_ADDR_DIFF_ELT(i32 %27, i32 %28, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %22

40:                                               ; preds = %22
  ret void
}

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @CODE_LABEL_NUMBER(i32) #1

declare dso_local i32 @ASM_OUTPUT_ADDR_DIFF_ELT(i32, i32, i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
