; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_smallest_imm_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_smallest_imm_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_arch_flags = common dso_local global i32 0, align 4
@Cpu186 = common dso_local global i32 0, align 4
@Cpu286 = common dso_local global i32 0, align 4
@Cpu386 = common dso_local global i32 0, align 4
@Cpu486 = common dso_local global i32 0, align 4
@CpuNo64 = common dso_local global i32 0, align 4
@Imm1 = common dso_local global i32 0, align 4
@Imm8 = common dso_local global i32 0, align 4
@Imm8S = common dso_local global i32 0, align 4
@Imm16 = common dso_local global i32 0, align 4
@Imm32 = common dso_local global i32 0, align 4
@Imm32S = common dso_local global i32 0, align 4
@Imm64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smallest_imm_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smallest_imm_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @cpu_arch_flags, align 4
  %5 = load i32, i32* @Cpu186, align 4
  %6 = load i32, i32* @Cpu286, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @Cpu386, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @Cpu486, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CpuNo64, align 4
  %13 = or i32 %11, %12
  %14 = icmp ne i32 %4, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* @Imm1, align 4
  %20 = load i32, i32* @Imm8, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @Imm8S, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @Imm16, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @Imm32, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @Imm32S, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @Imm64, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %109

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @fits_in_signed_byte(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* @Imm8S, align 4
  %39 = load i32, i32* @Imm8, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @Imm16, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @Imm32, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @Imm32S, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @Imm64, align 4
  %48 = or i32 %46, %47
  br label %107

49:                                               ; preds = %33
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @fits_in_unsigned_byte(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* @Imm8, align 4
  %55 = load i32, i32* @Imm16, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @Imm32, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @Imm32S, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @Imm64, align 4
  %62 = or i32 %60, %61
  br label %105

63:                                               ; preds = %49
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @fits_in_signed_word(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @fits_in_unsigned_word(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67, %63
  %72 = load i32, i32* @Imm16, align 4
  %73 = load i32, i32* @Imm32, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @Imm32S, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @Imm64, align 4
  %78 = or i32 %76, %77
  br label %103

79:                                               ; preds = %67
  %80 = load i32, i32* %3, align 4
  %81 = call i64 @fits_in_signed_long(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @Imm32, align 4
  %85 = load i32, i32* @Imm32S, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @Imm64, align 4
  %88 = or i32 %86, %87
  br label %101

89:                                               ; preds = %79
  %90 = load i32, i32* %3, align 4
  %91 = call i64 @fits_in_unsigned_long(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @Imm32, align 4
  %95 = load i32, i32* @Imm64, align 4
  %96 = or i32 %94, %95
  br label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @Imm64, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi i32 [ %96, %93 ], [ %98, %97 ]
  br label %101

101:                                              ; preds = %99, %83
  %102 = phi i32 [ %88, %83 ], [ %100, %99 ]
  br label %103

103:                                              ; preds = %101, %71
  %104 = phi i32 [ %78, %71 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %53
  %106 = phi i32 [ %62, %53 ], [ %104, %103 ]
  br label %107

107:                                              ; preds = %105, %37
  %108 = phi i32 [ %48, %37 ], [ %106, %105 ]
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %18
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @fits_in_signed_byte(i32) #1

declare dso_local i64 @fits_in_unsigned_byte(i32) #1

declare dso_local i64 @fits_in_signed_word(i32) #1

declare dso_local i64 @fits_in_unsigned_word(i32) #1

declare dso_local i64 @fits_in_signed_long(i32) #1

declare dso_local i64 @fits_in_unsigned_long(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
