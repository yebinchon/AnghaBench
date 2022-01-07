; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_compare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.fib_rule_hdr = type { i64, i64, i64 }
%struct.nlattr = type { i32 }
%struct.fib6_rule = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.fib_rule_hdr*, %struct.nlattr**)* @fib6_rule_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_compare(%struct.fib_rule* %0, %struct.fib_rule_hdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.fib_rule_hdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.fib6_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.fib_rule_hdr* %1, %struct.fib_rule_hdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %9 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %10 = bitcast %struct.fib_rule* %9 to %struct.fib6_rule*
  store %struct.fib6_rule* %10, %struct.fib6_rule** %8, align 8
  %11 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %17 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %87

25:                                               ; preds = %15, %3
  %26 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %32 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %87

40:                                               ; preds = %30, %25
  %41 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %47 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %87

54:                                               ; preds = %45, %40
  %55 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %61 = load i64, i64* @FRA_SRC, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %65 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = call i64 @nla_memcmp(%struct.nlattr* %63, i32* %66, i32 4)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %87

70:                                               ; preds = %59, %54
  %71 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %72 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %77 = load i64, i64* @FRA_DST, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %81 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = call i64 @nla_memcmp(%struct.nlattr* %79, i32* %82, i32 4)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %87

86:                                               ; preds = %75, %70
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %85, %69, %53, %39, %24
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @nla_memcmp(%struct.nlattr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
