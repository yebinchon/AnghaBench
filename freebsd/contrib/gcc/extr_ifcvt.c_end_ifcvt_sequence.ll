; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_end_ifcvt_sequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_end_ifcvt_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i32, i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.noce_if_info*)* @end_ifcvt_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @end_ifcvt_sequence(%struct.noce_if_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %6 = call i64 (...) @get_insns()
  store i64 %6, i64* %5, align 8
  %7 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %8 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @set_used_flags(i32 %9)
  %11 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %12 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_used_flags(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @unshare_all_rtl_in_chain(i64 %15)
  %17 = call i32 (...) @end_sequence()
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %33, %1
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @JUMP_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @recog_memoized(i64 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22
  %31 = load i64, i64* @NULL_RTX, align 8
  store i64 %31, i64* %2, align 8
  br label %38

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @NEXT_INSN(i64 %34)
  store i64 %35, i64* %4, align 8
  br label %19

36:                                               ; preds = %19
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @set_used_flags(i32) #1

declare dso_local i32 @unshare_all_rtl_in_chain(i64) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i32 @recog_memoized(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
