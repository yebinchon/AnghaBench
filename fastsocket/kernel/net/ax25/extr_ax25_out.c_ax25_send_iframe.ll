; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_out.c_ax25_send_iframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_out.c_ax25_send_iframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@AX25_MODULUS = common dso_local global i64 0, align 8
@AX25_I = common dso_local global i8 0, align 1
@AX25_PF = common dso_local global i8 0, align 1
@AX25_EPF = common dso_local global i8 0, align 1
@AX25_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.sk_buff*, i32)* @ax25_send_iframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax25_send_iframe(%struct.TYPE_5__* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = icmp eq %struct.sk_buff* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %99

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @skb_reset_network_header(%struct.sk_buff* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AX25_MODULUS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %11
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i8* @skb_push(%struct.sk_buff* %20, i32 1)
  store i8* %21, i8** %7, align 8
  %22 = load i8, i8* @AX25_I, align 1
  %23 = load i8*, i8** %7, align 8
  store i8 %22, i8* %23, align 1
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8, i8* @AX25_PF, align 1
  %28 = zext i8 %27 to i32
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %31
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %39, 5
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %40
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 1
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %49
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  br label %92

55:                                               ; preds = %11
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i8* @skb_push(%struct.sk_buff* %56, i32 2)
  store i8* %57, i8** %7, align 8
  %58 = load i8, i8* @AX25_I, align 1
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %58, i8* %60, align 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 1
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, %64
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = load i8, i8* @AX25_EPF, align 1
  %75 = zext i8 %74 to i32
  br label %77

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 0, %76 ]
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8 %79, i8* %81, align 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 1
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %85
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  br label %92

92:                                               ; preds = %77, %30
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = call i32 @ax25_start_idletimer(%struct.TYPE_5__* %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i32, i32* @AX25_COMMAND, align 4
  %98 = call i32 @ax25_transmit_buffer(%struct.TYPE_5__* %95, %struct.sk_buff* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %10
  ret void
}

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ax25_start_idletimer(%struct.TYPE_5__*) #1

declare dso_local i32 @ax25_transmit_buffer(%struct.TYPE_5__*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
