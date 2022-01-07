; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_syncookies.c_check_tcp_syn_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_syncookies.c_check_tcp_syn_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@COOKIEBITS = common dso_local global i32 0, align 4
@COOKIEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.in6_addr*, %struct.in6_addr*, i32, i32, i32, i32, i32)* @check_tcp_syn_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tcp_syn_cookie(i32 %0, %struct.in6_addr* %1, %struct.in6_addr* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.in6_addr* %1, %struct.in6_addr** %11, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %20 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @cookie_hash(%struct.in6_addr* %19, %struct.in6_addr* %20, i32 %21, i32 %22, i32 0, i32 0)
  %24 = load i32, i32* %15, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @COOKIEBITS, align 4
  %31 = ashr i32 %29, %30
  %32 = sub nsw i32 %28, %31
  %33 = load i32, i32* @COOKIEBITS, align 4
  %34 = ashr i32 -1, %33
  %35 = and i32 %32, %34
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %53

40:                                               ; preds = %8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %43 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %18, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @cookie_hash(%struct.in6_addr* %42, %struct.in6_addr* %43, i32 %44, i32 %45, i32 %48, i32 1)
  %50 = sub nsw i32 %41, %49
  %51 = load i32, i32* @COOKIEMASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %40, %39
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @cookie_hash(%struct.in6_addr*, %struct.in6_addr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
