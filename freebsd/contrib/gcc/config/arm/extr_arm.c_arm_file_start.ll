; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_file_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_file_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TARGET_BPABI = common dso_local global i64 0, align 8
@arm_select = common dso_local global %struct.TYPE_3__* null, align 8
@asm_out_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\09.cpu %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\09.arch %s\0A\00", align 1
@all_cores = common dso_local global %struct.TYPE_4__* null, align 8
@arm_default_cpu = common dso_local global i64 0, align 8
@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8
@TARGET_VFP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"softvfp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"softfpa\00", align 1
@arm_fpu_arch = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"fpa\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fpe2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fpe3\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"maverick\00", align 1
@TARGET_HARD_FLOAT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"\09.eabi_attribute 27, 3\0A\00", align 1
@TARGET_HARD_FLOAT_ABI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"\09.eabi_attribute 28, 1\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"vfp\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\09.fpu %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\09.eabi_attribute 18, %d\0A\00", align 1
@WCHAR_TYPE_SIZE = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@flag_rounding_math = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"\09.eabi_attribute 19, 1\0A\00", align 1
@flag_unsafe_math_optimizations = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"\09.eabi_attribute 20, 1\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"\09.eabi_attribute 21, 1\0A\00", align 1
@flag_signaling_nans = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"\09.eabi_attribute 22, 1\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\09.eabi_attribute 23, %d\0A\00", align 1
@flag_finite_math_only = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [24 x i8] c"\09.eabi_attribute 24, 1\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\09.eabi_attribute 25, 1\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"\09.eabi_attribute 26, %d\0A\00", align 1
@flag_short_enums = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8
@optimize = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"\09.eabi_attribute 30, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arm_file_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_file_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i64, i64* @TARGET_BPABI, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %135

5:                                                ; preds = %0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arm_select, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load i32, i32* @asm_out_file, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arm_select, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %40

18:                                               ; preds = %5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arm_select, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @asm_out_file, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arm_select, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %39

31:                                               ; preds = %18
  %32 = load i32, i32* @asm_out_file, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @all_cores, align 8
  %34 = load i64, i64* @arm_default_cpu, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31, %24
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* @TARGET_VFP, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %48

47:                                               ; preds = %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %48

48:                                               ; preds = %47, %46
  br label %71

49:                                               ; preds = %40
  %50 = load i32, i32* @arm_fpu_arch, align 4
  switch i32 %50, label %68 [
    i32 132, label %51
    i32 131, label %52
    i32 130, label %53
    i32 129, label %54
    i32 128, label %55
  ]

51:                                               ; preds = %49
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %70

52:                                               ; preds = %49
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %70

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %70

54:                                               ; preds = %49
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %70

55:                                               ; preds = %49
  %56 = load i32, i32* @TARGET_HARD_FLOAT, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @asm_out_file, align 4
  %60 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @TARGET_HARD_FLOAT_ABI, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @asm_out_file, align 4
  %66 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %70

68:                                               ; preds = %49
  %69 = call i32 (...) @abort() #3
  unreachable

70:                                               ; preds = %67, %54, %53, %52, %51
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* @asm_out_file, align 4
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @asm_out_file, align 4
  %76 = load i64, i64* @WCHAR_TYPE_SIZE, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @BITS_PER_UNIT, align 4
  %79 = sdiv i32 %77, %78
  %80 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %79)
  %81 = load i64, i64* @flag_rounding_math, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @asm_out_file, align 4
  %85 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %71
  %87 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @asm_out_file, align 4
  %91 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %92 = load i32, i32* @asm_out_file, align 4
  %93 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i64, i64* @flag_signaling_nans, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @asm_out_file, align 4
  %99 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* @asm_out_file, align 4
  %102 = load i64, i64* @flag_finite_math_only, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 3
  %106 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @asm_out_file, align 4
  %108 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %109 = load i32, i32* @asm_out_file, align 4
  %110 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %111 = load i32, i32* @asm_out_file, align 4
  %112 = load i64, i64* @flag_short_enums, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 2
  %116 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %115)
  %117 = load i64, i64* @optimize_size, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %100
  store i32 4, i32* %1, align 4
  br label %131

120:                                              ; preds = %100
  %121 = load i32, i32* @optimize, align 4
  %122 = icmp sge i32 %121, 2
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 2, i32* %1, align 4
  br label %130

124:                                              ; preds = %120
  %125 = load i32, i32* @optimize, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 1, i32* %1, align 4
  br label %129

128:                                              ; preds = %124
  store i32 6, i32* %1, align 4
  br label %129

129:                                              ; preds = %128, %127
  br label %130

130:                                              ; preds = %129, %123
  br label %131

131:                                              ; preds = %130, %119
  %132 = load i32, i32* @asm_out_file, align 4
  %133 = load i32, i32* %1, align 4
  %134 = call i32 (i32, i8*, ...) @asm_fprintf(i32 %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131, %0
  %136 = call i32 (...) @default_file_start()
  ret void
}

declare dso_local i32 @asm_fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @default_file_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
