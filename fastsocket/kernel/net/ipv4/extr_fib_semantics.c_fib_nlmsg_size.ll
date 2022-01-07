; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_semantics.c_fib_nlmsg_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_semantics.c_fib_nlmsg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_info = type { i32 }

@RTAX_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fib_info*)* @fib_nlmsg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fib_nlmsg_size(%struct.fib_info* %0) #0 {
  %2 = alloca %struct.fib_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.fib_info* %0, %struct.fib_info** %2, align 8
  %5 = call i32 @NLMSG_ALIGN(i32 4)
  %6 = call i32 @nla_total_size(i64 4)
  %7 = add nsw i32 %5, %6
  %8 = call i32 @nla_total_size(i64 4)
  %9 = add nsw i32 %7, %8
  %10 = call i32 @nla_total_size(i64 4)
  %11 = add nsw i32 %9, %10
  %12 = call i32 @nla_total_size(i64 4)
  %13 = add nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @RTAX_MAX, align 8
  %16 = call i32 @nla_total_size(i64 4)
  %17 = sext i32 %16 to i64
  %18 = mul i64 %15, %17
  %19 = call i32 @nla_total_size(i64 %18)
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load %struct.fib_info*, %struct.fib_info** %2, align 8
  %24 = getelementptr inbounds %struct.fib_info, %struct.fib_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %1
  %28 = call i32 @nla_total_size(i64 4)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  %30 = call i32 @nla_total_size(i64 4)
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %4, align 8
  %35 = load %struct.fib_info*, %struct.fib_info** %2, align 8
  %36 = getelementptr inbounds %struct.fib_info, %struct.fib_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %4, align 8
  %40 = mul i64 %38, %39
  %41 = call i32 @nla_total_size(i64 %40)
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %27, %1
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @nla_total_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
