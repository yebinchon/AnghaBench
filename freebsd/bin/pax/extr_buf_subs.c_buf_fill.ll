; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_buf_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_buf_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf_fill.fini = internal global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@blksz = common dso_local global i32 0, align 4
@bufpt = common dso_local global i8* null, align 8
@bufend = common dso_local global i8* null, align 8
@rdcnt = common dso_local global i64 0, align 8
@frmt = common dso_local global i32* null, align 8
@exit_val = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buf_fill() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @buf_fill.fini, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %36

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %34, %6
  %8 = load i8*, i8** @buf, align 8
  %9 = load i32, i32* @blksz, align 4
  %10 = call i32 @ar_read(i8* %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load i8*, i8** @buf, align 8
  store i8* %13, i8** @bufpt, align 8
  %14 = load i8*, i8** @buf, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %14, i64 %16
  store i8* %17, i8** @bufend, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @rdcnt, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* @rdcnt, align 8
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %36

23:                                               ; preds = %7
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %35

27:                                               ; preds = %23
  %28 = load i32*, i32** @frmt, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call i64 (...) @ar_next()
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  store i32 1, i32* @buf_fill.fini, align 4
  store i32 0, i32* %1, align 4
  br label %36

34:                                               ; preds = %30
  store i64 0, i64* @rdcnt, align 8
  br label %7

35:                                               ; preds = %26
  store i32 1, i32* @exit_val, align 4
  store i32 -1, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %33, %12, %5
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @ar_read(i8*, i32) #1

declare dso_local i64 @ar_next(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
