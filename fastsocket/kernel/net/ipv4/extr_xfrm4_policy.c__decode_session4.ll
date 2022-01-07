; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c__decode_session4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c__decode_session4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8** }
%struct.flowi = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32 }

@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.flowi*, i32)* @_decode_session4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_decode_session4(%struct.sk_buff* %0, %struct.flowi* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.flowi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.flowi* %1, %struct.flowi** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i8** @skb_network_header(%struct.sk_buff* %16)
  %18 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %17, i64 %22
  store i8** %23, i8*** %8, align 8
  %24 = load %struct.flowi*, %struct.flowi** %5, align 8
  %25 = call i32 @memset(%struct.flowi* %24, i32 0, i32 56)
  %26 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IP_MF, align 4
  %30 = load i32, i32* @IP_OFFSET, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @htons(i32 %31)
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %183, label %35

35:                                               ; preds = %3
  %36 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %179 [
    i32 129, label %39
    i32 128, label %39
    i32 130, label %39
    i32 131, label %39
    i32 134, label %39
    i32 132, label %84
    i32 133, label %111
    i32 136, label %133
    i32 135, label %155
  ]

39:                                               ; preds = %35, %35, %35, %35, %35
  %40 = load i8**, i8*** %8, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = icmp ult i8** %41, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i8**, i8*** %8, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = ptrtoint i8** %49 to i64
  %54 = ptrtoint i8** %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 8
  %57 = inttoptr i64 %56 to i8**
  %58 = call i32 @pskb_may_pull(%struct.sk_buff* %47, i8** %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %46, %39
  %61 = load i8**, i8*** %8, align 8
  store i8** %61, i8*** %9, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %62, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.flowi*, %struct.flowi** %5, align 8
  %72 = getelementptr inbounds %struct.flowi, %struct.flowi* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = load i8**, i8*** %9, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %73, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.flowi*, %struct.flowi** %5, align 8
  %82 = getelementptr inbounds %struct.flowi, %struct.flowi* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %60, %46
  br label %182

84:                                               ; preds = %35
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load i8**, i8*** %8, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 2
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = ptrtoint i8** %87 to i64
  %92 = ptrtoint i8** %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 8
  %95 = inttoptr i64 %94 to i8**
  %96 = call i32 @pskb_may_pull(%struct.sk_buff* %85, i8** %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %84
  %99 = load i8**, i8*** %8, align 8
  store i8** %99, i8*** %10, align 8
  %100 = load i8**, i8*** %10, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.flowi*, %struct.flowi** %5, align 8
  %104 = getelementptr inbounds %struct.flowi, %struct.flowi* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  %105 = load i8**, i8*** %10, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.flowi*, %struct.flowi** %5, align 8
  %109 = getelementptr inbounds %struct.flowi, %struct.flowi* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %98, %84
  br label %182

111:                                              ; preds = %35
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load i8**, i8*** %8, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = ptrtoint i8** %114 to i64
  %119 = ptrtoint i8** %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 8
  %122 = inttoptr i64 %121 to i8**
  %123 = call i32 @pskb_may_pull(%struct.sk_buff* %112, i8** %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %111
  %126 = load i8**, i8*** %8, align 8
  store i8** %126, i8*** %11, align 8
  %127 = load i8**, i8*** %11, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.flowi*, %struct.flowi** %5, align 8
  %131 = getelementptr inbounds %struct.flowi, %struct.flowi* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %125, %111
  br label %182

133:                                              ; preds = %35
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load i8**, i8*** %8, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i8**, i8*** %138, align 8
  %140 = ptrtoint i8** %136 to i64
  %141 = ptrtoint i8** %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 8
  %144 = inttoptr i64 %143 to i8**
  %145 = call i32 @pskb_may_pull(%struct.sk_buff* %134, i8** %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %133
  %148 = load i8**, i8*** %8, align 8
  store i8** %148, i8*** %12, align 8
  %149 = load i8**, i8*** %12, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.flowi*, %struct.flowi** %5, align 8
  %153 = getelementptr inbounds %struct.flowi, %struct.flowi* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %147, %133
  br label %182

155:                                              ; preds = %35
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = load i8**, i8*** %8, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = ptrtoint i8** %158 to i64
  %163 = ptrtoint i8** %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 8
  %166 = inttoptr i64 %165 to i8**
  %167 = call i32 @pskb_may_pull(%struct.sk_buff* %156, i8** %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %155
  %170 = load i8**, i8*** %8, align 8
  store i8** %170, i8*** %13, align 8
  %171 = load i8**, i8*** %13, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @ntohs(i8* %173)
  %175 = call i8* @htonl(i32 %174)
  %176 = load %struct.flowi*, %struct.flowi** %5, align 8
  %177 = getelementptr inbounds %struct.flowi, %struct.flowi* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %169, %155
  br label %182

179:                                              ; preds = %35
  %180 = load %struct.flowi*, %struct.flowi** %5, align 8
  %181 = getelementptr inbounds %struct.flowi, %struct.flowi* %180, i32 0, i32 4
  store i8* null, i8** %181, align 8
  br label %182

182:                                              ; preds = %179, %178, %154, %132, %110, %83
  br label %183

183:                                              ; preds = %182, %3
  %184 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %185 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.flowi*, %struct.flowi** %5, align 8
  %188 = getelementptr inbounds %struct.flowi, %struct.flowi* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %183
  %192 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %193 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  br label %199

195:                                              ; preds = %183
  %196 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %197 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  br label %199

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %194, %191 ], [ %198, %195 ]
  %201 = load %struct.flowi*, %struct.flowi** %5, align 8
  %202 = getelementptr inbounds %struct.flowi, %struct.flowi* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %207 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  br label %213

209:                                              ; preds = %199
  %210 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %211 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  br label %213

213:                                              ; preds = %209, %205
  %214 = phi i32 [ %208, %205 ], [ %212, %209 ]
  %215 = load %struct.flowi*, %struct.flowi** %5, align 8
  %216 = getelementptr inbounds %struct.flowi, %struct.flowi* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.flowi*, %struct.flowi** %5, align 8
  %221 = getelementptr inbounds %struct.flowi, %struct.flowi* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  ret void
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8** @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i8**) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @ntohs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
