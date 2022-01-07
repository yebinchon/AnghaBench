; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_kmem.h_kmem_flags_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_kmem.h_kmem_flags_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_FSTRANS = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kmem_flags_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmem_flags_convert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @KM_SLEEP, align 4
  %6 = load i32, i32* @KM_NOSLEEP, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @KM_NOFS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @KM_MAYFAIL, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %4, %12
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @KM_NOSLEEP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = load i32, i32* @__GFP_NOWARN, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* @__GFP_NOWARN, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PF_FSTRANS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @KM_NOFS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33, %23
  %39 = load i32, i32* @__GFP_FS, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
