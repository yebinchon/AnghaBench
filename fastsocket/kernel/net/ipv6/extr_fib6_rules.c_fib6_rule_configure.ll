; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i32, i64, i64 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.fib6_rule = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FR_ACT_TO_TBL = common dso_local global i64 0, align 8
@RT6_TABLE_UNSPEC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*, %struct.nlattr**)* @fib6_rule_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_configure(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.fib_rule_hdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.fib6_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %7, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %10, align 8
  %18 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %19 = bitcast %struct.fib_rule* %18 to %struct.fib6_rule*
  store %struct.fib6_rule* %19, %struct.fib6_rule** %11, align 8
  %20 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %21 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FR_ACT_TO_TBL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %27 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RT6_TABLE_UNSPEC, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %89

32:                                               ; preds = %25
  %33 = load %struct.net*, %struct.net** %10, align 8
  %34 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %35 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @fib6_new_table(%struct.net* %33, i32 %36)
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOBUFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %89

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %4
  %44 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %45 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.fib6_rule*, %struct.fib6_rule** %11, align 8
  %50 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %53 = load i64, i64* @FRA_SRC, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_memcpy(i32* %51, %struct.nlattr* %55, i32 4)
  br label %57

57:                                               ; preds = %48, %43
  %58 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.fib6_rule*, %struct.fib6_rule** %11, align 8
  %64 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %67 = load i64, i64* @FRA_DST, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i32 @nla_memcpy(i32* %65, %struct.nlattr* %69, i32 4)
  br label %71

71:                                               ; preds = %62, %57
  %72 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %73 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fib6_rule*, %struct.fib6_rule** %11, align 8
  %76 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  %78 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %79 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.fib6_rule*, %struct.fib6_rule** %11, align 8
  %82 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %85 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.fib6_rule*, %struct.fib6_rule** %11, align 8
  %88 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %71, %39, %31
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32* @fib6_new_table(%struct.net*, i32) #1

declare dso_local i32 @nla_memcpy(i32*, %struct.nlattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
