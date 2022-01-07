; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_compare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.fib_rule_hdr = type { i64, i64 }
%struct.nlattr = type { i32 }
%struct.dn_fib_rule = type { i64, i64, i64, i64 }

@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.fib_rule_hdr*, %struct.nlattr**)* @dn_fib_rule_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_rule_compare(%struct.fib_rule* %0, %struct.fib_rule_hdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.fib_rule_hdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.dn_fib_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.fib_rule_hdr* %1, %struct.fib_rule_hdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %9 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %10 = bitcast %struct.fib_rule* %9 to %struct.dn_fib_rule*
  store %struct.dn_fib_rule* %10, %struct.dn_fib_rule** %8, align 8
  %11 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %17 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %71

24:                                               ; preds = %15, %3
  %25 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %31 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %34 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %71

38:                                               ; preds = %29, %24
  %39 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %45 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %48 = load i64, i64* @FRA_SRC, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i64 @nla_get_le16(%struct.nlattr* %50)
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %71

54:                                               ; preds = %43, %38
  %55 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %61 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %64 = load i64, i64* @FRA_DST, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i64 @nla_get_le16(%struct.nlattr* %66)
  %68 = icmp ne i64 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %71

70:                                               ; preds = %59, %54
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69, %53, %37, %23
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @nla_get_le16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
