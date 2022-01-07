; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_rules.c_fib4_rule_compare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_rules.c_fib4_rule_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.fib_rule_hdr = type { i64, i64, i64 }
%struct.nlattr = type { i32 }
%struct.fib4_rule = type { i64, i64, i64, i64, i64, i64 }

@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@FRA_FLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.fib_rule_hdr*, %struct.nlattr**)* @fib4_rule_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib4_rule_compare(%struct.fib_rule* %0, %struct.fib_rule_hdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.fib_rule_hdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.fib4_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.fib_rule_hdr* %1, %struct.fib_rule_hdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %9 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %10 = bitcast %struct.fib_rule* %9 to %struct.fib4_rule*
  store %struct.fib4_rule* %10, %struct.fib4_rule** %8, align 8
  %11 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %17 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %85

24:                                               ; preds = %15, %3
  %25 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %31 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %34 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %85

38:                                               ; preds = %29, %24
  %39 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %45 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %85

52:                                               ; preds = %43, %38
  %53 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %54 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %59 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %62 = load i64, i64* @FRA_SRC, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i64 @nla_get_be32(%struct.nlattr* %64)
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %85

68:                                               ; preds = %57, %52
  %69 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %70 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %75 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %78 = load i64, i64* @FRA_DST, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i64 @nla_get_be32(%struct.nlattr* %80)
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %85

84:                                               ; preds = %73, %68
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %83, %67, %51, %37, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @nla_get_be32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
