; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_nexpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_nexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNOT = common dso_local global i32 0, align 4
@nargc = common dso_local global i64 0, align 8
@t_wp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexpr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @UNOT, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load i64, i64* @nargc, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i64, i64* @nargc, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @nargc, align 8
  %13 = load i32*, i32** @t_wp, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** @t_wp, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  br label %19

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi i8* [ %17, %10 ], [ null, %18 ]
  %21 = ptrtoint i8* %20 to i64
  %22 = call i32 @t_lex(i64 %21)
  %23 = call i32 @nexpr(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @primary(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @t_lex(i64) #1

declare dso_local i32 @primary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
