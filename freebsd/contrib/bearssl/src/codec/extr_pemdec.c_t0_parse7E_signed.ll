; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/codec/extr_pemdec.c_t0_parse7E_signed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/codec/extr_pemdec.c_t0_parse7E_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @t0_parse7E_signed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t0_parse7E_signed(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = ashr i32 %10, 6
  %12 = and i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %38, %1
  %16 = load i8**, i8*** %3, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %16, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 7
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 127
  %25 = or i32 %22, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %26, 128
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = xor i32 %32, -1
  %34 = sub nsw i32 0, %33
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %15
  br label %15

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
