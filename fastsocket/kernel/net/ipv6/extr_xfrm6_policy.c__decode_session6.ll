; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_policy.c__decode_session6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_policy.c__decode_session6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.flowi = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.ipv6_opt_hdr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.flowi*, i32)* @_decode_session6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_decode_session6(%struct.sk_buff* %0, %struct.flowi* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.flowi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipv6hdr*, align 8
  %10 = alloca %struct.ipv6_opt_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.flowi* %1, %struct.flowi** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_network_header_len(%struct.sk_buff* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %17)
  store %struct.ipv6hdr* %18, %struct.ipv6hdr** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i8* @skb_network_header(%struct.sk_buff* %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_2__* @IP6CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load %struct.flowi*, %struct.flowi** %5, align 8
  %30 = call i32 @memset(%struct.flowi* %29, i32 0, i32 48)
  %31 = load %struct.flowi*, %struct.flowi** %5, align 8
  %32 = getelementptr inbounds %struct.flowi, %struct.flowi* %31, i32 0, i32 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %37 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %36, i32 0, i32 0
  br label %41

38:                                               ; preds = %3
  %39 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %40 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %39, i32 0, i32 1
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32* [ %37, %35 ], [ %40, %38 ]
  %43 = call i32 @ipv6_addr_copy(i32* %32, i32* %42)
  %44 = load %struct.flowi*, %struct.flowi** %5, align 8
  %45 = getelementptr inbounds %struct.flowi, %struct.flowi* %44, i32 0, i32 7
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %50 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %49, i32 0, i32 1
  br label %54

51:                                               ; preds = %41
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 0
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32* [ %50, %48 ], [ %53, %51 ]
  %56 = call i32 @ipv6_addr_copy(i32* %45, i32* %55)
  br label %57

57:                                               ; preds = %208, %54
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ult i8* %62, %65
  br i1 %66, label %83, label %67

67:                                               ; preds = %57
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %73 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i64 @pskb_may_pull(%struct.sk_buff* %68, i32 %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %67, %57
  %84 = phi i1 [ true, %57 ], [ %82, %67 ]
  br i1 %84, label %85, label %209

85:                                               ; preds = %83
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i8* @skb_network_header(%struct.sk_buff* %86)
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = bitcast i8* %91 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %92, %struct.ipv6_opt_hdr** %10, align 8
  %93 = load i32, i32* %12, align 4
  switch i32 %93, label %202 [
    i32 130, label %94
    i32 128, label %95
    i32 129, label %95
    i32 131, label %95
    i32 133, label %108
    i32 132, label %108
    i32 134, label %108
    i32 135, label %108
    i32 139, label %108
    i32 137, label %165
    i32 141, label %201
    i32 138, label %201
    i32 140, label %201
  ]

94:                                               ; preds = %85
  store i32 1, i32* %7, align 4
  br label %95

95:                                               ; preds = %85, %85, %85, %94
  %96 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %97 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %96)
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %101 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = bitcast i8* %106 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %107, %struct.ipv6_opt_hdr** %10, align 8
  br label %208

108:                                              ; preds = %85, %85, %85, %85, %85
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %161, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ult i8* %116, %119
  br i1 %120, label %137, label %121

121:                                              ; preds = %111
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = ptrtoint i8* %127 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i64 @pskb_may_pull(%struct.sk_buff* %122, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %121, %111
  %138 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %139 = bitcast %struct.ipv6_opt_hdr* %138 to i8**
  store i8** %139, i8*** %13, align 8
  %140 = load i8**, i8*** %13, align 8
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %140, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.flowi*, %struct.flowi** %5, align 8
  %150 = getelementptr inbounds %struct.flowi, %struct.flowi* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  %151 = load i8**, i8*** %13, align 8
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %151, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.flowi*, %struct.flowi** %5, align 8
  %160 = getelementptr inbounds %struct.flowi, %struct.flowi* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %137, %121, %108
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.flowi*, %struct.flowi** %5, align 8
  %164 = getelementptr inbounds %struct.flowi, %struct.flowi* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %209

165:                                              ; preds = %85
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %197, label %168

168:                                              ; preds = %165
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %174 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  %182 = call i64 @pskb_may_pull(%struct.sk_buff* %169, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %168
  %185 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  %186 = bitcast %struct.ipv6_opt_hdr* %185 to i32*
  store i32* %186, i32** %14, align 8
  %187 = load i32*, i32** %14, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.flowi*, %struct.flowi** %5, align 8
  %191 = getelementptr inbounds %struct.flowi, %struct.flowi* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load i32*, i32** %14, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.flowi*, %struct.flowi** %5, align 8
  %196 = getelementptr inbounds %struct.flowi, %struct.flowi* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %184, %168, %165
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.flowi*, %struct.flowi** %5, align 8
  %200 = getelementptr inbounds %struct.flowi, %struct.flowi* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  br label %209

201:                                              ; preds = %85, %85, %85
  br label %202

202:                                              ; preds = %85, %201
  %203 = load %struct.flowi*, %struct.flowi** %5, align 8
  %204 = getelementptr inbounds %struct.flowi, %struct.flowi* %203, i32 0, i32 3
  store i32 0, i32* %204, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.flowi*, %struct.flowi** %5, align 8
  %207 = getelementptr inbounds %struct.flowi, %struct.flowi* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  br label %209

208:                                              ; preds = %95
  br label %57

209:                                              ; preds = %161, %197, %202, %83
  ret void
}

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
