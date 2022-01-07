; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_cookie.c___fscache_cookie_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_cookie.c___fscache_cookie_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32, i32, %struct.fscache_cookie* }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FREE COOKIE %p\00", align 1
@fscache_cookie_jar = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fscache_cookie_put(%struct.fscache_cookie* %0) #0 {
  %2 = alloca %struct.fscache_cookie*, align 8
  %3 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %2, align 8
  %4 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %5 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.fscache_cookie* %4)
  br label %6

6:                                                ; preds = %38, %1
  %7 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %8 = call i32 @_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.fscache_cookie* %7)
  %9 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %10 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %9, i32 0, i32 2
  %11 = load %struct.fscache_cookie*, %struct.fscache_cookie** %10, align 8
  store %struct.fscache_cookie* %11, %struct.fscache_cookie** %3, align 8
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %13 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %12, i32 0, i32 1
  %14 = call i32 @hlist_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* @fscache_cookie_jar, align 4
  %20 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %21 = call i32 @kmem_cache_free(i32 %19, %struct.fscache_cookie* %20)
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %23 = icmp ne %struct.fscache_cookie* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  br label %39

25:                                               ; preds = %6
  %26 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  store %struct.fscache_cookie* %26, %struct.fscache_cookie** %2, align 8
  %27 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %28 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %27, i32 0, i32 0
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp sle i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %34 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %33, i32 0, i32 0
  %35 = call i32 @atomic_dec_and_test(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  br label %39

38:                                               ; preds = %25
  br label %6

39:                                               ; preds = %37, %24
  %40 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.fscache_cookie*) #1

declare dso_local i32 @_debug(i8*, %struct.fscache_cookie*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fscache_cookie*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
