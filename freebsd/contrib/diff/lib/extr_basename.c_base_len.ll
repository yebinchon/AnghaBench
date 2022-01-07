; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_basename.c_base_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/lib/extr_basename.c_base_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @base_len(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4)
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ult i64 1, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i8*, i8** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = sub i64 %11, 1
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @ISSLASH(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %9, %6
  %18 = phi i1 [ false, %6 ], [ %16, %9 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %3, align 8
  br label %6

23:                                               ; preds = %17
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ISSLASH(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
