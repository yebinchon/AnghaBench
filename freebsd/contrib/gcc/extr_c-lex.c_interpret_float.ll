; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_interpret_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_interpret_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@CPP_N_DEFAULT = common dso_local global i32 0, align 4
@CPP_N_MEDIUM = common dso_local global i32 0, align 4
@CPP_N_DFLOAT = common dso_local global i32 0, align 4
@CPP_N_WIDTH = common dso_local global i32 0, align 4
@CPP_N_LARGE = common dso_local global i32 0, align 4
@dfloat128_type_node = common dso_local global i32 0, align 4
@CPP_N_SMALL = common dso_local global i32 0, align 4
@dfloat32_type_node = common dso_local global i32 0, align 4
@dfloat64_type_node = common dso_local global i32 0, align 4
@long_double_type_node = common dso_local global i32 0, align 4
@flag_single_precision_constant = common dso_local global i64 0, align 8
@float_type_node = common dso_local global i32 0, align 4
@double_type_node = common dso_local global i32 0, align 4
@CPP_N_IMAGINARY = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"floating constant exceeds range of %qT\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @interpret_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_float(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CPP_N_DEFAULT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @CPP_N_DEFAULT, align 4
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CPP_N_MEDIUM, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CPP_N_DFLOAT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CPP_N_WIDTH, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CPP_N_LARGE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @dfloat128_type_node, align 4
  store i32 %33, i32* %5, align 4
  br label %45

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CPP_N_WIDTH, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CPP_N_SMALL, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @dfloat32_type_node, align 4
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @dfloat64_type_node, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %32
  br label %69

46:                                               ; preds = %21
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @CPP_N_WIDTH, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @CPP_N_LARGE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @long_double_type_node, align 4
  store i32 %53, i32* %5, align 4
  br label %68

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CPP_N_WIDTH, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CPP_N_SMALL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @flag_single_precision_constant, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %54
  %64 = load i32, i32* @float_type_node, align 4
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @double_type_node, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %63
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %45
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @CPP_N_DFLOAT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %80, 2
  store i64 %81, i64* %9, align 8
  br label %100

82:                                               ; preds = %69
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @CPP_N_WIDTH, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @CPP_N_MEDIUM, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @CPP_N_IMAGINARY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, 1
  %103 = call i64 @alloca(i64 %102)
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %8, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @memcpy(i8* %105, i32 %110, i64 %111)
  %113 = load i8*, i8** %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @TYPE_MODE(i32 %117)
  %119 = call i32 @real_from_string3(i32* %7, i8* %116, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = call i64 @REAL_VALUE_ISINF(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %100
  %124 = load i64, i64* @pedantic, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %126, %123, %100
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @build_real(i32 %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @CPP_N_IMAGINARY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load i32, i32* @NULL_TREE, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @integer_zero_node, align 4
  %141 = call i32 @convert(i32 %139, i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @build_complex(i32 %138, i32 %141, i32 %142)
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %137, %129
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i64 @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @real_from_string3(i32*, i8*, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @REAL_VALUE_ISINF(i32) #1

declare dso_local i32 @pedwarn(i8*, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @build_complex(i32, i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
