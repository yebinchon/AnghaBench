; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_true_dependence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_true_dependence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLKmode = common dso_local global i64 0, align 8
@SCRATCH = common dso_local global i64 0, align 8
@ALIAS_SET_MEMORY_BARRIER = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@LABEL_REF = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@QImode = common dso_local global i32 0, align 4
@AND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @true_dependence(i64 %0, i32 %1, i64 %2, i32 (i64, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32 (i64, i32)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 (i64, i32)* %3, i32 (i64, i32)** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @MEM_VOLATILE_P(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @MEM_VOLATILE_P(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %166

21:                                               ; preds = %16, %4
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @GET_MODE(i64 %22)
  %24 = load i64, i64* @BLKmode, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @XEXP(i64 %27, i32 0)
  %29 = call i64 @GET_CODE(i64 %28)
  %30 = load i64, i64* @SCRATCH, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %166

33:                                               ; preds = %26, %21
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @GET_MODE(i64 %34)
  %36 = load i64, i64* @BLKmode, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @XEXP(i64 %39, i32 0)
  %41 = call i64 @GET_CODE(i64 %40)
  %42 = load i64, i64* @SCRATCH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %166

45:                                               ; preds = %38, %33
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @MEM_ALIAS_SET(i64 %46)
  %48 = load i64, i64* @ALIAS_SET_MEMORY_BARRIER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @MEM_ALIAS_SET(i64 %51)
  %53 = load i64, i64* @ALIAS_SET_MEMORY_BARRIER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %45
  store i32 1, i32* %5, align 4
  br label %166

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @DIFFERENT_ALIAS_SETS_P(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %166

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @MEM_READONLY_P(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %166

67:                                               ; preds = %62
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @nonoverlapping_memrefs_p(i64 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %166

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @VOIDmode, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @GET_MODE(i64 %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @XEXP(i64 %82, i32 0)
  %84 = call i64 @get_addr(i64 %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @XEXP(i64 %85, i32 0)
  %87 = call i64 @get_addr(i64 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @find_base_term(i64 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %81
  %93 = load i64, i64* %12, align 8
  %94 = call i64 @GET_CODE(i64 %93)
  %95 = load i64, i64* @LABEL_REF, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %12, align 8
  %99 = call i64 @GET_CODE(i64 %98)
  %100 = load i64, i64* @SYMBOL_REF, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i64, i64* %12, align 8
  %104 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %92
  store i32 0, i32* %5, align 4
  br label %166

107:                                              ; preds = %102, %97, %81
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i64 @GET_MODE(i64 %110)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @base_alias_check(i64 %108, i64 %109, i64 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %166

116:                                              ; preds = %107
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @canon_rtx(i64 %117)
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i64 @canon_rtx(i64 %119)
  store i64 %120, i64* %11, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @GET_MODE_SIZE(i32 %121)
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @SIZE_FOR_MODE(i64 %124)
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @memrefs_conflict_p(i32 %122, i64 %123, i32 %125, i64 %126, i32 0)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %166

130:                                              ; preds = %116
  %131 = load i64, i64* %8, align 8
  %132 = call i64 @aliases_everything_p(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 1, i32* %5, align 4
  br label %166

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @QImode, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load i64, i64* %11, align 8
  %141 = call i64 @GET_CODE(i64 %140)
  %142 = load i64, i64* @AND, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139, %135
  store i32 1, i32* %5, align 4
  br label %166

145:                                              ; preds = %139
  %146 = load i32, i32* %7, align 4
  %147 = zext i32 %146 to i64
  %148 = load i64, i64* @BLKmode, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load i64, i64* %8, align 8
  %152 = call i64 @GET_MODE(i64 %151)
  %153 = load i64, i64* @BLKmode, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %150, %145
  store i32 1, i32* %5, align 4
  br label %166

156:                                              ; preds = %150
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i32 (i64, i32)*, i32 (i64, i32)** %9, align 8
  %162 = call i32 @fixed_scalar_and_varying_struct_p(i64 %157, i64 %158, i64 %159, i64 %160, i32 (i64, i32)* %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %156, %155, %144, %134, %129, %115, %106, %72, %66, %61, %55, %44, %32, %20
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i64 @MEM_VOLATILE_P(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @MEM_ALIAS_SET(i64) #1

declare dso_local i64 @DIFFERENT_ALIAS_SETS_P(i64, i64) #1

declare dso_local i64 @MEM_READONLY_P(i64) #1

declare dso_local i64 @nonoverlapping_memrefs_p(i64, i64) #1

declare dso_local i64 @get_addr(i64) #1

declare dso_local i64 @find_base_term(i64) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i64) #1

declare dso_local i32 @base_alias_check(i64, i64, i64, i32) #1

declare dso_local i64 @canon_rtx(i64) #1

declare dso_local i32 @memrefs_conflict_p(i32, i64, i32, i64, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @SIZE_FOR_MODE(i64) #1

declare dso_local i64 @aliases_everything_p(i64) #1

declare dso_local i32 @fixed_scalar_and_varying_struct_p(i64, i64, i64, i64, i32 (i64, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
