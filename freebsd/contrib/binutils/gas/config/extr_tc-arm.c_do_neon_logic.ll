; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_logic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_logic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }
%struct.neon_type_el = type { i64, i32 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NS_DDD = common dso_local global i32 0, align 4
@NS_QQQ = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_IGNORE_TYPE = common dso_local global i32 0, align 4
@NS_DI = common dso_local global i32 0, align 4
@NS_QI = common dso_local global i32 0, align 4
@N_I8 = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_I64 = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@NT_invtype = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_logic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_logic() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.neon_type_el, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load i32, i32* @NS_DDD, align 4
  %21 = load i32, i32* @NS_QQQ, align 4
  %22 = load i32, i32* @NS_NULL, align 4
  %23 = call i32 @neon_select_shape(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @N_IGNORE_TYPE, align 4
  %26 = call { i64, i32 } (i32, i32, i32, ...) @neon_check_type(i32 3, i32 %24, i32 %25)
  %27 = bitcast %struct.neon_type_el* %2 to { i64, i32 }*
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %29 = extractvalue { i64, i32 } %26, 0
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %31 = extractvalue { i64, i32 } %26, 1
  store i32 %31, i32* %30, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %33 = call i32 @NEON_ENC_INTEGER(i32 %32)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @neon_quad(i32 %34)
  %36 = call i32 @neon_three_same(i32 %35, i32 0, i32 -1)
  br label %161

37:                                               ; preds = %13, %0
  %38 = load i32, i32* @NS_DI, align 4
  %39 = load i32, i32* @NS_QI, align 4
  %40 = load i32, i32* @NS_NULL, align 4
  %41 = call i32 @neon_select_shape(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @N_I8, align 4
  %44 = load i32, i32* @N_I16, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @N_I32, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @N_I64, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @N_F32, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @N_KEY, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @N_EQK, align 4
  %55 = call { i64, i32 } (i32, i32, i32, ...) @neon_check_type(i32 2, i32 %42, i32 %53, i32 %54)
  %56 = bitcast %struct.neon_type_el* %4 to { i64, i32 }*
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %56, i32 0, i32 0
  %58 = extractvalue { i64, i32 } %55, 0
  store i64 %58, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %56, i32 0, i32 1
  %60 = extractvalue { i64, i32 } %55, 1
  store i32 %60, i32* %59, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %62 = and i32 %61, 268435455
  store i32 %62, i32* %5, align 4
  %63 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NT_invtype, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %37
  br label %161

68:                                               ; preds = %37
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %70 = call i32 @NEON_ENC_IMMED(i32 %69)
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %6, align 4
  %75 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 64
  br i1 %77, label %78, label %96

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  br label %91

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ %89, %85 ], [ 0, %90 ]
  %93 = icmp ne i32 %79, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 -559038737, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %68
  %97 = load i32, i32* %5, align 4
  switch i32 %97, label %124 [
    i32 130, label %98
    i32 128, label %103
    i32 131, label %108
    i32 129, label %116
  ]

98:                                               ; preds = %96
  %99 = load i32, i32* %6, align 4
  %100 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @neon_cmode_for_logic_imm(i32 %99, i32* %6, i32 %101)
  store i32 %102, i32* %7, align 4
  br label %126

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @neon_cmode_for_logic_imm(i32 %104, i32* %6, i32 %106)
  store i32 %107, i32* %7, align 4
  br label %126

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @neon_invert_size(i32* %6, i32 0, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @neon_cmode_for_logic_imm(i32 %112, i32* %6, i32 %114)
  store i32 %115, i32* %7, align 4
  br label %126

116:                                              ; preds = %96
  %117 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @neon_invert_size(i32* %6, i32 0, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %4, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @neon_cmode_for_logic_imm(i32 %120, i32* %6, i32 %122)
  store i32 %123, i32* %7, align 4
  br label %126

124:                                              ; preds = %96
  %125 = call i32 (...) @abort() #3
  unreachable

126:                                              ; preds = %116, %108, %103, %98
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @FAIL, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %161

131:                                              ; preds = %126
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @neon_quad(i32 %132)
  %134 = shl i32 %133, 6
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %136 = or i32 %135, %134
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @LOW4(i32 %140)
  %142 = shl i32 %141, 12
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %144 = or i32 %143, %142
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @HI1(i32 %148)
  %150 = shl i32 %149, 22
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %152 = or i32 %151, %150
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %153 = load i32, i32* %7, align 4
  %154 = shl i32 %153, 8
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %156 = or i32 %155, %154
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @neon_write_immbits(i32 %157)
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %160 = call i32 @neon_dp_fixup(i32 %159)
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %161

161:                                              ; preds = %67, %130, %131, %19
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, ...) #1

declare dso_local i32 @NEON_ENC_INTEGER(i32) #1

declare dso_local i32 @neon_three_same(i32, i32, i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i32 @NEON_ENC_IMMED(i32) #1

declare dso_local i32 @neon_cmode_for_logic_imm(i32, i32*, i32) #1

declare dso_local i32 @neon_invert_size(i32*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @LOW4(i32) #1

declare dso_local i32 @HI1(i32) #1

declare dso_local i32 @neon_write_immbits(i32) #1

declare dso_local i32 @neon_dp_fixup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
