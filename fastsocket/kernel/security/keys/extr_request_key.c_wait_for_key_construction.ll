; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_wait_for_key_construction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_wait_for_key_construction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64* }

@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4
@key_wait_bit_intr = common dso_local global i32 0, align 4
@key_wait_bit = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@KEY_FLAG_NEGATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_key_construction(%struct.key* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.key*, %struct.key** %4, align 8
  %8 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 1
  %9 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @key_wait_bit_intr, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @key_wait_bit, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @wait_on_bit(i32* %8, i32 %9, i32 %17, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %24
  %32 = load i32, i32* @KEY_FLAG_NEGATIVE, align 4
  %33 = load %struct.key*, %struct.key** %4, align 8
  %34 = getelementptr inbounds %struct.key, %struct.key* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = call i32 (...) @smp_rmb()
  %39 = load %struct.key*, %struct.key** %4, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %31
  %47 = load %struct.key*, %struct.key** %4, align 8
  %48 = call i32 @key_validate(%struct.key* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %37, %29
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @key_validate(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
