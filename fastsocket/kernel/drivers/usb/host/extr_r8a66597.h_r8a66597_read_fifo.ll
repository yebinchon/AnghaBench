; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597.h_r8a66597_read_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597.h_r8a66597_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i64, i32*, i32)* @r8a66597_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_read_fifo(%struct.r8a66597* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %13 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %18 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @insl(i64 %27, i32* %28, i64 %29)
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @inl(i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load i64, i64* %10, align 8
  %40 = mul i64 %39, 4
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 3
  %44 = call i32 @memcpy(i8* %41, i64* %11, i32 %43)
  br label %45

45:                                               ; preds = %34, %23
  br label %54

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %8, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @insw(i64 %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %45
  ret void
}

declare dso_local i32 @insl(i64, i32*, i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @insw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
