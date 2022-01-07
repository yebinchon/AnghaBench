; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_rd_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_rd_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bufend = common dso_local global i64 0, align 8
@bufpt = common dso_local global i64 0, align 8
@rdblksz = common dso_local global i64 0, align 8
@rdcnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rd_skip(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

10:                                               ; preds = %1
  %11 = load i64, i64* @bufend, align 8
  %12 = load i64, i64* @bufpt, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @MIN(i64 %13, i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @bufpt, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* @bufpt, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub nsw i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %75

25:                                               ; preds = %10
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @rdblksz, align 8
  %28 = srem i64 %26, %27
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @rdblksz, align 8
  %31 = sdiv i64 %29, %30
  %32 = load i64, i64* @rdblksz, align 8
  %33 = mul nsw i64 %31, %32
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @ar_fow(i64 %34, i64* %6)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %75

38:                                               ; preds = %25
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @rdcnt, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* @rdcnt, align 8
  br label %47

47:                                               ; preds = %64, %38
  %48 = load i64, i64* %4, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i64, i64* @bufend, align 8
  %52 = load i64, i64* @bufpt, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = call i64 (...) @buf_fill()
  store i64 %57, i64* %5, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %75

60:                                               ; preds = %56, %50
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %75

64:                                               ; preds = %60
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @MIN(i64 %65, i64 %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @bufpt, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* @bufpt, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %4, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %4, align 8
  br label %47

74:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %63, %59, %37, %24, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @ar_fow(i64, i64*) #1

declare dso_local i64 @buf_fill(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
