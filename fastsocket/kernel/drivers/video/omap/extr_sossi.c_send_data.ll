; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_sossi.c_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_sossi.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOSSI_FIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_data(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %8, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp uge i32 %6, 4
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, i32* @SOSSI_FIFO_REG, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sossi_write_reg(i32 %9, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = sub i32 %14, 4
  store i32 %15, i32* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr i8, i8* %16, i64 4
  store i8* %17, i8** %3, align 8
  br label %5

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %22, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp uge i32 %20, 2
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* @SOSSI_FIFO_REG, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sossi_write_reg16(i32 %23, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = sub i32 %28, 2
  store i32 %29, i32* %4, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr i8, i8* %30, i64 2
  store i8* %31, i8** %3, align 8
  br label %19

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %36, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* @SOSSI_FIFO_REG, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sossi_write_reg8(i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  br label %33

46:                                               ; preds = %33
  ret void
}

declare dso_local i32 @sossi_write_reg(i32, i32) #1

declare dso_local i32 @sossi_write_reg16(i32, i32) #1

declare dso_local i32 @sossi_write_reg8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
