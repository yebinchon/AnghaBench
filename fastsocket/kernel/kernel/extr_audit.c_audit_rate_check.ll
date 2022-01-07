; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_rate_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_rate_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@audit_rate_check.last_check = internal global i64 0, align 8
@audit_rate_check.messages = internal global i32 0, align 4
@audit_rate_check.lock = internal global i32 0, align 4
@audit_rate_limit = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @audit_rate_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_rate_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @audit_rate_limit, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %32

9:                                                ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @audit_rate_check.lock, i64 %10)
  %12 = load i32, i32* @audit_rate_check.messages, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @audit_rate_check.messages, align 4
  %14 = load i32, i32* @audit_rate_limit, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %28

17:                                               ; preds = %9
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @audit_rate_check.last_check, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @HZ, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* %3, align 8
  store i64 %26, i64* @audit_rate_check.last_check, align 8
  store i32 0, i32* @audit_rate_check.messages, align 4
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %17
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @audit_rate_check.lock, i64 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %28, %8
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
