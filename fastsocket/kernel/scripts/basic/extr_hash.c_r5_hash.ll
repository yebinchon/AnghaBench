; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_hash.c_r5_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_hash.c_r5_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DYNAMIC_DEBUG_HASH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @r5_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5_hash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %11, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %12, %15
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %16, %19
  %21 = mul i64 %20, 11
  store i64 %21, i64* %3, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %2, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @DYNAMIC_DEBUG_HASH_BITS, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %27, %31
  %33 = trunc i64 %32 to i32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
