; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_link.c_x25_transmit_restart_confirmation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_link.c_x25_transmit_restart_confirmation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_neigh = type { i64 }
%struct.sk_buff = type { i32* }

@X25_MAX_L2_LEN = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@X25_GFI_EXTSEQ = common dso_local global i32 0, align 4
@X25_GFI_STDSEQ = common dso_local global i32 0, align 4
@X25_RESTART_CONFIRMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x25_neigh*)* @x25_transmit_restart_confirmation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_transmit_restart_confirmation(%struct.x25_neigh* %0) #0 {
  %2 = alloca %struct.x25_neigh*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.x25_neigh* %0, %struct.x25_neigh** %2, align 8
  %6 = load i32, i32* @X25_MAX_L2_LEN, align 4
  %7 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @alloc_skb(i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @X25_MAX_L2_LEN, align 4
  %18 = call i32 @skb_reserve(%struct.sk_buff* %16, i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %21 = call i8* @skb_put(%struct.sk_buff* %19, i32 %20)
  store i8* %21, i8** %3, align 8
  %22 = load %struct.x25_neigh*, %struct.x25_neigh** %2, align 8
  %23 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* @X25_GFI_EXTSEQ, align 4
  br label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @X25_GFI_STDSEQ, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  store i8 %32, i8* %33, align 1
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  store i8 0, i8* %35, align 1
  %37 = load i32, i32* @X25_RESTART_CONFIRMATION, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  store i8 %38, i8* %39, align 1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.x25_neigh*, %struct.x25_neigh** %2, align 8
  %45 = call i32 @x25_send_frame(%struct.sk_buff* %43, %struct.x25_neigh* %44)
  br label %46

46:                                               ; preds = %30, %14
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_send_frame(%struct.sk_buff*, %struct.x25_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
