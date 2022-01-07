; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-dis.c_mep_print_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-dis.c_mep_print_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@EF_MEP_INDEX_MASK = common dso_local global i32 0, align 4
@mep_config_index = common dso_local global i32 0, align 4
@SEC_MEP_VLIW = common dso_local global i32 0, align 4
@MEP_VLIW64 = common dso_local global i64 0, align 8
@MEP_CORE_ISA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32, %struct.TYPE_20__*)* @mep_print_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mep_print_insn(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %12 = icmp ne %struct.TYPE_19__* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = icmp ne %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %8, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EF_MEP_INDEX_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* @mep_config_index, align 4
  br label %36

36:                                               ; preds = %20, %13, %3
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = icmp ne %struct.TYPE_19__* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SEC_MEP_VLIW, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %41
  %51 = load i64, i64* @MEP_VLIW64, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = call i32 @mep_examine_vliw64_insns(%struct.TYPE_22__* %54, i32 %55, %struct.TYPE_20__* %56)
  store i32 %57, i32* %7, align 4
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = call i32 @mep_examine_vliw32_insns(%struct.TYPE_22__* %59, i32 %60, %struct.TYPE_20__* %61)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %71

64:                                               ; preds = %41
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  store i32* @MEP_CORE_ISA, i32** %66, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = call i32 @default_print_insn(%struct.TYPE_22__* %67, i32 %68, %struct.TYPE_20__* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %64, %63
  br label %77

72:                                               ; preds = %36
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = call i32 @default_print_insn(%struct.TYPE_22__* %73, i32 %74, %struct.TYPE_20__* %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %71
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @mep_examine_vliw64_insns(%struct.TYPE_22__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @mep_examine_vliw32_insns(%struct.TYPE_22__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @default_print_insn(%struct.TYPE_22__*, i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
