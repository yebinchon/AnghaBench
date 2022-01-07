; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_speculate_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_speculate_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@BEGIN_SPEC = common dso_local global i32 0, align 4
@COND_EXEC = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@ZERO_EXTEND = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_LDA = common dso_local global i32 0, align 4
@UNSPEC_LDS = common dso_local global i32 0, align 4
@UNSPEC_LDSA = common dso_local global i32 0, align 4
@BEGIN_CONTROL = common dso_local global i32 0, align 4
@BEGIN_DATA = common dso_local global i32 0, align 4
@SPEC_MODE_INVALID = common dso_local global i32 0, align 4
@SPEC_MODE_FOR_EXTEND_FIRST = common dso_local global i32 0, align 4
@SPEC_MODE_FOR_EXTEND_LAST = common dso_local global i32 0, align 4
@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*)* @ia64_speculate_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_speculate_insn(i64 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 1, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BEGIN_SPEC, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %3
  %25 = phi i1 [ false, %3 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @PATTERN(i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @COND_EXEC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @COND_EXEC_CODE(i64 %35)
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @GET_CODE(i64 %38)
  %40 = load i64, i64* @SET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %179

43:                                               ; preds = %37
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @SET_DEST(i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @REG_P(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @REGNO(i64 %50)
  %52 = call i64 @GR_REGNO_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @REGNO(i64 %55)
  %57 = call i64 @FP_REGNO_P(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %43
  store i32 -1, i32* %4, align 4
  br label %179

60:                                               ; preds = %54, %49
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @SET_SRC(i64 %61)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @GET_CODE(i64 %63)
  %65 = load i64, i64* @ZERO_EXTEND, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @XEXP(i64 %68, i32 0)
  store i64 %69, i64* %10, align 8
  store i32 1, i32* %14, align 4
  br label %71

70:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @GET_CODE(i64 %72)
  %74 = load i64, i64* @UNSPEC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @XINT(i64 %77, i32 1)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @UNSPEC_LDA, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @UNSPEC_LDS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @UNSPEC_LDSA, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %4, align 4
  br label %179

91:                                               ; preds = %86, %82, %76
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @UNSPEC_LDA, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @BEGIN_CONTROL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %95, %91
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @UNSPEC_LDS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @BEGIN_DATA, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104, %100
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @UNSPEC_LDSA, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %104, %95
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %109
  %115 = load i64, i64* %10, align 8
  %116 = call i64 @XVECEXP(i64 %115, i32 0, i32 0)
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @MEM_P(i64 %117)
  %119 = call i32 @gcc_assert(i32 %118)
  br label %120

120:                                              ; preds = %114, %71
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @MEM_P(i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i32 -1, i32* %4, align 4
  br label %179

125:                                              ; preds = %120
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @XEXP(i64 %126, i32 0)
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @REG_P(i64 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %179

132:                                              ; preds = %125
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @GET_MODE(i64 %133)
  %135 = call i32 @ia64_mode_to_int(i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @SPEC_MODE_INVALID, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %150, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load i32, i32* @SPEC_MODE_FOR_EXTEND_FIRST, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @SPEC_MODE_FOR_EXTEND_LAST, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %151, label %150

150:                                              ; preds = %146, %142, %132
  store i32 -1, i32* %4, align 4
  br label %179

151:                                              ; preds = %146, %139
  %152 = load i64, i64* %5, align 8
  %153 = call i32 @extract_insn_cached(i64 %152)
  %154 = load i64, i64* %9, align 8
  %155 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load i64, i64* %10, align 8
  %161 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  br label %165

165:                                              ; preds = %159, %151
  %166 = phi i1 [ false, %151 ], [ %164, %159 ]
  %167 = zext i1 %166 to i32
  %168 = call i32 @gcc_assert(i32 %167)
  %169 = load i64, i64* %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %14, align 4
  %176 = call i64 @ia64_gen_spec_insn(i64 %169, i32 %170, i32 %171, i32 %174, i32 %175)
  %177 = load i64*, i64** %7, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %165, %150, %131, %124, %90, %59, %42
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @COND_EXEC_CODE(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @GR_REGNO_P(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @FP_REGNO_P(i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i32 @ia64_mode_to_int(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @extract_insn_cached(i64) #1

declare dso_local i64 @ia64_gen_spec_insn(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
