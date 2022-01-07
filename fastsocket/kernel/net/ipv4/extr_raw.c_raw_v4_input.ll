; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_v4_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_raw.c_raw_v4_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.sock = type { i32 }
%struct.net = type { i32 }

@raw_v4_hashinfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.iphdr*, i32)* @raw_v4_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_v4_input(%struct.sk_buff* %0, %struct.iphdr* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.hlist_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.iphdr* %1, %struct.iphdr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 @read_lock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 0))
  %13 = load %struct.hlist_head*, %struct.hlist_head** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 1), align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %13, i64 %15
  store %struct.hlist_head* %16, %struct.hlist_head** %8, align 8
  %17 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %18 = call i64 @hlist_empty(%struct.hlist_head* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %89

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call %struct.net* @dev_net(%struct.TYPE_4__* %24)
  store %struct.net* %25, %struct.net** %10, align 8
  %26 = load %struct.net*, %struct.net** %10, align 8
  %27 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %28 = call i32 @__sk_head(%struct.hlist_head* %27)
  %29 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.sock* @__raw_v4_lookup(%struct.net* %26, i32 %28, i32 %31, i32 %34, i32 %37, i32 %42)
  store %struct.sock* %43, %struct.sock** %7, align 8
  br label %44

44:                                               ; preds = %69, %21
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = icmp ne %struct.sock* %45, null
  br i1 %46, label %47, label %88

47:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  %48 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IPPROTO_ICMP, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @icmp_filter(%struct.sock* %54, %struct.sk_buff* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %11, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.sock*, %struct.sock** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = call i32 @raw_rcv(%struct.sock* %65, %struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %53
  %70 = load %struct.net*, %struct.net** %10, align 8
  %71 = load %struct.sock*, %struct.sock** %7, align 8
  %72 = call i32 @sk_next(%struct.sock* %71)
  %73 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %77 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.sock* @__raw_v4_lookup(%struct.net* %70, i32 %72, i32 %75, i32 %78, i32 %81, i32 %86)
  store %struct.sock* %87, %struct.sock** %7, align 8
  br label %44

88:                                               ; preds = %44
  br label %89

89:                                               ; preds = %88, %20
  %90 = call i32 @read_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 0))
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @hlist_empty(%struct.hlist_head*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_4__*) #1

declare dso_local %struct.sock* @__raw_v4_lookup(%struct.net*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__sk_head(%struct.hlist_head*) #1

declare dso_local i32 @icmp_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @raw_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_next(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
