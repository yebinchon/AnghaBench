; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_fill_fpreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_fill_fpreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_tdep = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@FPLAST_REGNUM = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@FPREG_FPSCR_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppcfbsd_fill_fpreg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @current_gdbarch, align 4
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load i32, i32* @current_gdbarch, align 4
  %10 = call i32 @ppc_floating_point_unit_p(i32 %9)
  %11 = call i32 @gdb_assert(i32 %10)
  %12 = load i32, i32* @FP0_REGNUM, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FPLAST_REGNUM, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %35

24:                                               ; preds = %21, %17
  %25 = load i32, i32* @current_regcache, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FP0_REGNUM, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @FPREG_FPR_OFFSET(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  %34 = call i32 @regcache_raw_collect(i32 %25, i32 %26, i8* %33)
  br label %35

35:                                               ; preds = %24, %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %42 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %58

48:                                               ; preds = %45, %39
  %49 = load i32, i32* @current_regcache, align 4
  %50 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %51 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* @FPREG_FPSCR_OFFSET, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = call i32 @regcache_raw_collect(i32 %49, i32 %52, i8* %56)
  br label %58

58:                                               ; preds = %48, %45
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @ppc_floating_point_unit_p(i32) #1

declare dso_local i32 @regcache_raw_collect(i32, i32, i8*) #1

declare dso_local i32 @FPREG_FPR_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
