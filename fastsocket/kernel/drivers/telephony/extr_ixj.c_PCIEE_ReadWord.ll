; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_PCIEE_ReadWord.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_PCIEE_ReadWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @PCIEE_ReadWord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PCIEE_ReadWord(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 3
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @inb(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 254
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @outb(i32 %20, i32 %21)
  %23 = call i32 @mdelay(i32 1)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @PCIEE_WriteBit(i32 %24, i32 %25, i32 1)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @PCIEE_WriteBit(i32 %27, i32 %28, i32 1)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PCIEE_WriteBit(i32 %30, i32 %31, i32 0)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %47, %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = call i32 @PCIEE_WriteBit(i32 %37, i32 %38, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %33

50:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @PCIEE_ReadBit(i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %60, %61
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %51

67:                                               ; preds = %51
  %68 = call i32 @mdelay(i32 1)
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 253
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @outb(i32 %71, i32 %72)
  ret i32 0
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @PCIEE_WriteBit(i32, i32, i32) #1

declare dso_local i32 @PCIEE_ReadBit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
