; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_write_dependence_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_write_dependence_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLKmode = common dso_local global i64 0, align 8
@SCRATCH = common dso_local global i64 0, align 8
@ALIAS_SET_MEMORY_BARRIER = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@rtx_addr_varies_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @write_dependence_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_dependence_p(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @MEM_VOLATILE_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @MEM_VOLATILE_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %158

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @GET_MODE(i64 %21)
  %23 = load i64, i64* @BLKmode, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @XEXP(i64 %26, i32 0)
  %28 = call i64 @GET_CODE(i64 %27)
  %29 = load i64, i64* @SCRATCH, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %158

32:                                               ; preds = %25, %20
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @GET_MODE(i64 %33)
  %35 = load i64, i64* @BLKmode, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @XEXP(i64 %38, i32 0)
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @SCRATCH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %158

44:                                               ; preds = %37, %32
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @MEM_ALIAS_SET(i64 %45)
  %47 = load i64, i64* @ALIAS_SET_MEMORY_BARRIER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @MEM_ALIAS_SET(i64 %50)
  %52 = load i64, i64* @ALIAS_SET_MEMORY_BARRIER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  store i32 1, i32* %4, align 4
  br label %158

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @DIFFERENT_ALIAS_SETS_P(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %158

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @MEM_READONLY_P(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %158

69:                                               ; preds = %64, %61
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @nonoverlapping_memrefs_p(i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %158

75:                                               ; preds = %69
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @XEXP(i64 %76, i32 0)
  %78 = call i64 @get_addr(i64 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @XEXP(i64 %79, i32 0)
  %81 = call i64 @get_addr(i64 %80)
  store i64 %81, i64* %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %75
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @find_base_term(i64 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @GET_CODE(i64 %90)
  %92 = load i64, i64* @LABEL_REF, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %11, align 8
  %96 = call i64 @GET_CODE(i64 %95)
  %97 = load i64, i64* @SYMBOL_REF, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %89
  store i32 0, i32* %4, align 4
  br label %158

104:                                              ; preds = %99, %94, %84
  br label %105

105:                                              ; preds = %104, %75
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @GET_MODE(i64 %108)
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @GET_MODE(i64 %110)
  %112 = call i32 @base_alias_check(i64 %106, i64 %107, i64 %109, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %158

115:                                              ; preds = %105
  %116 = load i64, i64* %8, align 8
  %117 = call i64 @canon_rtx(i64 %116)
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @canon_rtx(i64 %118)
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @SIZE_FOR_MODE(i64 %120)
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @SIZE_FOR_MODE(i64 %123)
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @memrefs_conflict_p(i32 %121, i64 %122, i32 %124, i64 %125, i32 0)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %158

129:                                              ; preds = %115
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i32, i32* @rtx_addr_varies_p, align 4
  %135 = call i64 @fixed_scalar_and_varying_struct_p(i64 %130, i64 %131, i64 %132, i64 %133, i32 %134)
  store i64 %135, i64* %10, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %5, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @aliases_everything_p(i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %139, %129
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %6, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @aliases_everything_p(i64 %148)
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  br label %152

152:                                              ; preds = %147, %143
  %153 = phi i1 [ false, %143 ], [ %151, %147 ]
  %154 = xor i1 %153, true
  br label %155

155:                                              ; preds = %152, %139
  %156 = phi i1 [ false, %139 ], [ %154, %152 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %155, %128, %114, %103, %74, %68, %60, %54, %43, %31, %19
  %159 = load i32, i32* %4, align 4
  ret i32 %159
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

declare dso_local i32 @base_alias_check(i64, i64, i64, i64) #1

declare dso_local i64 @canon_rtx(i64) #1

declare dso_local i32 @memrefs_conflict_p(i32, i64, i32, i64, i32) #1

declare dso_local i32 @SIZE_FOR_MODE(i64) #1

declare dso_local i64 @fixed_scalar_and_varying_struct_p(i64, i64, i64, i64, i32) #1

declare dso_local i32 @aliases_everything_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
