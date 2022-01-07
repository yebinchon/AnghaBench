; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tunnel4.c_fam_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tunnel4.c_fam_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_tunnel = type { i32 }

@AF_INET = common dso_local global i16 0, align 2
@tunnel4_handlers = common dso_local global %struct.xfrm_tunnel* null, align 8
@tunnel64_handlers = common dso_local global %struct.xfrm_tunnel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_tunnel** (i16)* @fam_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_tunnel** @fam_handlers(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* @AF_INET, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %4, %6
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, %struct.xfrm_tunnel** @tunnel4_handlers, %struct.xfrm_tunnel** @tunnel64_handlers
  ret %struct.xfrm_tunnel** %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
