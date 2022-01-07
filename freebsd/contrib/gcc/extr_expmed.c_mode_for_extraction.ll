; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_mode_for_extraction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_mode_for_extraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HAVE_insv = common dso_local global i32 0, align 4
@insn_data = common dso_local global %struct.insn_data* null, align 8
@CODE_FOR_insv = common dso_local global i64 0, align 8
@MAX_MACHINE_MODE = common dso_local global i32 0, align 4
@HAVE_extv = common dso_local global i32 0, align 4
@CODE_FOR_extv = common dso_local global i64 0, align 8
@HAVE_extzv = common dso_local global i32 0, align 4
@CODE_FOR_extzv = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mode_for_extraction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.insn_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %35 [
    i32 128, label %8
    i32 130, label %17
    i32 129, label %26
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @HAVE_insv, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.insn_data*, %struct.insn_data** @insn_data, align 8
  %13 = load i64, i64* @CODE_FOR_insv, align 8
  %14 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %12, i64 %13
  store %struct.insn_data* %14, %struct.insn_data** %6, align 8
  br label %37

15:                                               ; preds = %8
  %16 = load i32, i32* @MAX_MACHINE_MODE, align 4
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load i32, i32* @HAVE_extv, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.insn_data*, %struct.insn_data** @insn_data, align 8
  %22 = load i64, i64* @CODE_FOR_extv, align 8
  %23 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %21, i64 %22
  store %struct.insn_data* %23, %struct.insn_data** %6, align 8
  br label %37

24:                                               ; preds = %17
  %25 = load i32, i32* @MAX_MACHINE_MODE, align 4
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %2
  %27 = load i32, i32* @HAVE_extzv, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.insn_data*, %struct.insn_data** @insn_data, align 8
  %31 = load i64, i64* @CODE_FOR_extzv, align 8
  %32 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %30, i64 %31
  store %struct.insn_data* %32, %struct.insn_data** %6, align 8
  br label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @MAX_MACHINE_MODE, align 4
  store i32 %34, i32* %3, align 4
  br label %64

35:                                               ; preds = %2
  %36 = call i32 (...) @gcc_unreachable()
  br label %37

37:                                               ; preds = %35, %29, %20, %11
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @VOIDmode, align 4
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %37
  %43 = load %struct.insn_data*, %struct.insn_data** %6, align 8
  %44 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VOIDmode, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @word_mode, align 4
  store i32 %54, i32* %3, align 4
  br label %64

55:                                               ; preds = %42
  %56 = load %struct.insn_data*, %struct.insn_data** %6, align 8
  %57 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %55, %53, %40, %33, %24, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
