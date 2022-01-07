; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_test_gen_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_test_gen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_cmd_test_gen_start = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.VFE_TestGen_ConfigCmdType = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_HW_TESTGEN_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_test_gen_start(%struct.vfe_cmd_test_gen_start* %0) #0 {
  %2 = alloca %struct.vfe_cmd_test_gen_start*, align 8
  %3 = alloca %struct.VFE_TestGen_ConfigCmdType, align 8
  store %struct.vfe_cmd_test_gen_start* %0, %struct.vfe_cmd_test_gen_start** %2, align 8
  %4 = call i32 @memset(%struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 112)
  %5 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %5, i32 0, i32 22
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 22
  store i32 %7, i32* %8, align 8
  %9 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %9, i32 0, i32 21
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 21
  store i32 %11, i32* %12, align 4
  %13 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 20
  store i32 %15, i32* %16, align 8
  %17 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %18 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %17, i32 0, i32 19
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 19
  store i8* %20, i8** %21, align 8
  %22 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %22, i32 0, i32 18
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 18
  store i8* %25, i8** %26, align 8
  %27 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %27, i32 0, i32 17
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 17
  store i8* %30, i8** %31, align 8
  %32 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %33 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 16
  store i32 %34, i32* %35, align 4
  %36 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %37 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 15
  store i32 %38, i32* %39, align 8
  %40 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %41 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 14
  store i32 %42, i32* %43, align 4
  %44 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %45 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 13
  store i32 %46, i32* %47, align 8
  %48 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %49 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 12
  store i32 %50, i32* %51, align 4
  %52 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %53 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 11
  store i32 %54, i32* %55, align 8
  %56 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %57 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 10
  store i32 %58, i32* %59, align 4
  %60 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %61 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 9
  store i32 %62, i32* %63, align 8
  %64 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %65 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %69 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 7
  store i32 %70, i32* %71, align 8
  %72 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %73 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 6
  store i32 %74, i32* %75, align 4
  %76 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %77 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 5
  store i32 %78, i32* %79, align 8
  %80 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %81 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 4
  store i32 %82, i32* %83, align 4
  %84 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %85 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %89 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 2
  store i8* %91, i8** %92, align 8
  %93 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %94 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.vfe_cmd_test_gen_start*, %struct.vfe_cmd_test_gen_start** %2, align 8
  %98 = getelementptr inbounds %struct.vfe_cmd_test_gen_start, %struct.vfe_cmd_test_gen_start* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.VFE_TestGen_ConfigCmdType, %struct.VFE_TestGen_ConfigCmdType* %3, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VFE_HW_TESTGEN_CFG, align 8
  %105 = add nsw i64 %103, %104
  %106 = bitcast %struct.VFE_TestGen_ConfigCmdType* %3 to i8**
  %107 = call i32 @vfe_prog_hw(i64 %105, i8** %106, i32 112)
  ret void
}

declare dso_local i32 @memset(%struct.VFE_TestGen_ConfigCmdType*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
