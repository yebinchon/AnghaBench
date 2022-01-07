; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_link.c_x25_transmit_restart_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_link.c_x25_transmit_restart_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_neigh = type { i64 }
%struct.sk_buff = type { i32* }

@X25_MAX_L2_LEN = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@X25_GFI_EXTSEQ = common dso_local global i32 0, align 4
@X25_GFI_STDSEQ = common dso_local global i32 0, align 4
@X25_RESTART_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x25_neigh*)* @x25_transmit_restart_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_transmit_restart_request(%struct.x25_neigh* %0) #0 {
  %2 = alloca %struct.x25_neigh*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.x25_neigh* %0, %struct.x25_neigh** %2, align 8
  %6 = load i32, i32* @X25_MAX_L2_LEN, align 4
  %7 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %8 = add nsw i32 %6, %7
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sk_buff* @alloc_skb(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @X25_MAX_L2_LEN, align 4
  %19 = call i32 @skb_reserve(%struct.sk_buff* %17, i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i8* @skb_put(%struct.sk_buff* %20, i32 %22)
  store i8* %23, i8** %3, align 8
  %24 = load %struct.x25_neigh*, %struct.x25_neigh** %2, align 8
  %25 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @X25_GFI_EXTSEQ, align 4
  br label %32

30:                                               ; preds = %16
  %31 = load i32, i32* @X25_GFI_STDSEQ, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  store i8 %34, i8* %35, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  store i8 0, i8* %37, align 1
  %39 = load i32, i32* @X25_RESTART_REQUEST, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  store i8 %40, i8* %41, align 1
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  store i8 0, i8* %43, align 1
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  store i8 0, i8* %45, align 1
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.x25_neigh*, %struct.x25_neigh** %2, align 8
  %51 = call i32 @x25_send_frame(%struct.sk_buff* %49, %struct.x25_neigh* %50)
  br label %52

52:                                               ; preds = %32, %15
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
