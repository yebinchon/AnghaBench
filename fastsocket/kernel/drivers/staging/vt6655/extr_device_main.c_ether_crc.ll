; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_device_main.c_ether_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_device_main.c_ether_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ethernet_polynomial = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ether_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_crc(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %5, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  %15 = load i8, i8* %13, align 1
  store i8 %15, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %36, %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 1
  %28 = xor i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @ethernet_polynomial, align 4
  br label %33

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = xor i32 %21, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = ashr i32 %40, 1
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %6, align 1
  br label %16

43:                                               ; preds = %16
  br label %8

44:                                               ; preds = %8
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
