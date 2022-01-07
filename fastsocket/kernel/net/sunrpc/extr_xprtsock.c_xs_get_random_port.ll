; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_get_random_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_get_random_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xprt_max_resvport = common dso_local global i16 0, align 2
@xprt_min_resvport = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 ()* @xs_get_random_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @xs_get_random_port() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = load i16, i16* @xprt_max_resvport, align 2
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* @xprt_min_resvport, align 2
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* %1, align 2
  %9 = call i64 (...) @net_random()
  %10 = trunc i64 %9 to i16
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %1, align 2
  %13 = zext i16 %12 to i32
  %14 = srem i32 %11, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %2, align 2
  %16 = load i16, i16* %2, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @xprt_min_resvport, align 2
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %17, %19
  %21 = trunc i32 %20 to i16
  ret i16 %21
}

declare dso_local i64 @net_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
