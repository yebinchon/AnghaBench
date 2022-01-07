; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_out.c_nr_enquiry_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_out.c_nr_enquiry_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.nr_sock = type { i32, i32, i32, i32 }

@NR_INFOACK = common dso_local global i32 0, align 4
@NR_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@NR_CHOKE_FLAG = common dso_local global i32 0, align 4
@NR_NAK_FLAG = common dso_local global i32 0, align 4
@NR_COND_ACK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_enquiry_response(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.nr_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.nr_sock* @nr_sk(%struct.sock* %5)
  store %struct.nr_sock* %6, %struct.nr_sock** %3, align 8
  %7 = load i32, i32* @NR_INFOACK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %9 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NR_COND_OWN_RX_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @NR_CHOKE_FLAG, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %20 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %19, i32 0, i32 3
  %21 = call i32* @skb_peek(i32* %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @NR_NAK_FLAG, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %14
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @nr_write_internal(%struct.sock* %29, i32 %30)
  %32 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %33 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %36 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @NR_COND_ACK_PENDING, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.nr_sock*, %struct.nr_sock** %3, align 8
  %40 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
