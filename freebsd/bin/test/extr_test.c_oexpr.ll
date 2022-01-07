; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_oexpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_oexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nargc = common dso_local global i64 0, align 8
@t_wp = common dso_local global i32* null, align 8
@BOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @oexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oexpr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @aexpr(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i64, i64* @nargc, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i64, i64* @nargc, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* @nargc, align 8
  %12 = load i32*, i32** @t_wp, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** @t_wp, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i8* [ %16, %9 ], [ null, %17 ]
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @t_lex(i64 %20)
  %22 = load i64, i64* @BOR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load i64, i64* @nargc, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* @nargc, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* @nargc, align 8
  %30 = load i32*, i32** @t_wp, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** @t_wp, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  br label %36

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi i8* [ %34, %27 ], [ null, %35 ]
  %38 = ptrtoint i8* %37 to i64
  %39 = call i64 @t_lex(i64 %38)
  %40 = trunc i64 %39 to i32
  %41 = call i32 @oexpr(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i1 [ true, %36 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %55

49:                                               ; preds = %18
  %50 = load i32*, i32** @t_wp, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 -1
  store i32* %51, i32** @t_wp, align 8
  %52 = load i64, i64* @nargc, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* @nargc, align 8
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @aexpr(i32) #1

declare dso_local i64 @t_lex(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
