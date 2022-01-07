; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c_fscache_wait_for_deferred_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c_fscache_wait_for_deferred_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FSCACHE_COOKIE_LOOKING_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = 0 [imm]\00", align 1
@fscache_n_retrievals_wait = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@fscache_wait_bit_interruptible = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@fscache_n_retrievals_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c" = -ERESTARTSYS\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@fscache_retrieval_delay_histogram = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" = 0 [dly]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscache_cookie*)* @fscache_wait_for_deferred_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscache_wait_for_deferred_lookup(%struct.fscache_cookie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fscache_cookie*, align 8
  %4 = alloca i64, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %3, align 8
  %5 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @FSCACHE_COOKIE_LOOKING_UP, align 4
  %7 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %8 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %7, i32 0, i32 0
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = call i32 @fscache_stat(i32* @fscache_n_retrievals_wait)
  %15 = load i64, i64* @jiffies, align 8
  store i64 %15, i64* %4, align 8
  %16 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %17 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %16, i32 0, i32 0
  %18 = load i32, i32* @FSCACHE_COOKIE_LOOKING_UP, align 4
  %19 = load i32, i32* @fscache_wait_bit_interruptible, align 4
  %20 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %21 = call i64 @wait_on_bit(i32* %17, i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = call i32 @fscache_stat(i32* @fscache_n_retrievals_intr)
  %25 = call i32 @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ERESTARTSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %42

28:                                               ; preds = %13
  %29 = load i32, i32* @FSCACHE_COOKIE_LOOKING_UP, align 4
  %30 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %31 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %30, i32 0, i32 0
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = call i32 (...) @smp_rmb()
  %38 = load i32, i32* @fscache_retrieval_delay_histogram, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @fscache_hist(i32 %38, i64 %39)
  %41 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %28, %23, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i64 @wait_on_bit(i32*, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @fscache_hist(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
