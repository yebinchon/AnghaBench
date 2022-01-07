; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_check_dependencies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_check_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_link = type { %struct.df_ref*, i64 }
%struct.df_ref = type { i32, %struct.df_ref* }
%struct.def = type { i32 }
%struct.invariant = type { %struct.def* }
%struct.TYPE_2__ = type { %struct.df_ref* }

@df = common dso_local global i32 0, align 4
@DF_REF_READ_WRITE = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @check_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dependencies(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.df_link*, align 8
  %7 = alloca %struct.df_ref*, align 8
  %8 = alloca %struct.df_ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.def*, align 8
  %12 = alloca %struct.invariant*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BLOCK_FOR_INSN(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @df, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_2__* @DF_INSN_GET(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.df_ref*, %struct.df_ref** %18, align 8
  store %struct.df_ref* %19, %struct.df_ref** %7, align 8
  br label %20

20:                                               ; preds = %74, %2
  %21 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %22 = icmp ne %struct.df_ref* %21, null
  br i1 %22, label %23, label %78

23:                                               ; preds = %20
  %24 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %25 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DF_REF_READ_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %79

31:                                               ; preds = %23
  %32 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %33 = call %struct.df_link* @DF_REF_CHAIN(%struct.df_ref* %32)
  store %struct.df_link* %33, %struct.df_link** %6, align 8
  %34 = load %struct.df_link*, %struct.df_link** %6, align 8
  %35 = icmp ne %struct.df_link* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %74

37:                                               ; preds = %31
  %38 = load %struct.df_link*, %struct.df_link** %6, align 8
  %39 = getelementptr inbounds %struct.df_link, %struct.df_link* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %79

43:                                               ; preds = %37
  %44 = load %struct.df_link*, %struct.df_link** %6, align 8
  %45 = getelementptr inbounds %struct.df_link, %struct.df_link* %44, i32 0, i32 0
  %46 = load %struct.df_ref*, %struct.df_ref** %45, align 8
  store %struct.df_ref* %46, %struct.df_ref** %8, align 8
  %47 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %48 = call %struct.invariant* @DF_REF_DATA(%struct.df_ref* %47)
  store %struct.invariant* %48, %struct.invariant** %12, align 8
  %49 = load %struct.invariant*, %struct.invariant** %12, align 8
  %50 = icmp ne %struct.invariant* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %79

52:                                               ; preds = %43
  %53 = load %struct.invariant*, %struct.invariant** %12, align 8
  %54 = getelementptr inbounds %struct.invariant, %struct.invariant* %53, i32 0, i32 0
  %55 = load %struct.def*, %struct.def** %54, align 8
  store %struct.def* %55, %struct.def** %11, align 8
  %56 = load %struct.def*, %struct.def** %11, align 8
  %57 = icmp ne %struct.def* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @gcc_assert(i32 %58)
  %60 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %61 = call i32 @DF_REF_BB(%struct.df_ref* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @CDI_DOMINATORS, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dominated_by_p(i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %79

68:                                               ; preds = %52
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.def*, %struct.def** %11, align 8
  %71 = getelementptr inbounds %struct.def, %struct.def* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bitmap_set_bit(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %36
  %75 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %76 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %75, i32 0, i32 1
  %77 = load %struct.df_ref*, %struct.df_ref** %76, align 8
  store %struct.df_ref* %77, %struct.df_ref** %7, align 8
  br label %20

78:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %67, %51, %42, %30
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @BLOCK_FOR_INSN(i32) #1

declare dso_local %struct.TYPE_2__* @DF_INSN_GET(i32, i32) #1

declare dso_local %struct.df_link* @DF_REF_CHAIN(%struct.df_ref*) #1

declare dso_local %struct.invariant* @DF_REF_DATA(%struct.df_ref*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DF_REF_BB(%struct.df_ref*) #1

declare dso_local i32 @dominated_by_p(i32, i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
