; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_cookie.c___fscache_wait_on_invalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_cookie.c___fscache_wait_on_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@FSCACHE_COOKIE_INVALIDATING = common dso_local global i32 0, align 4
@fscache_wait_bit_interruptible = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fscache_wait_on_invalidate(%struct.fscache_cookie* %0) #0 {
  %2 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %2, align 8
  %3 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %4 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.fscache_cookie* %3)
  %5 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %6 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %5, i32 0, i32 0
  %7 = load i32, i32* @FSCACHE_COOKIE_INVALIDATING, align 4
  %8 = load i32, i32* @fscache_wait_bit_interruptible, align 4
  %9 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %10 = call i32 @wait_on_bit(i32* %6, i32 %7, i32 %8, i32 %9)
  %11 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.fscache_cookie*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
