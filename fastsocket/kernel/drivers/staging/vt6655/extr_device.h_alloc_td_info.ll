; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_device.h_alloc_td_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_device.h_alloc_td_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_ATOMIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @alloc_td_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alloc_td_info() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @GFP_ATOMIC, align 8
  %4 = trunc i64 %3 to i32
  %5 = call i64 @kmalloc(i32 4, i32 %4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %13

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @memset(i32* %10, i32 0, i32 4)
  %12 = load i32*, i32** %2, align 8
  store i32* %12, i32** %1, align 8
  br label %13

13:                                               ; preds = %9, %8
  %14 = load i32*, i32** %1, align 8
  ret i32* %14
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
