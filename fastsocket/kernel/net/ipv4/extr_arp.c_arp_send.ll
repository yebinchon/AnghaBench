; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_arp.c_arp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@IFF_NOARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arp_send(i32 %0, i32 %1, i32 %2, %struct.net_device* %3, i32 %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.net_device* %3, %struct.net_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %12, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_NOARP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  br label %41

25:                                               ; preds = %8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.net_device*, %struct.net_device** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = call %struct.sk_buff* @arp_create(i32 %26, i32 %27, i32 %28, %struct.net_device* %29, i32 %30, i8* %31, i8* %32, i8* %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %17, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %36 = icmp eq %struct.sk_buff* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %41

38:                                               ; preds = %25
  %39 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %40 = call i32 @arp_xmit(%struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %38, %37, %24
  ret void
}

declare dso_local %struct.sk_buff* @arp_create(i32, i32, i32, %struct.net_device*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @arp_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
