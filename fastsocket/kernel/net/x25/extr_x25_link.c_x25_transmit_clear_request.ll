; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_link.c_x25_transmit_clear_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_link.c_x25_transmit_clear_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_neigh = type { i64 }
%struct.sk_buff = type { i32* }

@X25_MAX_L2_LEN = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@X25_GFI_EXTSEQ = common dso_local global i32 0, align 4
@X25_GFI_STDSEQ = common dso_local global i32 0, align 4
@X25_CLEAR_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_transmit_clear_request(%struct.x25_neigh* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.x25_neigh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.x25_neigh* %0, %struct.x25_neigh** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %10 = load i32, i32* @X25_MAX_L2_LEN, align 4
  %11 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %12 = add nsw i32 %10, %11
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @alloc_skb(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %65

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = load i32, i32* @X25_MAX_L2_LEN, align 4
  %23 = call i32 @skb_reserve(%struct.sk_buff* %21, i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %26 = add nsw i32 %25, 2
  %27 = call i8* @skb_put(%struct.sk_buff* %24, i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = lshr i32 %28, 8
  %30 = and i32 %29, 15
  %31 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %32 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @X25_GFI_EXTSEQ, align 4
  br label %39

37:                                               ; preds = %20
  %38 = load i32, i32* @X25_GFI_STDSEQ, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = or i32 %30, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i32, i32* %5, align 4
  %46 = lshr i32 %45, 0
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i32, i32* @X25_CLEAR_REQUEST, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8, i8* %6, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  store i8 0, i8* %58, align 1
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %64 = call i32 @x25_send_frame(%struct.sk_buff* %62, %struct.x25_neigh* %63)
  br label %65

65:                                               ; preds = %39, %19
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
