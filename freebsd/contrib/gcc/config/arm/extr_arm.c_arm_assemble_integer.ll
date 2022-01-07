; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_assemble_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_assemble_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\09.word\09\00", align 1
@asm_out_file = common dso_local global i32 0, align 4
@NEED_GOT_RELOC = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@making_const_table = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"(GOTOFF)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(GOT)\00", align 1
@CONST_VECTOR = common dso_local global i64 0, align 8
@BIGGEST_ALIGNMENT = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @arm_assemble_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_assemble_integer(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @UNITS_PER_WORD, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %14
  %18 = load i32, i32* @asm_out_file, align 4
  %19 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @asm_out_file, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @output_addr_const(i32 %20, i32 %21)
  %23 = load i64, i64* @NEED_GOT_RELOC, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %17
  %26 = load i64, i64* @flag_pic, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load i64, i64* @making_const_table, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @GET_CODE(i32 %32)
  %34 = load i64, i64* @SYMBOL_REF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @LABEL_REF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @GET_CODE(i32 %42)
  %44 = load i64, i64* @SYMBOL_REF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @CONSTANT_POOL_ADDRESS_P(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @SYMBOL_REF_LOCAL_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @asm_out_file, align 4
  %56 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %69

57:                                               ; preds = %50, %41
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @GET_CODE(i32 %58)
  %60 = load i64, i64* @LABEL_REF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @asm_out_file, align 4
  %64 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @asm_out_file, align 4
  %67 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %36, %28, %25, %17
  %71 = load i32, i32* @asm_out_file, align 4
  %72 = call i32 @fputc(i8 signext 10, i32 %71)
  store i32 1, i32* %4, align 4
  br label %125

73:                                               ; preds = %14, %3
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @GET_MODE(i32 %74)
  %76 = call i64 @arm_vector_mode_supported_p(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @GET_CODE(i32 %79)
  %81 = load i64, i64* @CONST_VECTOR, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @gcc_assert(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @CONST_VECTOR_NUNITS(i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @GET_MODE(i32 %87)
  switch i32 %88, label %92 [
    i32 130, label %89
    i32 129, label %90
    i32 128, label %91
  ]

89:                                               ; preds = %78
  store i32 4, i32* %6, align 4
  br label %94

90:                                               ; preds = %78
  store i32 2, i32* %6, align 4
  br label %94

91:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %94

92:                                               ; preds = %78
  %93 = call i32 (...) @gcc_unreachable()
  br label %94

94:                                               ; preds = %92, %91, %90, %89
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @CONST_VECTOR_ELT(i32 %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  br label %113

109:                                              ; preds = %99
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @BITS_PER_UNIT, align 4
  %112 = mul i32 %110, %111
  br label %113

113:                                              ; preds = %109, %107
  %114 = phi i32 [ %108, %107 ], [ %112, %109 ]
  %115 = call i32 @assemble_integer(i32 %103, i32 %104, i32 %114, i32 1)
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %95

119:                                              ; preds = %95
  store i32 1, i32* %4, align 4
  br label %125

120:                                              ; preds = %73
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @default_assemble_integer(i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %119, %70
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @output_addr_const(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i32) #1

declare dso_local i64 @SYMBOL_REF_LOCAL_P(i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i64 @arm_vector_mode_supported_p(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @CONST_VECTOR_NUNITS(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

declare dso_local i32 @assemble_integer(i32, i32, i32, i32) #1

declare dso_local i32 @default_assemble_integer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
