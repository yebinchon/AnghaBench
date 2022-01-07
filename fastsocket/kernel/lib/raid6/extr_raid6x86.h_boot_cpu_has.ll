; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_raid6x86.h_boot_cpu_has.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_raid6x86.h_boot_cpu_has.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @boot_cpu_has to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot_cpu_has(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 32
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 -2147483647, i32 1
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call { i32, i32, i32 } asm sideeffect "cpuid", "={ax},={dx},={cx},0,~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 %11) #1, !srcloc !2
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = extractvalue { i32, i32, i32 } %12, 1
  %15 = extractvalue { i32, i32, i32 } %12, 2
  store i32 %13, i32* %3, align 4
  store i32 %14, i32* %5, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 31
  %27 = ashr i32 %24, %26
  %28 = and i32 %27, 1
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 298}
