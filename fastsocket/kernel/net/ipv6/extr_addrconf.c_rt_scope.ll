; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_rt_scope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_rt_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFA_HOST = common dso_local global i32 0, align 4
@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@IFA_LINK = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@IFA_SITE = common dso_local global i32 0, align 4
@RT_SCOPE_SITE = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rt_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_scope(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @IFA_HOST, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @RT_SCOPE_HOST, align 4
  store i32 %9, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IFA_LINK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @RT_SCOPE_LINK, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @IFA_SITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @RT_SCOPE_SITE, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22, %15, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
