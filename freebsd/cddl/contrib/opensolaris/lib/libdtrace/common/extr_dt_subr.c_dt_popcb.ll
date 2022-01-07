; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dt_popcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dt_popcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BT_ULMASK = common dso_local global i64 0, align 8
@BT_ULSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dt_popcb(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @BT_ULMASK, align 8
  %12 = and i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @BT_ULSHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %47

19:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @dt_popc(i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %20

35:                                               ; preds = %20
  %36 = load i64, i64* %9, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = shl i64 1, %41
  %43 = sub i64 %42, 1
  %44 = and i64 %40, %43
  %45 = call i64 @dt_popc(i64 %44)
  %46 = add i64 %36, %45
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %35, %18
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i64 @dt_popc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
