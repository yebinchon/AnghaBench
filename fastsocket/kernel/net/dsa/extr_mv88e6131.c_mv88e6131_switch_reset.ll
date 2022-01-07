; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6131.c_mv88e6131_switch_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6131.c_mv88e6131_switch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }

@REG_GLOBAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @mv88e6131_switch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6131_switch_reset(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 11
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @REG_PORT(i32 %10)
  %12 = call i32 @REG_READ(i32 %11, i32 4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @REG_PORT(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 65532
  %17 = call i32 @REG_WRITE(i32 %14, i32 4, i32 %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %6

21:                                               ; preds = %6
  %22 = call i32 @msleep(i32 2)
  %23 = load i32, i32* @REG_GLOBAL, align 4
  %24 = call i32 @REG_WRITE(i32 %23, i32 4, i32 50176)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %37, %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 1000
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* @REG_GLOBAL, align 4
  %30 = call i32 @REG_READ(i32 %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 51200
  %33 = icmp eq i32 %32, 51200
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %40

35:                                               ; preds = %28
  %36 = call i32 @msleep(i32 1)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %25

40:                                               ; preds = %34, %25
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 1000
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @REG_READ(i32, i32) #1

declare dso_local i32 @REG_PORT(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
