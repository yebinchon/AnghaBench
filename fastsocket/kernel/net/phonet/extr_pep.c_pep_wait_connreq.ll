; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_wait_connreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_wait_connreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.sock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pep_sock = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@wait = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @pep_wait_connreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_wait_connreq(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pep_sock*, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.pep_sock* @pep_sk(%struct.sock* %10)
  store %struct.pep_sock* %11, %struct.pep_sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @sock_rcvtimeo(%struct.sock* %12, i32 %13)
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* @wait, align 4
  %17 = call i32 @DEFINE_WAIT(i32 %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_LISTEN, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %15
  %27 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %28 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %27, i32 0, i32 0
  %29 = call i32 @hlist_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %63

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @EWOULDBLOCK, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %32
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = call i64 @signal_pending(%struct.task_struct* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @sock_intr_errno(i64 %43)
  store i32 %44, i32* %3, align 4
  br label %64

45:                                               ; preds = %38
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %51 = call i32 @prepare_to_wait_exclusive(i32* %49, i32* @wait, i32 %50)
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = call i32 @release_sock(%struct.sock* %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @schedule_timeout(i64 %54)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = call i32 @lock_sock(%struct.sock* %56)
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @finish_wait(i32* %61, i32* @wait)
  br label %15

63:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %42, %35, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i64 @signal_pending(%struct.task_struct*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
