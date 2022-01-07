; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_hippi.c_hippi_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_hippi.c_hippi_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i8* }
%struct.hippi_hdr = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i64*, i32, i64*, i64, i64, i64 }
%struct.TYPE_5__ = type { i32*, i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.hippi_cb = type { i64 }

@HIPPI_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"hippi_header(): length not supplied\0A\00", align 1
@HIPPI_EXTENDED_SAP = common dso_local global i8* null, align 8
@HIPPI_UI_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @hippi_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hippi_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hippi_hdr*, align 8
  %15 = alloca %struct.hippi_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* @HIPPI_HLEN, align 4
  %18 = call i64 @skb_push(%struct.sk_buff* %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.hippi_hdr*
  store %struct.hippi_hdr* %19, %struct.hippi_hdr** %14, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.hippi_cb*
  store %struct.hippi_cb* %23, %struct.hippi_cb** %15, align 8
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @HIPPI_HLEN, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %26, %6
  %34 = call i8* @htonl(i32 75497496)
  %35 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %36 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = add i32 %38, 8
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %42 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %45 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %48 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %51 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %54 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 2, i32* %55, align 8
  %56 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %57 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 2, i32* %58, align 4
  %59 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %60 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %9, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr i8, i8* %65, i64 3
  %67 = call i32 @memcpy(i64* %62, i8* %66, i32 3)
  %68 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %69 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = call i32 @memset(i32* %70, i32 0, i32 16)
  %72 = load i8*, i8** @HIPPI_EXTENDED_SAP, align 8
  %73 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %74 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  store i8* %72, i8** %75, align 8
  %76 = load i8*, i8** @HIPPI_EXTENDED_SAP, align 8
  %77 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %78 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* @HIPPI_UI_CMD, align 4
  %81 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %82 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %85 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 0, i32* %88, align 4
  %89 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %90 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %95 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 0, i32* %98, align 4
  %99 = load i16, i16* %10, align 2
  %100 = call i32 @htons(i16 zeroext %99)
  %101 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %102 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %120

106:                                              ; preds = %33
  %107 = load %struct.hippi_hdr*, %struct.hippi_hdr** %14, align 8
  %108 = getelementptr inbounds %struct.hippi_hdr, %struct.hippi_hdr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr i8, i8* %111, i64 3
  %113 = call i32 @memcpy(i64* %110, i8* %112, i32 3)
  %114 = load %struct.hippi_cb*, %struct.hippi_cb** %15, align 8
  %115 = getelementptr inbounds %struct.hippi_cb, %struct.hippi_cb* %114, i32 0, i32 0
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr i8, i8* %116, i64 2
  %118 = call i32 @memcpy(i64* %115, i8* %117, i32 4)
  %119 = load i32, i32* @HIPPI_HLEN, align 4
  store i32 %119, i32* %7, align 4
  br label %125

120:                                              ; preds = %33
  %121 = load %struct.hippi_cb*, %struct.hippi_cb** %15, align 8
  %122 = getelementptr inbounds %struct.hippi_cb, %struct.hippi_cb* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @HIPPI_HLEN, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %120, %106
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
