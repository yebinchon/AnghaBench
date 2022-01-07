; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-tdep.c_ppcnbsd_fill_fpreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-tdep.c_ppcnbsd_fill_fpreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@FPREG_FPSCR_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppcnbsd_fill_fpreg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @current_gdbarch, align 4
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load i32, i32* @FP0_REGNUM, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @FP0_REGNUM, align 4
  %13 = add nsw i32 %12, 31
  %14 = icmp sle i32 %11, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %19, %15
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FP0_REGNUM, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @FPREG_FPR_OFFSET(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  %31 = call i32 @regcache_collect(i32 %23, i8* %30)
  br label %32

32:                                               ; preds = %22, %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %10

36:                                               ; preds = %10
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %39 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %42, %36
  %46 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %47 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* @FPREG_FPSCR_OFFSET, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i32 @regcache_collect(i32 %48, i8* %52)
  br label %54

54:                                               ; preds = %45, %42
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @regcache_collect(i32, i8*) #1

declare dso_local i32 @FPREG_FPR_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
