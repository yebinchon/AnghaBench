; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c___skb_splice_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c___skb_splice_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.splice_pipe_desc = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*, i32*, %struct.splice_pipe_desc*, %struct.sock*)* @__skb_splice_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__skb_splice_bits(%struct.sk_buff* %0, i32* %1, i32* %2, %struct.splice_pipe_desc* %3, %struct.sock* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.splice_pipe_desc*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.splice_pipe_desc* %3, %struct.splice_pipe_desc** %10, align 8
  store %struct.sock* %4, %struct.sock** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @virt_to_page(i64 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = and i64 %20, %23
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @skb_headlen(%struct.sk_buff* %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %10, align 8
  %31 = load %struct.sock*, %struct.sock** %11, align 8
  %32 = call i64 @__splice_segment(i32 %17, i64 %24, i32 %26, i32* %27, i32* %28, %struct.sk_buff* %29, %struct.splice_pipe_desc* %30, i32 1, %struct.sock* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %73

35:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %69, %35
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %13, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load %struct.splice_pipe_desc*, %struct.splice_pipe_desc** %10, align 8
  %64 = load %struct.sock*, %struct.sock** %11, align 8
  %65 = call i64 @__splice_segment(i32 %53, i64 %56, i32 %59, i32* %60, i32* %61, %struct.sk_buff* %62, %struct.splice_pipe_desc* %63, i32 0, %struct.sock* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %73

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %36

72:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %67, %34
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @__splice_segment(i32, i64, i32, i32*, i32*, %struct.sk_buff*, %struct.splice_pipe_desc*, i32, %struct.sock*) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
