; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_fib_nlmsg_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_fib_nlmsg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_info = type { i32 }

@RTAX_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dn_fib_info*)* @dn_fib_nlmsg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dn_fib_nlmsg_size(%struct.dn_fib_info* %0) #0 {
  %2 = alloca %struct.dn_fib_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.dn_fib_info* %0, %struct.dn_fib_info** %2, align 8
  %5 = call i64 @NLMSG_ALIGN(i32 4)
  %6 = call i64 @nla_total_size(i64 4)
  %7 = add i64 %5, %6
  %8 = call i64 @nla_total_size(i64 2)
  %9 = add i64 %7, %8
  %10 = call i64 @nla_total_size(i64 4)
  %11 = add i64 %9, %10
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* @RTAX_MAX, align 8
  %13 = call i64 @nla_total_size(i64 4)
  %14 = mul i64 %12, %13
  %15 = call i64 @nla_total_size(i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %3, align 8
  %18 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %19 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = call i64 @nla_total_size(i64 4)
  store i64 %23, i64* %4, align 8
  %24 = call i64 @nla_total_size(i64 4)
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %4, align 8
  %27 = load %struct.dn_fib_info*, %struct.dn_fib_info** %2, align 8
  %28 = getelementptr inbounds %struct.dn_fib_info, %struct.dn_fib_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %4, align 8
  %32 = mul i64 %30, %31
  %33 = call i64 @nla_total_size(i64 %32)
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %22, %1
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
