; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_dev.c_nr_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_dev.c_nr_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8*, i32 }

@NR_NETWORK_LEN = common dso_local global i64 0, align 8
@NR_TRANSPORT_LEN = common dso_local global i64 0, align 8
@AX25_CBIT = common dso_local global i8 0, align 1
@AX25_EBIT = common dso_local global i8 0, align 1
@AX25_SSSID_SPARE = common dso_local global i8 0, align 1
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@sysctl_netrom_network_ttl_initialiser = common dso_local global i32 0, align 4
@NR_PROTO_IP = common dso_local global i8* null, align 8
@NR_PROTOEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @nr_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i64, i64* @NR_NETWORK_LEN, align 8
  %17 = load i64, i64* @NR_TRANSPORT_LEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i8* @skb_push(%struct.sk_buff* %15, i64 %18)
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i8*, i8** %12, align 8
  br label %29

25:                                               ; preds = %6
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i8* [ %24, %23 ], [ %28, %25 ]
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memcpy(i8* %20, i8* %30, i32 %33)
  %35 = load i8, i8* @AX25_CBIT, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, -1
  %38 = load i8*, i8** %14, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, %37
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  %44 = load i8, i8* @AX25_EBIT, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %45, -1
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, %46
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %48, align 1
  %53 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 6
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %54
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  %61 = load i32, i32* @AX25_ADDR_LEN, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %29
  %68 = load i8*, i8** %14, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @memcpy(i8* %68, i8* %69, i32 %72)
  br label %74

74:                                               ; preds = %67, %29
  %75 = load i8, i8* @AX25_CBIT, align 1
  %76 = zext i8 %75 to i32
  %77 = xor i32 %76, -1
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 6
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, %77
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load i8, i8* @AX25_EBIT, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 6
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %85
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  %92 = load i8, i8* @AX25_SSSID_SPARE, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 6
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, %93
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %95, align 1
  %100 = load i32, i32* @AX25_ADDR_LEN, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %14, align 8
  %104 = load i32, i32* @sysctl_netrom_network_ttl_initialiser, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %14, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %14, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i8*, i8** @NR_PROTO_IP, align 8
  %109 = ptrtoint i8* %108 to i8
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %14, align 8
  store i8 %109, i8* %110, align 1
  %112 = load i8*, i8** @NR_PROTO_IP, align 8
  %113 = ptrtoint i8* %112 to i8
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %14, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i8*, i8** %14, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %14, align 8
  store i8 0, i8* %116, align 1
  %118 = load i8*, i8** %14, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %14, align 8
  store i8 0, i8* %118, align 1
  %120 = load i32, i32* @NR_PROTOEXT, align 4
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %14, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %14, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i8*, i8** %11, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %74
  store i32 37, i32* %7, align 4
  br label %128

127:                                              ; preds = %74
  store i32 -37, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %126
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
