; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_queue_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_queue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*, i32)*, i64, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.sk_buff_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, %struct.sk_buff_head*)* @dn_queue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_queue_skb(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 2
  %13 = call i32 @atomic_read(i32* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %13, %16
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = icmp uge i32 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %55

26:                                               ; preds = %4
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @sk_filter(%struct.sock* %27, %struct.sk_buff* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %55

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = call i32 @skb_set_owner_r(%struct.sk_buff* %37, %struct.sock* %38)
  %40 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @skb_queue_tail(%struct.sk_buff_head* %40, %struct.sk_buff* %41)
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = load i32, i32* @SOCK_DEAD, align 4
  %45 = call i32 @sock_flag(%struct.sock* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %33
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 0
  %50 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %49, align 8
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 %50(%struct.sock* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %33
  br label %55

55:                                               ; preds = %54, %32, %23
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
