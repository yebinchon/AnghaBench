; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_invariant_for_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_invariant_for_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.invariant = type { i32 }
%struct.df_ref = type { i32, i32 }
%struct.df_link = type { %struct.df_ref*, i64 }

@DF_REF_READ_WRITE = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.invariant* (%struct.df_ref*)* @invariant_for_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.invariant* @invariant_for_use(%struct.df_ref* %0) #0 {
  %2 = alloca %struct.invariant*, align 8
  %3 = alloca %struct.df_ref*, align 8
  %4 = alloca %struct.df_link*, align 8
  %5 = alloca %struct.df_ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.df_ref* %0, %struct.df_ref** %3, align 8
  %8 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %9 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BLOCK_FOR_INSN(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %13 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DF_REF_READ_WRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.invariant* null, %struct.invariant** %2, align 8
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %21 = call %struct.df_link* @DF_REF_CHAIN(%struct.df_ref* %20)
  store %struct.df_link* %21, %struct.df_link** %4, align 8
  %22 = load %struct.df_link*, %struct.df_link** %4, align 8
  %23 = icmp ne %struct.df_link* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.df_link*, %struct.df_link** %4, align 8
  %26 = getelementptr inbounds %struct.df_link, %struct.df_link* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19
  store %struct.invariant* null, %struct.invariant** %2, align 8
  br label %50

30:                                               ; preds = %24
  %31 = load %struct.df_link*, %struct.df_link** %4, align 8
  %32 = getelementptr inbounds %struct.df_link, %struct.df_link* %31, i32 0, i32 0
  %33 = load %struct.df_ref*, %struct.df_ref** %32, align 8
  store %struct.df_ref* %33, %struct.df_ref** %5, align 8
  %34 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %35 = call %struct.invariant* @DF_REF_DATA(%struct.df_ref* %34)
  %36 = icmp ne %struct.invariant* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store %struct.invariant* null, %struct.invariant** %2, align 8
  br label %50

38:                                               ; preds = %30
  %39 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %40 = call i32 @DF_REF_BB(%struct.df_ref* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @CDI_DOMINATORS, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dominated_by_p(i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store %struct.invariant* null, %struct.invariant** %2, align 8
  br label %50

47:                                               ; preds = %38
  %48 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %49 = call %struct.invariant* @DF_REF_DATA(%struct.df_ref* %48)
  store %struct.invariant* %49, %struct.invariant** %2, align 8
  br label %50

50:                                               ; preds = %47, %46, %37, %29, %18
  %51 = load %struct.invariant*, %struct.invariant** %2, align 8
  ret %struct.invariant* %51
}

declare dso_local i32 @BLOCK_FOR_INSN(i32) #1

declare dso_local %struct.df_link* @DF_REF_CHAIN(%struct.df_ref*) #1

declare dso_local %struct.invariant* @DF_REF_DATA(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_BB(%struct.df_ref*) #1

declare dso_local i32 @dominated_by_p(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
