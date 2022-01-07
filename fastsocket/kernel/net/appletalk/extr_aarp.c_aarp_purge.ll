; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c_aarp_purge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c_aarp_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aarp_lock = common dso_local global i32 0, align 4
@AARP_HASH_SIZE = common dso_local global i32 0, align 4
@resolved = common dso_local global i32* null, align 8
@unresolved = common dso_local global i32* null, align 8
@proxies = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aarp_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aarp_purge() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @write_lock_bh(i32* @aarp_lock)
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @AARP_HASH_SIZE, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i32*, i32** @resolved, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = call i32 @__aarp_expire_all(i32* %11)
  %13 = load i32*, i32** @unresolved, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @__aarp_expire_all(i32* %16)
  %18 = load i32*, i32** @proxies, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @__aarp_expire_all(i32* %21)
  br label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %3

26:                                               ; preds = %3
  %27 = call i32 @write_unlock_bh(i32* @aarp_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__aarp_expire_all(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
