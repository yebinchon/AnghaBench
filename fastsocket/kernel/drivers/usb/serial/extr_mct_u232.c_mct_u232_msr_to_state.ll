; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_msr_to_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_msr_to_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCT_U232_MSR_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@MCT_U232_MSR_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@MCT_U232_MSR_RI = common dso_local global i8 0, align 1
@TIOCM_RI = common dso_local global i32 0, align 4
@MCT_U232_MSR_CD = common dso_local global i8 0, align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"msr_to_state: msr=0x%x ==> state=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8)* @mct_u232_msr_to_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mct_u232_msr_to_state(i32* %0, i8 zeroext %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @MCT_U232_MSR_DSR, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @TIOCM_DSR, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, i32* %13, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @TIOCM_DSR, align 4
  %18 = xor i32 %17, -1
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %11
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @MCT_U232_MSR_CTS, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @TIOCM_CTS, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %40

34:                                               ; preds = %22
  %35 = load i32, i32* @TIOCM_CTS, align 4
  %36 = xor i32 %35, -1
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @MCT_U232_MSR_RI, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @TIOCM_RI, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %58

52:                                               ; preds = %40
  %53 = load i32, i32* @TIOCM_RI, align 4
  %54 = xor i32 %53, -1
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i8, i8* %4, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @MCT_U232_MSR_CD, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @TIOCM_CD, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %76

70:                                               ; preds = %58
  %71 = load i32, i32* @TIOCM_CD, align 4
  %72 = xor i32 %71, -1
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i8, i8* %4, align 1
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %77, i32 %79)
  ret void
}

declare dso_local i32 @dbg(i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
