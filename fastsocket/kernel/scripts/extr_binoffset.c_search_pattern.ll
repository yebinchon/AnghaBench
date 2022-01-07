; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_binoffset.c_search_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_binoffset.c_search_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bix = common dso_local global i64 0, align 8
@filesize = common dso_local global i64 0, align 8
@madr = common dso_local global i64* null, align 8
@patterns = common dso_local global i64* null, align 8
@pat_len = common dso_local global i32 0, align 4
@num_matches = common dso_local global i64 0, align 8
@firstloc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_pattern() #0 {
  store i64 0, i64* @bix, align 8
  br label %1

1:                                                ; preds = %32, %0
  %2 = load i64, i64* @bix, align 8
  %3 = load i64, i64* @filesize, align 8
  %4 = icmp ult i64 %2, %3
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = load i64*, i64** @madr, align 8
  %7 = load i64, i64* @bix, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** @patterns, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %5
  %15 = load i64*, i64** @madr, align 8
  %16 = load i64, i64* @bix, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64*, i64** @patterns, align 8
  %19 = load i32, i32* @pat_len, align 4
  %20 = call i64 @memcmp(i64* %17, i64* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i64, i64* @num_matches, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* @bix, align 8
  store i64 %26, i64* @firstloc, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64, i64* @num_matches, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @num_matches, align 8
  br label %30

30:                                               ; preds = %27, %14
  br label %31

31:                                               ; preds = %30, %5
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* @bix, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @bix, align 8
  br label %1

35:                                               ; preds = %1
  ret void
}

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
