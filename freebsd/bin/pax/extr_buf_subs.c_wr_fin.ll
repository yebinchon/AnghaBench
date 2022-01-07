; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_wr_fin.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_wr_fin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bufpt = common dso_local global i64 0, align 8
@buf = common dso_local global i64 0, align 8
@bufend = common dso_local global i64 0, align 8
@blksz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wr_fin() #0 {
  %1 = load i64, i64* @bufpt, align 8
  %2 = load i64, i64* @buf, align 8
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i64, i64* @bufpt, align 8
  %6 = load i64, i64* @bufend, align 8
  %7 = load i64, i64* @bufpt, align 8
  %8 = sub nsw i64 %6, %7
  %9 = call i32 @memset(i64 %5, i32 0, i64 %8)
  %10 = load i64, i64* @bufend, align 8
  store i64 %10, i64* @bufpt, align 8
  %11 = load i32, i32* @blksz, align 4
  %12 = call i32 @buf_flush(i32 %11)
  br label %13

13:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @buf_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
