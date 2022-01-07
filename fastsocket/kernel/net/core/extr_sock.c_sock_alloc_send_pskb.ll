; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sock_alloc_send_pskb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sock_alloc_send_pskb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sock = type { i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { i32, i64, %struct.page* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@__GFP_WAIT = common dso_local global i32 0, align 4
@__GFP_REPEAT = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock* %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @__GFP_WAIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* @__GFP_REPEAT, align 4
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %27, %5
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @sock_sndtimeo(%struct.sock* %32, i32 %33)
  store i64 %34, i64* %14, align 8
  br label %35

35:                                               ; preds = %31, %175
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = call i32 @sock_error(%struct.sock* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %187

41:                                               ; preds = %35
  %42 = load i32, i32* @EPIPE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %15, align 4
  %44 = load %struct.sock*, %struct.sock** %7, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SEND_SHUTDOWN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %187

51:                                               ; preds = %41
  %52 = load i32, i32* @EMSGSIZE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %15, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = add i64 %54, %57
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %187

66:                                               ; preds = %51
  %67 = load %struct.sock*, %struct.sock** %7, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 4
  %69 = call i64 @atomic_read(i32* %68)
  %70 = load %struct.sock*, %struct.sock** %7, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %152

74:                                               ; preds = %66
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call %struct.sk_buff* @alloc_skb(i64 %75, i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %12, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %80, label %149

80:                                               ; preds = %74
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %179

84:                                               ; preds = %80
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %92 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %145, %84
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %148

98:                                               ; preds = %94
  %99 = load %struct.sock*, %struct.sock** %7, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call %struct.page* @alloc_pages(i32 %101, i32 0)
  store %struct.page* %102, %struct.page** %18, align 8
  %103 = load %struct.page*, %struct.page** %18, align 8
  %104 = icmp ne %struct.page* %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOBUFS, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %110 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %113 = call i32 @kfree_skb(%struct.sk_buff* %112)
  br label %187

114:                                              ; preds = %98
  %115 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %116 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %115)
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %19, align 8
  %122 = load %struct.page*, %struct.page** %18, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store %struct.page* %122, %struct.page** %124, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp uge i64 %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %114
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = sext i32 %132 to i64
  br label %136

134:                                              ; preds = %114
  %135 = load i64, i64* %9, align 8
  br label %136

136:                                              ; preds = %134, %131
  %137 = phi i64 [ %133, %131 ], [ %135, %134 ]
  %138 = trunc i64 %137 to i32
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %9, align 8
  %144 = sub i64 %143, %142
  store i64 %144, i64* %9, align 8
  br label %145

145:                                              ; preds = %136
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %94

148:                                              ; preds = %94
  br label %179

149:                                              ; preds = %74
  %150 = load i32, i32* @ENOBUFS, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %15, align 4
  br label %187

152:                                              ; preds = %66
  %153 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %154 = load %struct.sock*, %struct.sock** %7, align 8
  %155 = getelementptr inbounds %struct.sock, %struct.sock* %154, i32 0, i32 3
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = call i32 @set_bit(i32 %153, i32* %157)
  %159 = load i32, i32* @SOCK_NOSPACE, align 4
  %160 = load %struct.sock*, %struct.sock** %7, align 8
  %161 = getelementptr inbounds %struct.sock, %struct.sock* %160, i32 0, i32 3
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = call i32 @set_bit(i32 %159, i32* %163)
  %165 = load i32, i32* @EAGAIN, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %15, align 4
  %167 = load i64, i64* %14, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %152
  br label %187

170:                                              ; preds = %152
  %171 = load i32, i32* @current, align 4
  %172 = call i64 @signal_pending(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %184

175:                                              ; preds = %170
  %176 = load %struct.sock*, %struct.sock** %7, align 8
  %177 = load i64, i64* %14, align 8
  %178 = call i64 @sock_wait_for_wmem(%struct.sock* %176, i64 %177)
  store i64 %178, i64* %14, align 8
  br label %35

179:                                              ; preds = %148, %83
  %180 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %181 = load %struct.sock*, %struct.sock** %7, align 8
  %182 = call i32 @skb_set_owner_w(%struct.sk_buff* %180, %struct.sock* %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %183, %struct.sk_buff** %6, align 8
  br label %190

184:                                              ; preds = %174
  %185 = load i64, i64* %14, align 8
  %186 = call i32 @sock_intr_errno(i64 %185)
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %184, %169, %149, %105, %65, %50, %40
  %188 = load i32, i32* %15, align 4
  %189 = load i32*, i32** %11, align 8
  store i32 %188, i32* %189, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %190

190:                                              ; preds = %187, %179
  %191 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %191
}

declare dso_local i64 @sock_sndtimeo(%struct.sock*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @sock_wait_for_wmem(%struct.sock*, i64) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
