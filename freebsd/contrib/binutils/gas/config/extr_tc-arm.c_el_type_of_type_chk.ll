; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_el_type_of_type_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_el_type_of_type_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_EQK = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@N_S8 = common dso_local global i32 0, align 4
@N_U8 = common dso_local global i32 0, align 4
@N_I8 = common dso_local global i32 0, align 4
@N_8 = common dso_local global i32 0, align 4
@N_P8 = common dso_local global i32 0, align 4
@N_S16 = common dso_local global i32 0, align 4
@N_U16 = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_16 = common dso_local global i32 0, align 4
@N_P16 = common dso_local global i32 0, align 4
@N_S32 = common dso_local global i32 0, align 4
@N_U32 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_32 = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_S64 = common dso_local global i32 0, align 4
@N_U64 = common dso_local global i32 0, align 4
@N_I64 = common dso_local global i32 0, align 4
@N_64 = common dso_local global i32 0, align 4
@N_F64 = common dso_local global i32 0, align 4
@NT_signed = common dso_local global i32 0, align 4
@NT_unsigned = common dso_local global i32 0, align 4
@NT_integer = common dso_local global i32 0, align 4
@NT_untyped = common dso_local global i32 0, align 4
@NT_poly = common dso_local global i32 0, align 4
@NT_float = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @el_type_of_type_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el_type_of_type_chk(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @N_EQK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @FAIL, align 4
  store i32 %13, i32* %4, align 4
  br label %164

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @N_S8, align 4
  %17 = load i32, i32* @N_U8, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @N_I8, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @N_8, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @N_P8, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %15, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32*, i32** %6, align 8
  store i32 8, i32* %28, align 4
  br label %79

29:                                               ; preds = %14
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @N_S16, align 4
  %32 = load i32, i32* @N_U16, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @N_I16, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @N_16, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @N_P16, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %30, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32*, i32** %6, align 8
  store i32 16, i32* %43, align 4
  br label %78

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @N_S32, align 4
  %47 = load i32, i32* @N_U32, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @N_I32, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @N_32, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @N_F32, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %45, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32*, i32** %6, align 8
  store i32 32, i32* %58, align 4
  br label %77

59:                                               ; preds = %44
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @N_S64, align 4
  %62 = load i32, i32* @N_U64, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @N_I64, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @N_64, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @N_F64, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %60, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i32*, i32** %6, align 8
  store i32 64, i32* %73, align 4
  br label %76

74:                                               ; preds = %59
  %75 = load i32, i32* @FAIL, align 4
  store i32 %75, i32* %4, align 4
  br label %164

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %42
  br label %79

79:                                               ; preds = %78, %27
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @N_S8, align 4
  %82 = load i32, i32* @N_S16, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @N_S32, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @N_S64, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %80, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* @NT_signed, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %162

93:                                               ; preds = %79
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @N_U8, align 4
  %96 = load i32, i32* @N_U16, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @N_U32, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @N_U64, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %94, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load i32, i32* @NT_unsigned, align 4
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  br label %161

107:                                              ; preds = %93
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @N_I8, align 4
  %110 = load i32, i32* @N_I16, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @N_I32, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @N_I64, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %108, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i32, i32* @NT_integer, align 4
  %120 = load i32*, i32** %5, align 8
  store i32 %119, i32* %120, align 4
  br label %160

121:                                              ; preds = %107
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @N_8, align 4
  %124 = load i32, i32* @N_16, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @N_32, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @N_64, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %122, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load i32, i32* @NT_untyped, align 4
  %134 = load i32*, i32** %5, align 8
  store i32 %133, i32* %134, align 4
  br label %159

135:                                              ; preds = %121
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @N_P8, align 4
  %138 = load i32, i32* @N_P16, align 4
  %139 = or i32 %137, %138
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* @NT_poly, align 4
  %144 = load i32*, i32** %5, align 8
  store i32 %143, i32* %144, align 4
  br label %158

145:                                              ; preds = %135
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @N_F32, align 4
  %148 = load i32, i32* @N_F64, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %146, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* @NT_float, align 4
  %154 = load i32*, i32** %5, align 8
  store i32 %153, i32* %154, align 4
  br label %157

155:                                              ; preds = %145
  %156 = load i32, i32* @FAIL, align 4
  store i32 %156, i32* %4, align 4
  br label %164

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %142
  br label %159

159:                                              ; preds = %158, %132
  br label %160

160:                                              ; preds = %159, %118
  br label %161

161:                                              ; preds = %160, %104
  br label %162

162:                                              ; preds = %161, %90
  %163 = load i32, i32* @SUCCESS, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %155, %74, %12
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
