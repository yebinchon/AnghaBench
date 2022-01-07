; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.acm* }
%struct.acm = type { i32, i32 }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACM_CTRL_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@ACM_CTRL_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@ACM_CTRL_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@ACM_CTRL_RI = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@ACM_CTRL_DCD = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @acm_tty_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_tty_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.acm*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.acm*, %struct.acm** %8, align 8
  store %struct.acm* %9, %struct.acm** %6, align 8
  %10 = load %struct.acm*, %struct.acm** %6, align 8
  %11 = call i32 @ACM_READY(%struct.acm* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %78

16:                                               ; preds = %2
  %17 = load %struct.acm*, %struct.acm** %6, align 8
  %18 = getelementptr inbounds %struct.acm, %struct.acm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ACM_CTRL_DTR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @TIOCM_DTR, align 4
  br label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load %struct.acm*, %struct.acm** %6, align 8
  %29 = getelementptr inbounds %struct.acm, %struct.acm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ACM_CTRL_RTS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @TIOCM_RTS, align 4
  br label %37

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %27, %38
  %40 = load %struct.acm*, %struct.acm** %6, align 8
  %41 = getelementptr inbounds %struct.acm, %struct.acm* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ACM_CTRL_DSR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @TIOCM_DSR, align 4
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = or i32 %39, %50
  %52 = load %struct.acm*, %struct.acm** %6, align 8
  %53 = getelementptr inbounds %struct.acm, %struct.acm* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ACM_CTRL_RI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @TIOCM_RI, align 4
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = or i32 %51, %62
  %64 = load %struct.acm*, %struct.acm** %6, align 8
  %65 = getelementptr inbounds %struct.acm, %struct.acm* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ACM_CTRL_DCD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @TIOCM_CD, align 4
  br label %73

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %63, %74
  %76 = load i32, i32* @TIOCM_CTS, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ACM_READY(%struct.acm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
