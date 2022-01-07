; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_subr.c_lapb_frames_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_subr.c_lapb_frames_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i16, i32 }
%struct.sk_buff = type { i32 }

@LAPB_EXTENDED = common dso_local global i32 0, align 4
@LAPB_EMODULUS = common dso_local global i32 0, align 4
@LAPB_SMODULUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_frames_acked(%struct.lapb_cb* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.lapb_cb*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.lapb_cb* %0, %struct.lapb_cb** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %8 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LAPB_EXTENDED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @LAPB_EMODULUS, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @LAPB_SMODULUS, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %6, align 4
  %19 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %20 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 4
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* %4, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %42, %26
  %28 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %29 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %28, i32 0, i32 2
  %30 = call i64 @skb_peek(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %34 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 4
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %4, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %36, %38
  br label %40

40:                                               ; preds = %32, %27
  %41 = phi i1 [ false, %27 ], [ %39, %32 ]
  br i1 %41, label %42, label %58

42:                                               ; preds = %40
  %43 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %44 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %43, i32 0, i32 2
  %45 = call %struct.sk_buff* @skb_dequeue(i32* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  %48 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %49 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %48, i32 0, i32 1
  %50 = load i16, i16* %49, align 4
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %6, align 4
  %54 = srem i32 %52, %53
  %55 = trunc i32 %54 to i16
  %56 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %57 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %56, i32 0, i32 1
  store i16 %55, i16* %57, align 4
  br label %27

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %17
  ret void
}

declare dso_local i64 @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
