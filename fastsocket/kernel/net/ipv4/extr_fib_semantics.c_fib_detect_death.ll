; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_semantics.c_fib_detect_death.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_semantics.c_fib_detect_death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.neighbour = type { i32 }

@NUD_NONE = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_detect_death(%struct.fib_info* %0, i32 %1, %struct.fib_info** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib_info**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.neighbour*, align 8
  %13 = alloca i32, align 4
  store %struct.fib_info* %0, %struct.fib_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.fib_info** %2, %struct.fib_info*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @NUD_NONE, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %16 = getelementptr inbounds %struct.fib_info, %struct.fib_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %21 = getelementptr inbounds %struct.fib_info, %struct.fib_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.neighbour* @neigh_lookup(i32* @arp_tbl, i32* %19, i32 %22)
  store %struct.neighbour* %23, %struct.neighbour** %12, align 8
  %24 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %25 = icmp ne %struct.neighbour* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %28 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %31 = call i32 @neigh_release(%struct.neighbour* %30)
  br label %32

32:                                               ; preds = %26, %5
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @NUD_REACHABLE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %66

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @NUD_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %66

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @NUD_VALID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %47
  %61 = load %struct.fib_info*, %struct.fib_info** %7, align 8
  %62 = load %struct.fib_info**, %struct.fib_info*** %9, align 8
  store %struct.fib_info* %61, %struct.fib_info** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %56, %52
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %46, %36
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
