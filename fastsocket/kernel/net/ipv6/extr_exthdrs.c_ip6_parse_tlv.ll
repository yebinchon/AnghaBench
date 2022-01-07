; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ip6_parse_tlv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ip6_parse_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlvtype_proc = type { i8, i32 (%struct.sk_buff*, i32)* }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlvtype_proc*, %struct.sk_buff.0*)* @ip6_parse_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_parse_tlv(%struct.tlvtype_proc* %0, %struct.sk_buff.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tlvtype_proc*, align 8
  %5 = alloca %struct.sk_buff.0*, align 8
  %6 = alloca %struct.tlvtype_proc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tlvtype_proc* %0, %struct.tlvtype_proc** %4, align 8
  store %struct.sk_buff.0* %1, %struct.sk_buff.0** %5, align 8
  %11 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %12 = call i8* @skb_network_header(%struct.sk_buff.0* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %14 = call i32 @skb_network_header_len(%struct.sk_buff.0* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %16 = call i32* @skb_transport_header(%struct.sk_buff.0* %15)
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = shl i32 %19, 3
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %22 = call i64 @skb_transport_offset(%struct.sk_buff.0* %21)
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %27 = call i64 @skb_headlen(%struct.sk_buff.0* %26)
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %121

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %109, %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %116

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  switch i32 %52, label %55 [
    i32 129, label %53
    i32 128, label %54
  ]

53:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %109

54:                                               ; preds = %38
  br label %109

55:                                               ; preds = %38
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %121

60:                                               ; preds = %55
  %61 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %4, align 8
  store %struct.tlvtype_proc* %61, %struct.tlvtype_proc** %6, align 8
  br label %62

62:                                               ; preds = %92, %60
  %63 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %6, align 8
  %64 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %63, i32 0, i32 0
  %65 = load i8, i8* %64, align 8
  %66 = zext i8 %65 to i32
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %62
  %69 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %6, align 8
  %70 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = zext i8 %71 to i32
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %72, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %68
  %81 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %6, align 8
  %82 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %81, i32 0, i32 1
  %83 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %82, align 8
  %84 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %85 = bitcast %struct.sk_buff.0* %84 to %struct.sk_buff*
  %86 = load i32, i32* %8, align 4
  %87 = call i32 %83(%struct.sk_buff* %85, i32 %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %124

90:                                               ; preds = %80
  br label %95

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %6, align 8
  %94 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %93, i32 1
  store %struct.tlvtype_proc* %94, %struct.tlvtype_proc** %6, align 8
  br label %62

95:                                               ; preds = %90, %62
  %96 = load %struct.tlvtype_proc*, %struct.tlvtype_proc** %6, align 8
  %97 = getelementptr inbounds %struct.tlvtype_proc, %struct.tlvtype_proc* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 8
  %99 = zext i8 %98 to i32
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @ip6_tlvopt_unknown(%struct.sk_buff.0* %102, i32 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %124

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %95
  br label %109

109:                                              ; preds = %108, %54, %53
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %35

116:                                              ; preds = %35
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %124

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %59, %29
  %122 = load %struct.sk_buff.0*, %struct.sk_buff.0** %5, align 8
  %123 = call i32 @kfree_skb(%struct.sk_buff.0* %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %119, %106, %89
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i8* @skb_network_header(%struct.sk_buff.0*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff.0*) #1

declare dso_local i32* @skb_transport_header(%struct.sk_buff.0*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff.0*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff.0*) #1

declare dso_local i32 @ip6_tlvopt_unknown(%struct.sk_buff.0*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
