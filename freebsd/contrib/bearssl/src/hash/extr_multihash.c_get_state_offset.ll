; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_multihash.c_get_state_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_multihash.c_get_state_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@br_multihash_context = common dso_local global i32 0, align 4
@val_64 = common dso_local global i32 0, align 4
@val_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_state_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_state_offset(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i32, i32* @br_multihash_context, align 4
  %9 = load i32, i32* @val_64, align 4
  %10 = call i64 @offsetof(i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 5
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 32
  %15 = add i64 %10, %14
  store i64 %15, i64* %2, align 8
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = lshr i32 %21, 1
  %23 = and i32 %20, %22
  %24 = add i32 %19, %23
  %25 = shl i32 %24, 2
  %26 = load i32, i32* %4, align 4
  %27 = lshr i32 %26, 1
  %28 = add i32 %25, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @br_multihash_context, align 4
  %30 = load i32, i32* @val_32, align 4
  %31 = call i64 @offsetof(i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %31, %34
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %16, %7
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
