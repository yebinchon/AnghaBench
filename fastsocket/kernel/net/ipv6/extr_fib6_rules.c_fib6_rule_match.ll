; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.flowi = type { i32, i32, i32 }
%struct.fib6_rule = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@FIB_RULE_FIND_SADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32)* @fib6_rule_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_match(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib6_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %10 = bitcast %struct.fib_rule* %9 to %struct.fib6_rule*
  store %struct.fib6_rule* %10, %struct.fib6_rule** %8, align 8
  %11 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %12 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.flowi*, %struct.flowi** %6, align 8
  %18 = getelementptr inbounds %struct.flowi, %struct.flowi* %17, i32 0, i32 2
  %19 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %20 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %23 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ipv6_prefix_equal(i32* %18, i32* %21, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %83

29:                                               ; preds = %16, %3
  %30 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %31 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.flowi*, %struct.flowi** %6, align 8
  %42 = getelementptr inbounds %struct.flowi, %struct.flowi* %41, i32 0, i32 1
  %43 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %44 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %47 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ipv6_prefix_equal(i32* %42, i32* %45, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %83

53:                                               ; preds = %40
  br label %64

54:                                               ; preds = %35
  %55 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %56 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FIB_RULE_FIND_SADDR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %83

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %64, %29
  %66 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %67 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %72 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.flowi*, %struct.flowi** %6, align 8
  %75 = getelementptr inbounds %struct.flowi, %struct.flowi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohl(i32 %76)
  %78 = ashr i32 %77, 20
  %79 = and i32 %78, 255
  %80 = icmp ne i32 %73, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %83

82:                                               ; preds = %70, %65
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %81, %62, %52, %28
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @ipv6_prefix_equal(i32*, i32*, i64) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
