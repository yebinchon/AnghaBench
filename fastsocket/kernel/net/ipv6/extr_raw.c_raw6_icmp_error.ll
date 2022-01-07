; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_raw6_icmp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_raw6_icmp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.sk_buff = type { i32, i64 }
%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { %struct.in6_addr, %struct.in6_addr }
%struct.TYPE_4__ = type { i32 }

@RAW_HTABLE_SIZE = common dso_local global i32 0, align 4
@raw_v6_hashinfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw6_icmp_error(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.in6_addr*, align 8
  %16 = alloca %struct.in6_addr*, align 8
  %17 = alloca %struct.net*, align 8
  %18 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @RAW_HTABLE_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  store i32 %22, i32* %14, align 4
  %23 = call i32 @read_lock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v6_hashinfo, i32 0, i32 0))
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v6_hashinfo, i32 0, i32 1), align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call %struct.sock* @sk_head(i32* %27)
  store %struct.sock* %28, %struct.sock** %13, align 8
  %29 = load %struct.sock*, %struct.sock** %13, align 8
  %30 = icmp ne %struct.sock* %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %6
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %35, %struct.ipv6hdr** %18, align 8
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %18, align 8
  %37 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %36, i32 0, i32 1
  store %struct.in6_addr* %37, %struct.in6_addr** %15, align 8
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %18, align 8
  %39 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %38, i32 0, i32 0
  store %struct.in6_addr* %39, %struct.in6_addr** %16, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.net* @dev_net(i32 %42)
  store %struct.net* %43, %struct.net** %17, align 8
  br label %44

44:                                               ; preds = %56, %31
  %45 = load %struct.net*, %struct.net** %17, align 8
  %46 = load %struct.sock*, %struct.sock** %13, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.in6_addr*, %struct.in6_addr** %15, align 8
  %49 = load %struct.in6_addr*, %struct.in6_addr** %16, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.sock* @__raw_v6_lookup(%struct.net* %45, %struct.sock* %46, i32 %47, %struct.in6_addr* %48, %struct.in6_addr* %49, i32 %53)
  store %struct.sock* %54, %struct.sock** %13, align 8
  %55 = icmp ne %struct.sock* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %44
  %57 = load %struct.sock*, %struct.sock** %13, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @rawv6_err(%struct.sock* %57, %struct.sk_buff* %58, i32* null, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.sock*, %struct.sock** %13, align 8
  %65 = call %struct.sock* @sk_next(%struct.sock* %64)
  store %struct.sock* %65, %struct.sock** %13, align 8
  br label %44

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66, %6
  %68 = call i32 @read_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v6_hashinfo, i32 0, i32 0))
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.sock* @sk_head(i32*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sock* @__raw_v6_lookup(%struct.net*, %struct.sock*, i32, %struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local %struct.TYPE_4__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @rawv6_err(%struct.sock*, %struct.sk_buff*, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.sock* @sk_next(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
