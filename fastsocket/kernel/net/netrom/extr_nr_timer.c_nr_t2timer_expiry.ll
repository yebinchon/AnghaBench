; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_t2timer_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_t2timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.nr_sock = type { i32 }

@NR_COND_ACK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nr_t2timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_t2timer_expiry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.nr_sock*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sock*
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.nr_sock* @nr_sk(%struct.sock* %7)
  store %struct.nr_sock* %8, %struct.nr_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %12 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NR_COND_ACK_PENDING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @NR_COND_ACK_PENDING, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %21 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @nr_enquiry_response(%struct.sock* %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @bh_unlock_sock(%struct.sock* %27)
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @nr_enquiry_response(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
