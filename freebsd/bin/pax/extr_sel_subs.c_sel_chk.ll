; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_sel_subs.c_sel_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_sel_subs.c_sel_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usrtb = common dso_local global i32* null, align 8
@grptb = common dso_local global i32* null, align 8
@trhead = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sel_chk(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** @usrtb, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @usr_match(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %1
  %11 = load i32*, i32** @grptb, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @grp_match(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %10
  %18 = load i32*, i32** @trhead, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @trng_match(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %13, %6
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %20, %17
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @usr_match(i32*) #1

declare dso_local i64 @grp_match(i32*) #1

declare dso_local i64 @trng_match(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
