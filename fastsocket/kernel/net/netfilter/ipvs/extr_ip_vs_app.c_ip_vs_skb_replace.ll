; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_skb_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_app.c_ip_vs_skb_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_skb_replace(%struct.sk_buff* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = call i32 @EnterFunction(i32 9)
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %14, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %21 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %6
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @memmove(i8* %42, i8* %46, i32 %47)
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @memcpy(i8* %49, i8* %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @skb_trim(%struct.sk_buff* %53, i32 %58)
  br label %124

60:                                               ; preds = %6
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call i32 @skb_tailroom(%struct.sk_buff* %62)
  %64 = icmp sle i32 %61, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @skb_put(%struct.sk_buff* %66, i32 %67)
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @memmove(i8* %72, i8* %76, i32 %77)
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @memcpy(i8* %79, i8* %80, i32 %81)
  br label %123

83:                                               ; preds = %60
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i32 @skb_headroom(%struct.sk_buff* %85)
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @pskb_expand_head(%struct.sk_buff* %84, i32 %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %133

94:                                               ; preds = %83
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @skb_put(%struct.sk_buff* %95, i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @memmove(i8* %106, i8* %115, i32 %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %118, i32 %119, i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %94, %65
  br label %124

124:                                              ; preds = %123, %38
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @htons(i32 %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = call i32 @LeaveFunction(i32 9)
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %124, %91
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @EnterFunction(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @LeaveFunction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
