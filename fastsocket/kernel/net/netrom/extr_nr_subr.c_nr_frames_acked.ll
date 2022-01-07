; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_subr.c_nr_frames_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_subr.c_nr_frames_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.nr_sock = type { i16, i32 }
%struct.sk_buff = type { i32 }

@NR_MODULUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_frames_acked(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.nr_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.nr_sock* @nr_sk(%struct.sock* %7)
  store %struct.nr_sock* %8, %struct.nr_sock** %5, align 8
  %9 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %10 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %9, i32 0, i32 0
  %11 = load i16, i16* %10, align 4
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* %4, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %32, %16
  %18 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %19 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %18, i32 0, i32 1
  %20 = call i32* @skb_peek(i32* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %24 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 4
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %4, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %26, %28
  br label %30

30:                                               ; preds = %22, %17
  %31 = phi i1 [ false, %17 ], [ %29, %22 ]
  br i1 %31, label %32, label %48

32:                                               ; preds = %30
  %33 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %34 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %33, i32 0, i32 1
  %35 = call %struct.sk_buff* @skb_dequeue(i32* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @kfree_skb(%struct.sk_buff* %36)
  %38 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %39 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 4
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* @NR_MODULUS, align 4
  %44 = srem i32 %42, %43
  %45 = trunc i32 %44 to i16
  %46 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %47 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %46, i32 0, i32 0
  store i16 %45, i16* %47, align 4
  br label %17

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %2
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
