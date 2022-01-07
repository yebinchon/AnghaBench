; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_classify_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_classify_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64)* }

@LABEL_REF = common dso_local global i64 0, align 8
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@SYMBOL_CONSTANT_POOL = common dso_local global i32 0, align 4
@TARGET_ABICALLS = common dso_local global i64 0, align 8
@TARGET_ABSOLUTE_ABICALLS = common dso_local global i64 0, align 8
@SYMBOL_GOT_LOCAL = common dso_local global i32 0, align 4
@SYMBOL_GENERAL = common dso_local global i32 0, align 4
@SYMBOL_REF = common dso_local global i64 0, align 8
@SYMBOL_TLS = common dso_local global i32 0, align 4
@mips_section_threshold = common dso_local global i64 0, align 8
@SYMBOL_SMALL_DATA = common dso_local global i32 0, align 4
@SYMBOL_GOT_GLOBAL = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_classify_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_classify_symbol(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @GET_CODE(i32 %4)
  %6 = load i64, i64* @LABEL_REF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i64, i64* @TARGET_MIPS16, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @SYMBOL_CONSTANT_POOL, align 4
  store i32 %12, i32* %2, align 4
  br label %107

13:                                               ; preds = %8
  %14 = load i64, i64* @TARGET_ABICALLS, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* @TARGET_ABSOLUTE_ABICALLS, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @SYMBOL_GOT_LOCAL, align 4
  store i32 %20, i32* %2, align 4
  br label %107

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @SYMBOL_GENERAL, align 4
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @SYMBOL_REF, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @SYMBOL_REF_TLS_MODEL(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @SYMBOL_TLS, align 4
  store i32 %34, i32* %2, align 4
  br label %107

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @CONSTANT_POOL_ADDRESS_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i64, i64* @TARGET_MIPS16, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @SYMBOL_CONSTANT_POOL, align 4
  store i32 %43, i32* %2, align 4
  br label %107

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @get_pool_mode(i32 %45)
  %47 = call i64 @GET_MODE_SIZE(i32 %46)
  %48 = load i64, i64* @mips_section_threshold, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @SYMBOL_SMALL_DATA, align 4
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @SYMBOL_REF_SMALL_P(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @SYMBOL_REF_WEAK(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @SYMBOL_SMALL_DATA, align 4
  store i32 %62, i32* %2, align 4
  br label %107

63:                                               ; preds = %57, %53
  %64 = load i64, i64* @TARGET_ABICALLS, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @SYMBOL_REF_DECL(i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @SYMBOL_REF_LOCAL_P(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @SYMBOL_GOT_GLOBAL, align 4
  store i32 %75, i32* %2, align 4
  br label %107

76:                                               ; preds = %70
  br label %99

77:                                               ; preds = %66
  %78 = load i32, i32* %3, align 4
  %79 = call i64 @SYMBOL_REF_DECL(i32 %78)
  %80 = call i64 @DECL_P(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load i32, i32* %3, align 4
  %84 = call i64 @SYMBOL_REF_DECL(i32 %83)
  %85 = call i64 @TREE_PUBLIC(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i64, i64* @TARGET_ABSOLUTE_ABICALLS, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %92 = load i32, i32* %3, align 4
  %93 = call i64 @SYMBOL_REF_DECL(i32 %92)
  %94 = call i64 %91(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90, %87
  %97 = load i32, i32* @SYMBOL_GOT_GLOBAL, align 4
  store i32 %97, i32* %2, align 4
  br label %107

98:                                               ; preds = %90, %82, %77
  br label %99

99:                                               ; preds = %98, %76
  %100 = load i64, i64* @TARGET_ABSOLUTE_ABICALLS, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @SYMBOL_GOT_LOCAL, align 4
  store i32 %103, i32* %2, align 4
  br label %107

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %63
  %106 = load i32, i32* @SYMBOL_GENERAL, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %102, %96, %74, %61, %50, %42, %33, %21, %19, %11
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @SYMBOL_REF_TLS_MODEL(i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @get_pool_mode(i32) #1

declare dso_local i64 @SYMBOL_REF_SMALL_P(i32) #1

declare dso_local i32 @SYMBOL_REF_WEAK(i32) #1

declare dso_local i64 @SYMBOL_REF_DECL(i32) #1

declare dso_local i32 @SYMBOL_REF_LOCAL_P(i32) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @TREE_PUBLIC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
