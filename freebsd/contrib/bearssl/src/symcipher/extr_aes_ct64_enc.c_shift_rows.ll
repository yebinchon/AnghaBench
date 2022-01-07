; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_enc.c_shift_rows.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_enc.c_shift_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @shift_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shift_rows(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %47

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65535
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -1048576
  %18 = ashr i32 %17, 4
  %19 = or i32 %15, %18
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 983040
  %22 = shl i32 %21, 12
  %23 = or i32 %19, %22
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 0
  %26 = ashr i32 %25, 8
  %27 = or i32 %23, %26
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 0
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 0
  %34 = ashr i32 %33, 12
  %35 = or i32 %31, %34
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 0
  %38 = shl i32 %37, 4
  %39 = or i32 %35, %38
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
