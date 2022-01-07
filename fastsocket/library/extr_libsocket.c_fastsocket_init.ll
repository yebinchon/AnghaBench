; ModuleID = '/home/carl/AnghaBench/fastsocket/library/extr_libsocket.c_fastsocket_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/library/extr_libsocket.c_fastsocket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"/dev/fastsocket\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Open fastsocket channel failed, please CHECK\0A\00", align 1
@fsocket_channel_fd = common dso_local global i32 0, align 4
@INIT_FDSET_NUM = common dso_local global i32 0, align 4
@fsocket_fd_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Allocate memory for listen fd set failed\0A\00", align 1
@fsocket_fd_num = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Clear process CPU affinity failed\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @fastsocket_init, i8* null }]

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fastsocket_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @O_RDONLY, align 4
  %5 = call i32 @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @FSOCKET_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @exit(i32 -1) #3
  unreachable

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  store i32 %12, i32* @fsocket_channel_fd, align 4
  %13 = load i32, i32* @INIT_FDSET_NUM, align 4
  %14 = call i32 @calloc(i32 %13, i32 4)
  store i32 %14, i32* @fsocket_fd_set, align 4
  %15 = load i32, i32* @fsocket_fd_set, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = call i32 @FSOCKET_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @exit(i32 -1) #3
  unreachable

20:                                               ; preds = %11
  %21 = load i32, i32* @INIT_FDSET_NUM, align 4
  store i32 %21, i32* @fsocket_fd_num, align 4
  %22 = call i32 @CPU_ZERO(i32* %3)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %30, %20
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (...) @get_cpus()
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @CPU_SET(i32 %28, i32* %3)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %23

33:                                               ; preds = %23
  %34 = call i32 (...) @get_cpus()
  %35 = call i32 @sched_setaffinity(i32 0, i32 %34, i32* %3)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 @FSOCKET_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @exit(i32 -1) #3
  unreachable

41:                                               ; preds = %33
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @FSOCKET_ERR(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @get_cpus(...) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @sched_setaffinity(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
