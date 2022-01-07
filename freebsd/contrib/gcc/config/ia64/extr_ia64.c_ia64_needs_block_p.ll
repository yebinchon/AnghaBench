; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_needs_block_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_needs_block_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spec_check_no = common dso_local global i32* null, align 8
@SPEC_GEN_CHECK_MUTATION_OFFSET = common dso_local global i32 0, align 4
@SPEC_GEN_S = common dso_local global i32 0, align 4
@SPEC_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ia64_needs_block_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_needs_block_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @spec_check_no, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @INSN_UID(i32 %5)
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 0, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SPEC_GEN_CHECK_MUTATION_OFFSET, align 4
  %15 = icmp slt i32 %13, %14
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ false, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load i32, i32* @SPEC_GEN_S, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SPEC_GEN_S, align 4
  %26 = load i32, i32* @SPEC_N, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %23, %16
  %30 = load i32, i32* @SPEC_N, align 4
  %31 = mul nsw i32 4, %30
  %32 = load i32, i32* %3, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SPEC_N, align 4
  %37 = mul nsw i32 4, %36
  %38 = load i32, i32* @SPEC_N, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp slt i32 %35, %39
  br label %41

41:                                               ; preds = %34, %29
  %42 = phi i1 [ false, %29 ], [ %40, %34 ]
  br label %43

43:                                               ; preds = %41, %23
  %44 = phi i1 [ true, %23 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i64 @INSN_UID(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
