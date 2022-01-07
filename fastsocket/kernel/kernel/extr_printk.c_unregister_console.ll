; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_printk.c_unregister_console.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_printk.c_unregister_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32, %struct.console* }

@console_drivers = common dso_local global %struct.console* null, align 8
@CON_CONSDEV = common dso_local global i32 0, align 4
@CON_BRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_console(%struct.console* %0) #0 {
  %2 = alloca %struct.console*, align 8
  %3 = alloca %struct.console*, align 8
  %4 = alloca %struct.console*, align 8
  %5 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = call i32 (...) @acquire_console_sem()
  %7 = load %struct.console*, %struct.console** @console_drivers, align 8
  %8 = load %struct.console*, %struct.console** %2, align 8
  %9 = icmp eq %struct.console* %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.console*, %struct.console** %2, align 8
  %12 = getelementptr inbounds %struct.console, %struct.console* %11, i32 0, i32 1
  %13 = load %struct.console*, %struct.console** %12, align 8
  store %struct.console* %13, %struct.console** @console_drivers, align 8
  store i32 0, i32* %5, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.console*, %struct.console** @console_drivers, align 8
  %16 = icmp ne %struct.console* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load %struct.console*, %struct.console** @console_drivers, align 8
  %19 = getelementptr inbounds %struct.console, %struct.console* %18, i32 0, i32 1
  %20 = load %struct.console*, %struct.console** %19, align 8
  store %struct.console* %20, %struct.console** %3, align 8
  %21 = load %struct.console*, %struct.console** @console_drivers, align 8
  store %struct.console* %21, %struct.console** %4, align 8
  br label %22

22:                                               ; preds = %36, %17
  %23 = load %struct.console*, %struct.console** %3, align 8
  %24 = icmp ne %struct.console* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.console*, %struct.console** %3, align 8
  %27 = load %struct.console*, %struct.console** %2, align 8
  %28 = icmp eq %struct.console* %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.console*, %struct.console** %3, align 8
  %31 = getelementptr inbounds %struct.console, %struct.console* %30, i32 0, i32 1
  %32 = load %struct.console*, %struct.console** %31, align 8
  %33 = load %struct.console*, %struct.console** %4, align 8
  %34 = getelementptr inbounds %struct.console, %struct.console* %33, i32 0, i32 1
  store %struct.console* %32, %struct.console** %34, align 8
  store i32 0, i32* %5, align 4
  br label %41

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.console*, %struct.console** %3, align 8
  store %struct.console* %37, %struct.console** %4, align 8
  %38 = load %struct.console*, %struct.console** %4, align 8
  %39 = getelementptr inbounds %struct.console, %struct.console* %38, i32 0, i32 1
  %40 = load %struct.console*, %struct.console** %39, align 8
  store %struct.console* %40, %struct.console** %3, align 8
  br label %22

41:                                               ; preds = %29, %22
  br label %42

42:                                               ; preds = %41, %14
  br label %43

43:                                               ; preds = %42, %10
  %44 = load %struct.console*, %struct.console** @console_drivers, align 8
  %45 = icmp ne %struct.console* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.console*, %struct.console** %2, align 8
  %48 = getelementptr inbounds %struct.console, %struct.console* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CON_CONSDEV, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @CON_CONSDEV, align 4
  %55 = load %struct.console*, %struct.console** @console_drivers, align 8
  %56 = getelementptr inbounds %struct.console, %struct.console* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %46, %43
  %60 = call i32 (...) @release_console_sem()
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
