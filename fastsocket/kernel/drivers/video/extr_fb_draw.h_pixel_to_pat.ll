; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fb_draw.h_pixel_to_pat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fb_draw.h_pixel_to_pat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"pixel_to_pat(): unsupported pixelformat\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @pixel_to_pat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pixel_to_pat(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %39 [
    i32 1, label %7
    i32 2, label %11
    i32 4, label %15
    i32 8, label %19
    i32 12, label %23
    i32 16, label %27
    i32 24, label %31
    i32 32, label %35
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4294967295, %9
  store i64 %10, i64* %3, align 8
  br label %41

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 1431655765, %13
  store i64 %14, i64* %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 286331153, %17
  store i64 %18, i64* %3, align 8
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 16843009, %21
  store i64 %22, i64* %3, align 8
  br label %41

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 16781313, %25
  store i64 %26, i64* %3, align 8
  br label %41

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 65537, %29
  store i64 %30, i64* %3, align 8
  br label %41

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 16777217, %33
  store i64 %34, i64* %3, align 8
  br label %41

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 1, %37
  store i64 %38, i64* %3, align 8
  br label %41

39:                                               ; preds = %2
  %40 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %7, %11, %15, %19, %23, %27, %31, %35, %39
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
