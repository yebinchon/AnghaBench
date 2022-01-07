; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_canon_true_dependence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_canon_true_dependence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLKmode = common dso_local global i64 0, align 8
@SCRATCH = common dso_local global i64 0, align 8
@ALIAS_SET_MEMORY_BARRIER = common dso_local global i64 0, align 8
@QImode = common dso_local global i32 0, align 4
@AND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @canon_true_dependence(i32 %0, i32 %1, i32 %2, i32 %3, i32 (i32, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (i32, i32)*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (i32, i32)* %4, i32 (i32, i32)** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = call i64 @MEM_VOLATILE_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @MEM_VOLATILE_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %133

21:                                               ; preds = %16, %5
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @GET_MODE(i32 %22)
  %24 = load i64, i64* @BLKmode, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @XEXP(i32 %27, i32 0)
  %29 = call i64 @GET_CODE(i32 %28)
  %30 = load i64, i64* @SCRATCH, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %133

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @GET_MODE(i32 %34)
  %36 = load i64, i64* @BLKmode, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @XEXP(i32 %39, i32 0)
  %41 = call i64 @GET_CODE(i32 %40)
  %42 = load i64, i64* @SCRATCH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %133

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @MEM_ALIAS_SET(i32 %46)
  %48 = load i64, i64* @ALIAS_SET_MEMORY_BARRIER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @MEM_ALIAS_SET(i32 %51)
  %53 = load i64, i64* @ALIAS_SET_MEMORY_BARRIER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %45
  store i32 1, i32* %6, align 4
  br label %133

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @DIFFERENT_ALIAS_SETS_P(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %133

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @MEM_READONLY_P(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %133

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @nonoverlapping_memrefs_p(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %133

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @XEXP(i32 %74, i32 0)
  %76 = call i32 @get_addr(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @GET_MODE(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @base_alias_check(i32 %77, i32 %78, i64 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %133

85:                                               ; preds = %73
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @canon_rtx(i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @GET_MODE_SIZE(i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @SIZE_FOR_MODE(i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @memrefs_conflict_p(i32 %89, i32 %90, i32 %92, i32 %93, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %133

97:                                               ; preds = %85
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @aliases_everything_p(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 1, i32* %6, align 4
  br label %133

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @QImode, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @GET_CODE(i32 %107)
  %109 = load i64, i64* @AND, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %102
  store i32 1, i32* %6, align 4
  br label %133

112:                                              ; preds = %106
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = load i64, i64* @BLKmode, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @GET_MODE(i32 %118)
  %120 = load i64, i64* @BLKmode, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %112
  store i32 1, i32* %6, align 4
  br label %133

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %129 = call i32 @fixed_scalar_and_varying_struct_p(i32 %124, i32 %125, i32 %126, i32 %127, i32 (i32, i32)* %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %123, %122, %111, %101, %96, %84, %72, %66, %61, %55, %44, %32, %20
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @MEM_ALIAS_SET(i32) #1

declare dso_local i64 @DIFFERENT_ALIAS_SETS_P(i32, i32) #1

declare dso_local i64 @MEM_READONLY_P(i32) #1

declare dso_local i64 @nonoverlapping_memrefs_p(i32, i32) #1

declare dso_local i32 @get_addr(i32) #1

declare dso_local i32 @base_alias_check(i32, i32, i64, i32) #1

declare dso_local i32 @canon_rtx(i32) #1

declare dso_local i32 @memrefs_conflict_p(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @SIZE_FOR_MODE(i32) #1

declare dso_local i64 @aliases_everything_p(i32) #1

declare dso_local i32 @fixed_scalar_and_varying_struct_p(i32, i32, i32, i32, i32 (i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
