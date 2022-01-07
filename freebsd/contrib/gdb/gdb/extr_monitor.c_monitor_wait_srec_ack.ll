; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_wait_srec_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_wait_srec_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_monitor = common dso_local global %struct.TYPE_2__* null, align 8
@MO_SREC_ACK_PLUS = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@MO_SREC_ACK_ROTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @monitor_wait_srec_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_wait_srec_ack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MO_SREC_ACK_PLUS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @timeout, align 4
  %11 = call signext i8 @readchar(i32 %10)
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 43
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %1, align 4
  br label %45

15:                                               ; preds = %0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MO_SREC_ACK_ROTATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %15
  %23 = call signext i8 @readchar(i32 1)
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %2, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %45

27:                                               ; preds = %22
  %28 = call signext i8 @readchar(i32 1)
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %2, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %45

32:                                               ; preds = %27
  %33 = call signext i8 @readchar(i32 1)
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %2, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %45

37:                                               ; preds = %32
  %38 = call signext i8 @readchar(i32 1)
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %2, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %45

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %15
  br label %44

44:                                               ; preds = %43
  store i32 1, i32* %1, align 4
  br label %45

45:                                               ; preds = %44, %41, %36, %31, %26, %9
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local signext i8 @readchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
