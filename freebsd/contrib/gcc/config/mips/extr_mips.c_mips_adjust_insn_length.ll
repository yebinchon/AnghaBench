; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_adjust_insn_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_adjust_insn_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TARGET_MIPS16 = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_adjust_insn_length(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @CALL_P(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @TARGET_MIPS16, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @simplejump_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %22

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @JUMP_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %15, %11
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @INSN_CODE(i32 %30)
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @get_attr_hazard(i32 %34)
  switch i32 %35, label %43 [
    i32 128, label %36
    i32 130, label %37
    i32 129, label %40
  ]

36:                                               ; preds = %33
  br label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 8
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %40, %37, %36
  br label %44

44:                                               ; preds = %43, %29, %22
  %45 = load i64, i64* @TARGET_MIPS16, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @CALL_P(i32) #1

declare dso_local i64 @simplejump_p(i32) #1

declare dso_local i64 @JUMP_P(i32) #1

declare dso_local i64 @INSN_CODE(i32) #1

declare dso_local i32 @get_attr_hazard(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
