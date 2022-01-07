; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnetlink_put_metrics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnetlink_put_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@RTA_METRICS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTAX_MAX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtnetlink_put_metrics(%struct.sk_buff* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @RTA_METRICS, align 4
  %11 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %6, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %13 = icmp eq %struct.nlattr* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOBUFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RTAX_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i64*, i64** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @NLA_PUT_U32(%struct.sk_buff* %32, i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %29, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %51 = call i32 @nla_nest_cancel(%struct.sk_buff* %49, %struct.nlattr* %50)
  store i32 0, i32* %3, align 4
  br label %62

52:                                               ; preds = %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %55 = call i32 @nla_nest_end(%struct.sk_buff* %53, %struct.nlattr* %54)
  store i32 %55, i32* %3, align 4
  br label %62

56:                                               ; No predecessors!
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %59 = call i32 @nla_nest_cancel(%struct.sk_buff* %57, %struct.nlattr* %58)
  %60 = load i32, i32* @EMSGSIZE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %52, %48, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
