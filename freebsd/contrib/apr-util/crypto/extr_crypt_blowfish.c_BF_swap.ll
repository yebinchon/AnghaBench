; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_crypt_blowfish.c_BF_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_crypt_blowfish.c_BF_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BF_swap.endianness_check = internal global i32 1, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @BF_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BF_swap(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* bitcast (i32* @BF_swap.endianness_check to i8*), i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 16
  %18 = or i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 16711935
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 16711935
  %25 = or i32 %21, %24
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %3, align 8
  store i32 %25, i32* %26, align 4
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %11, label %32

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
