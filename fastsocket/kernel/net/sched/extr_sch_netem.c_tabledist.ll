; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_tabledist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_tabledist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crndstate = type { i32 }
%struct.disttable = type { i64*, i32 }

@NETEM_DIST_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.crndstate*, %struct.disttable*)* @tabledist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tabledist(i32 %0, i32 %1, %struct.crndstate* %2, %struct.disttable* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crndstate*, align 8
  %9 = alloca %struct.disttable*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.crndstate* %2, %struct.crndstate** %8, align 8
  store %struct.disttable* %3, %struct.disttable** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %5, align 4
  br label %78

17:                                               ; preds = %4
  %18 = load %struct.crndstate*, %struct.crndstate** %8, align 8
  %19 = call i32 @get_crandom(%struct.crndstate* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.disttable*, %struct.disttable** %9, align 8
  %21 = icmp eq %struct.disttable* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 2, %24
  %26 = srem i32 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %78

31:                                               ; preds = %17
  %32 = load %struct.disttable*, %struct.disttable** %9, align 8
  %33 = getelementptr inbounds %struct.disttable, %struct.disttable* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.disttable*, %struct.disttable** %9, align 8
  %37 = getelementptr inbounds %struct.disttable, %struct.disttable* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %34, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NETEM_DIST_SCALE, align 4
  %45 = srem i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %11, align 8
  %48 = mul nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %31
  %53 = load i32, i32* @NETEM_DIST_SCALE, align 4
  %54 = sdiv i32 %53, 2
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %62

57:                                               ; preds = %31
  %58 = load i32, i32* @NETEM_DIST_SCALE, align 4
  %59 = sdiv i32 %58, 2
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @NETEM_DIST_SCALE, align 4
  %65 = sdiv i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @NETEM_DIST_SCALE, align 4
  %69 = sdiv i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %11, align 8
  %72 = mul nsw i64 %70, %71
  %73 = add nsw i64 %66, %72
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %62, %22, %15
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @get_crandom(%struct.crndstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
