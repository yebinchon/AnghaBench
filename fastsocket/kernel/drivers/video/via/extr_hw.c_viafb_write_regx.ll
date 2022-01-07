; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_write_regx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_write_regx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_reg = type { i8, i8, i8, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_write_regx(%struct.io_reg* %0, i32 %1) #0 {
  %3 = alloca %struct.io_reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.io_reg* %0, %struct.io_reg** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %62, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %65

11:                                               ; preds = %7
  %12 = load %struct.io_reg*, %struct.io_reg** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %12, i64 %14
  %16 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  %18 = load %struct.io_reg*, %struct.io_reg** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %18, i64 %20
  %22 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @outb(i8 zeroext %17, i64 %23)
  %25 = load %struct.io_reg*, %struct.io_reg** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %25, i64 %27
  %29 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call zeroext i8 @inb(i64 %31)
  store i8 %32, i8* %6, align 1
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = load %struct.io_reg*, %struct.io_reg** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %35, i64 %37
  %39 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = and i32 %34, %42
  %44 = load %struct.io_reg*, %struct.io_reg** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %44, i64 %46
  %48 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 2
  %50 = zext i8 %49 to i32
  %51 = or i32 %43, %50
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %6, align 1
  %53 = load i8, i8* %6, align 1
  %54 = load %struct.io_reg*, %struct.io_reg** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %54, i64 %56
  %58 = getelementptr inbounds %struct.io_reg, %struct.io_reg* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  %61 = call i32 @outb(i8 zeroext %53, i64 %60)
  br label %62

62:                                               ; preds = %11
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %7

65:                                               ; preds = %7
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
