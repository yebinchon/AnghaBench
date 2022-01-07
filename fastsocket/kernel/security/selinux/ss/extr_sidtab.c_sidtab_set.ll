; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sidtab_set(%struct.sidtab* %0, %struct.sidtab* %1) #0 {
  %3 = alloca %struct.sidtab*, align 8
  %4 = alloca %struct.sidtab*, align 8
  %5 = alloca i64, align 8
  store %struct.sidtab* %0, %struct.sidtab** %3, align 8
  store %struct.sidtab* %1, %struct.sidtab** %4, align 8
  %6 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %7 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %11 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %14 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %16 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %19 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %21 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %24 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sidtab*, %struct.sidtab** %3, align 8
  %26 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %28 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
