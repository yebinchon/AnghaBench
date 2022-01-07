; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_vect_set_dump_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_vect_set_dump_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_file = common dso_local global i64 0, align 8
@vect_dump = common dso_local global i64 0, align 8
@vect_verbosity_level = common dso_local global i64 0, align 8
@MAX_VERBOSITY_LEVEL = common dso_local global i64 0, align 8
@stderr = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@REPORT_DETAILS = common dso_local global i64 0, align 8
@TDF_STATS = common dso_local global i32 0, align 4
@REPORT_UNVECTORIZED_LOOPS = common dso_local global i64 0, align 8
@REPORT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vect_set_dump_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vect_set_dump_settings() #0 {
  %1 = load i64, i64* @dump_file, align 8
  store i64 %1, i64* @vect_dump, align 8
  %2 = load i64, i64* @vect_verbosity_level, align 8
  %3 = load i64, i64* @MAX_VERBOSITY_LEVEL, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @dump_file, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @stderr, align 8
  store i64 %9, i64* @vect_dump, align 8
  br label %10

10:                                               ; preds = %8, %5
  br label %45

11:                                               ; preds = %0
  %12 = load i64, i64* @dump_file, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* @dump_flags, align 4
  %16 = load i32, i32* @TDF_DETAILS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @REPORT_DETAILS, align 8
  store i64 %20, i64* @vect_verbosity_level, align 8
  br label %34

21:                                               ; preds = %14, %11
  %22 = load i64, i64* @dump_file, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @dump_flags, align 4
  %26 = load i32, i32* @TDF_STATS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @REPORT_UNVECTORIZED_LOOPS, align 8
  store i64 %30, i64* @vect_verbosity_level, align 8
  br label %33

31:                                               ; preds = %24, %21
  %32 = load i64, i64* @REPORT_NONE, align 8
  store i64 %32, i64* @vect_verbosity_level, align 8
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i64, i64* @dump_file, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @vect_verbosity_level, align 8
  %39 = load i64, i64* @REPORT_NONE, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ true, %34 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @gcc_assert(i32 %43)
  br label %45

45:                                               ; preds = %41, %10
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
