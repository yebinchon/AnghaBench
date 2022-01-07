; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm4_selector_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm4_selector_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_selector = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.flowi = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_selector*, %struct.flowi*)* @__xfrm4_selector_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm4_selector_match(%struct.xfrm_selector* %0, %struct.flowi* %1) #0 {
  %3 = alloca %struct.xfrm_selector*, align 8
  %4 = alloca %struct.flowi*, align 8
  store %struct.xfrm_selector* %0, %struct.xfrm_selector** %3, align 8
  store %struct.flowi* %1, %struct.flowi** %4, align 8
  %5 = load %struct.flowi*, %struct.flowi** %4, align 8
  %6 = getelementptr inbounds %struct.flowi, %struct.flowi* %5, i32 0, i32 3
  %7 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %8 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %7, i32 0, i32 9
  %9 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @addr_match(i32* %6, i32* %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %2
  %15 = load %struct.flowi*, %struct.flowi** %4, align 8
  %16 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 2
  %17 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %17, i32 0, i32 7
  %19 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @addr_match(i32* %16, i32* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %14
  %25 = load %struct.flowi*, %struct.flowi** %4, align 8
  %26 = call i32 @xfrm_flowi_dport(%struct.flowi* %25)
  %27 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = xor i32 %26, %29
  %31 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %32 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %77, label %36

36:                                               ; preds = %24
  %37 = load %struct.flowi*, %struct.flowi** %4, align 8
  %38 = call i32 @xfrm_flowi_sport(%struct.flowi* %37)
  %39 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %40 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %38, %41
  %43 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %44 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %36
  %49 = load %struct.flowi*, %struct.flowi** %4, align 8
  %50 = getelementptr inbounds %struct.flowi, %struct.flowi* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %53 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %58 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %56, %48
  %62 = load %struct.flowi*, %struct.flowi** %4, align 8
  %63 = getelementptr inbounds %struct.flowi, %struct.flowi* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %66 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %61
  %70 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %71 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %69, %61
  %76 = phi i1 [ true, %61 ], [ %74, %69 ]
  br label %77

77:                                               ; preds = %75, %56, %36, %24, %14, %2
  %78 = phi i1 [ false, %56 ], [ false, %36 ], [ false, %24 ], [ false, %14 ], [ false, %2 ], [ %76, %75 ]
  %79 = zext i1 %78 to i32
  ret i32 %79
}

declare dso_local i64 @addr_match(i32*, i32*, i32) #1

declare dso_local i32 @xfrm_flowi_dport(%struct.flowi*) #1

declare dso_local i32 @xfrm_flowi_sport(%struct.flowi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
