; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_out.c_x25_send_iframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_out.c_x25_send_iframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.x25_sock = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@X25_EXT_M_BIT = common dso_local global i32 0, align 4
@X25_STD_M_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @x25_send_iframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_send_iframe(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.x25_sock* @x25_sk(%struct.sock* %6)
  store %struct.x25_sock* %7, %struct.x25_sock** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %82

11:                                               ; preds = %2
  %12 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %13 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %20 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 1
  %23 = and i32 %22, 254
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @X25_EXT_M_BIT, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %36 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 1
  %39 = and i32 %38, 254
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  br label %76

46:                                               ; preds = %11
  %47 = load i32, i32* @X25_STD_M_BIT, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %55 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 1
  %58 = and i32 %57, 14
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %66 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 5
  %69 = and i32 %68, 224
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %46, %18
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %79 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = call i32 @x25_transmit_link(%struct.sk_buff* %77, %struct.TYPE_2__* %80)
  br label %82

82:                                               ; preds = %76, %10
  ret void
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_transmit_link(%struct.sk_buff*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
