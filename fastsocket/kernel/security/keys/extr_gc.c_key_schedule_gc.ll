; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_gc.c_key_schedule_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_gc.c_key_schedule_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@KEY_GC_REAP_KEYTYPE = common dso_local global i32 0, align 4
@key_gc_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"IMMEDIATE\00", align 1
@key_gc_next_run = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"DEFERRED\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@key_gc_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_schedule_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i64 (...) @current_kernel_time()
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %4, align 8
  %12 = sub nsw i64 %10, %11
  %13 = call i32 @kenter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @KEY_GC_REAP_KEYTYPE, align 4
  %19 = call i64 @test_bit(i32 %18, i32* @key_gc_flags)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %1
  %22 = call i32 @kdebug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (...) @key_schedule_gc_work()
  br label %41

24:                                               ; preds = %17
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @key_gc_next_run, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = call i32 @kdebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i64, i64* %2, align 8
  store i64 %30, i64* @key_gc_next_run, align 8
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* %4, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* @HZ, align 8
  %36 = mul nsw i64 %34, %35
  %37 = add nsw i64 %31, %36
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @mod_timer(i32* @key_gc_timer, i64 %38)
  br label %40

40:                                               ; preds = %28, %24
  br label %41

41:                                               ; preds = %40, %21
  ret void
}

declare dso_local i64 @current_kernel_time(...) #1

declare dso_local i32 @kenter(i8*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kdebug(i8*) #1

declare dso_local i32 @key_schedule_gc_work(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
