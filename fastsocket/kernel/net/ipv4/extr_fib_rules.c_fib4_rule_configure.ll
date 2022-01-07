; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_rules.c_fib4_rule_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_rules.c_fib4_rule_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i32, i64, i64 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.fib4_rule = type { i32, i64, i8*, i64, i8*, i32, i8*, i8* }
%struct.fib_table = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPTOS_TOS_MASK = common dso_local global i32 0, align 4
@RT_TABLE_UNSPEC = common dso_local global i64 0, align 8
@FR_ACT_TO_TBL = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@FRA_FLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*, %struct.nlattr**)* @fib4_rule_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib4_rule_configure(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.fib_rule_hdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib4_rule*, align 8
  %12 = alloca %struct.fib_table*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %7, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net* @sock_net(i32 %15)
  store %struct.net* %16, %struct.net** %9, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %20 = bitcast %struct.fib_rule* %19 to %struct.fib4_rule*
  store %struct.fib4_rule* %20, %struct.fib4_rule** %11, align 8
  %21 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IPTOS_TOS_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %110

29:                                               ; preds = %4
  %30 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %31 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RT_TABLE_UNSPEC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %37 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FR_ACT_TO_TBL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.net*, %struct.net** %9, align 8
  %43 = call %struct.fib_table* @fib_empty_table(%struct.net* %42)
  store %struct.fib_table* %43, %struct.fib_table** %12, align 8
  %44 = load %struct.fib_table*, %struct.fib_table** %12, align 8
  %45 = icmp eq %struct.fib_table* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOBUFS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %110

49:                                               ; preds = %41
  %50 = load %struct.fib_table*, %struct.fib_table** %12, align 8
  %51 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %54 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %35
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %58 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %63 = load i64, i64* @FRA_SRC, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i8* @nla_get_be32(%struct.nlattr* %65)
  %67 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %68 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %61, %56
  %70 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %76 = load i64, i64* @FRA_DST, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i8* @nla_get_be32(%struct.nlattr* %78)
  %80 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %81 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %84 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %87 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %89 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @inet_make_mask(i64 %90)
  %92 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %93 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %95 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %98 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %100 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @inet_make_mask(i64 %101)
  %103 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %104 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %106 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.fib4_rule*, %struct.fib4_rule** %11, align 8
  %109 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %82, %46, %28
  %111 = load i32, i32* %10, align 4
  ret i32 %111
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.fib_table* @fib_empty_table(%struct.net*) #1

declare dso_local i8* @nla_get_be32(%struct.nlattr*) #1

declare dso_local i8* @inet_make_mask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
