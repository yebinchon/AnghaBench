; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_cmdline.c_memparse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_cmdline.c_memparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memparse(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @simple_strtoull(i8* %7, i8** %5, i32 0)
  store i64 %8, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %23 [
    i32 71, label %12
    i32 103, label %12
    i32 77, label %15
    i32 109, label %15
    i32 75, label %18
    i32 107, label %18
  ]

12:                                               ; preds = %2, %2
  %13 = load i64, i64* %6, align 8
  %14 = shl i64 %13, 10
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %2, %2, %12
  %16 = load i64, i64* %6, align 8
  %17 = shl i64 %16, 10
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %2, %2, %15
  %19 = load i64, i64* %6, align 8
  %20 = shl i64 %19, 10
  store i64 %20, i64* %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %2, %18
  br label %24

24:                                               ; preds = %23
  %25 = load i8**, i8*** %4, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i8**, i8*** %4, align 8
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* %6, align 8
  ret i64 %31
}

declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
