; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_out.c_x25_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_out.c_x25_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.x25_sock = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@X25_EXT_MIN_LEN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"x25_output: fragment alloc failed, err=%d, %d bytes sent\0A\00", align 1
@X25_EXT_M_BIT = common dso_local global i32 0, align 4
@X25_STD_M_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_output(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.x25_sock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_6__* @X25_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MSG_DONTWAIT, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call %struct.x25_sock* @x25_sk(%struct.sock* %28)
  store %struct.x25_sock* %29, %struct.x25_sock** %14, align 8
  %30 = load %struct.x25_sock*, %struct.x25_sock** %14, align 8
  %31 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @X25_STD_MIN_LEN, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %15, align 4
  %42 = load %struct.x25_sock*, %struct.x25_sock** %14, align 8
  %43 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @x25_pacsize_to_bytes(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %165

54:                                               ; preds = %40
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %55, i8* %21, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @skb_pull(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @skb_headroom(%struct.sk_buff* %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %154, %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %162

68:                                               ; preds = %63
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %13, align 4
  %74 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %69, i32 %72, i32 %73, i32* %9)
  store %struct.sk_buff* %74, %struct.sk_buff** %6, align 8
  %75 = icmp eq %struct.sk_buff* %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @EWOULDBLOCK, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %177

88:                                               ; preds = %81, %76
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @SOCK_DEBUG(%struct.sock* %89, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %177

94:                                               ; preds = %68
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @skb_reserve(%struct.sk_buff* %95, i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  br label %109

107:                                              ; preds = %94
  %108 = load i32, i32* %16, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i32 [ %106, %103 ], [ %108, %107 ]
  store i32 %110, i32* %11, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i8* @skb_put(%struct.sk_buff* %112, i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %111, i8* %114, i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @skb_pull(%struct.sk_buff* %117, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @skb_push(%struct.sk_buff* %120, i32 %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %123, i8* %21, i32 %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %109
  %131 = load %struct.x25_sock*, %struct.x25_sock** %14, align 8
  %132 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load i32, i32* @X25_EXT_M_BIT, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %138
  store i32 %144, i32* %142, align 4
  br label %153

145:                                              ; preds = %130
  %146 = load i32, i32* @X25_STD_M_BIT, align 4
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %145, %137
  br label %154

154:                                              ; preds = %153, %109
  %155 = load %struct.sock*, %struct.sock** %4, align 8
  %156 = getelementptr inbounds %struct.sock, %struct.sock* %155, i32 0, i32 0
  %157 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %158 = call i32 @skb_queue_tail(i32* %156, %struct.sk_buff* %157)
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %12, align 4
  br label %63

162:                                              ; preds = %63
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = call i32 @kfree_skb(%struct.sk_buff* %163)
  br label %175

165:                                              ; preds = %40
  %166 = load %struct.sock*, %struct.sock** %4, align 8
  %167 = getelementptr inbounds %struct.sock, %struct.sock* %166, i32 0, i32 0
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = call i32 @skb_queue_tail(i32* %167, %struct.sk_buff* %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %165, %162
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %177

177:                                              ; preds = %175, %88, %84
  %178 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_6__* @X25_SKB_CB(%struct.sk_buff*) #2

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #2

declare dso_local i32 @x25_pacsize_to_bytes(i32) #2

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #2

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*, i32, i32) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #2

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #2

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
