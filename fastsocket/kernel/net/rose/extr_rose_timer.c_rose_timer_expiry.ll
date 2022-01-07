; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_timer_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_timer.c_rose_timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rose_sock = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ROSE_CLEAR_REQUEST = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ROSE_COND_ACK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rose_timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_timer_expiry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rose_sock*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sock*
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.rose_sock* @rose_sk(%struct.sock* %7)
  store %struct.rose_sock* %8, %struct.rose_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %12 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %49 [
    i32 131, label %14
    i32 128, label %14
    i32 130, label %22
    i32 129, label %32
  ]

14:                                               ; preds = %1, %1
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load i32, i32* @ROSE_CLEAR_REQUEST, align 4
  %17 = call i32 @rose_write_internal(%struct.sock* %15, i32 %16)
  %18 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %19 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %18, i32 0, i32 0
  store i32 130, i32* %19, align 8
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i32 @rose_start_t3timer(%struct.sock* %20)
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %24 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = call i32 @rose_disconnect(%struct.sock* %29, i32 %30, i32 -1, i32 -1)
  br label %49

32:                                               ; preds = %1
  %33 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %34 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ROSE_COND_ACK_PENDING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load i32, i32* @ROSE_COND_ACK_PENDING, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %43 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = call i32 @rose_enquiry_response(%struct.sock* %46)
  br label %48

48:                                               ; preds = %39, %32
  br label %49

49:                                               ; preds = %1, %48, %22, %14
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = call i32 @bh_unlock_sock(%struct.sock* %50)
  ret void
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_start_t3timer(%struct.sock*) #1

declare dso_local i32 @rose_disconnect(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @rose_enquiry_response(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
