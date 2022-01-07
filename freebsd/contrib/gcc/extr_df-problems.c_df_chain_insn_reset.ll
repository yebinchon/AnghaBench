; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_chain_insn_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_chain_insn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i32, %struct.df* }
%struct.df = type { i32 }
%struct.df_insn_info = type { %struct.df_ref*, %struct.df_ref* }
%struct.df_ref = type { %struct.df_ref*, i32* }

@DF_DU_CHAIN = common dso_local global i32 0, align 4
@DF_UD_CHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, i32)* @df_chain_insn_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_chain_insn_reset(%struct.dataflow* %0, i32 %1) #0 {
  %3 = alloca %struct.dataflow*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.df*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.df_insn_info*, align 8
  %8 = alloca %struct.df_ref*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %10 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %9, i32 0, i32 1
  %11 = load %struct.df*, %struct.df** %10, align 8
  store %struct.df* %11, %struct.df** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @INSN_UID(i32 %12)
  store i32 %13, i32* %6, align 4
  store %struct.df_insn_info* null, %struct.df_insn_info** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.df*, %struct.df** %5, align 8
  %16 = getelementptr inbounds %struct.df, %struct.df* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.df*, %struct.df** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.df_insn_info* @DF_INSN_UID_GET(%struct.df* %20, i32 %21)
  store %struct.df_insn_info* %22, %struct.df_insn_info** %7, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %25 = icmp ne %struct.df_insn_info* %24, null
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %28 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DF_DU_CHAIN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %35 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %34, i32 0, i32 1
  %36 = load %struct.df_ref*, %struct.df_ref** %35, align 8
  store %struct.df_ref* %36, %struct.df_ref** %8, align 8
  br label %37

37:                                               ; preds = %40, %33
  %38 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %39 = icmp ne %struct.df_ref* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %42 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %44 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %43, i32 0, i32 0
  %45 = load %struct.df_ref*, %struct.df_ref** %44, align 8
  store %struct.df_ref* %45, %struct.df_ref** %8, align 8
  br label %37

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %49 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DF_UD_CHAIN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.df_insn_info*, %struct.df_insn_info** %7, align 8
  %56 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %55, i32 0, i32 0
  %57 = load %struct.df_ref*, %struct.df_ref** %56, align 8
  store %struct.df_ref* %57, %struct.df_ref** %8, align 8
  br label %58

58:                                               ; preds = %61, %54
  %59 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %60 = icmp ne %struct.df_ref* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %63 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %65 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %64, i32 0, i32 0
  %66 = load %struct.df_ref*, %struct.df_ref** %65, align 8
  store %struct.df_ref* %66, %struct.df_ref** %8, align 8
  br label %58

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %23
  ret void
}

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local %struct.df_insn_info* @DF_INSN_UID_GET(%struct.df*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
