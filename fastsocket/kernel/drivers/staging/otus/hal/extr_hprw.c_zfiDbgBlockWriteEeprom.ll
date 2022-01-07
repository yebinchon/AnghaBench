; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfiDbgBlockWriteEeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfiDbgBlockWriteEeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_CMD_WREEPROM = common dso_local global i32 0, align 4
@ZM_EEPROM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfiDbgBlockWriteEeprom(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [9 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @ZM_CMD_WREEPROM, align 4
  %11 = shl i32 %10, 8
  %12 = or i32 32, %11
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %37, %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %9, align 4
  %20 = mul nsw i32 4, %19
  %21 = add nsw i32 %18, %20
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 2, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %35
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %17
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %43 = load i32, i32* @ZM_EEPROM_WRITE, align 4
  %44 = call i32 @zfIssueCmd(i32* %41, i32* %42, i32 36, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @zfIssueCmd(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
