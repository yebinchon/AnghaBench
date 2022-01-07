; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_fill_fp_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_fill_fp_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALPHA_FP0_REGNUM = common dso_local global i32 0, align 4
@ALPHA_FPCR_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alpha_fill_fp_regs(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %32, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %12 = add nsw i32 %11, 31
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %26 = sub nsw i32 %24, %25
  %27 = mul nsw i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  %30 = call i32 @regcache_collect(i32 %22, i8* %29)
  br label %31

31:                                               ; preds = %21, %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ALPHA_FPCR_REGNUM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %39, %35
  %43 = load i32, i32* @ALPHA_FPCR_REGNUM, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @regcache_collect(i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @regcache_collect(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
