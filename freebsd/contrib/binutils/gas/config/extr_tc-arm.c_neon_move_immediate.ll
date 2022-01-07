; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_move_immediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_move_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.neon_type_el = type { i64, i32 }

@NS_DI = common dso_local global i32 0, align 4
@NS_QI = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_I8 = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_I64 = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@NT_invtype = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"operand size must be specified for immediate VMOV\00", align 1
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"immediate has bits set outside the operand size\00", align 1
@FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"immediate out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @neon_move_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neon_move_immediate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @NS_DI, align 4
  %10 = load i32, i32* @NS_QI, align 4
  %11 = load i32, i32* @NS_NULL, align 4
  %12 = call i32 @neon_select_shape(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @N_I8, align 4
  %15 = load i32, i32* @N_I16, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @N_I32, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @N_I64, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @N_F32, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @N_KEY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @N_EQK, align 4
  %26 = call { i64, i32 } @neon_check_type(i32 2, i32 %13, i32 %24, i32 %25)
  %27 = bitcast %struct.neon_type_el* %2 to { i64, i32 }*
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %29 = extractvalue { i64, i32 } %26, 0
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %31 = extractvalue { i64, i32 } %26, 1
  store i32 %31, i32* %30, align 8
  store i32 0, i32* %4, align 4
  %32 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NT_invtype, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @constraint(i32 %36, i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %40 = and i32 %39, 32
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %3, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %0
  %58 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 32
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = xor i32 %66, -1
  %68 = and i32 %62, %67
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %61, %57
  %71 = phi i1 [ false, %57 ], [ %69, %61 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @constraint(i32 %72, i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %8, align 4
  %82 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @neon_cmode_for_move_imm(i32 %79, i32 %80, i32 %81, i32* %5, i32* %6, i32 %83, i64 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @FAIL, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @neon_invert_size(i32* %3, i32* %4, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %8, align 4
  %100 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @neon_cmode_for_move_imm(i32 %97, i32 %98, i32 %99, i32* %5, i32* %6, i32 %101, i64 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @FAIL, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %89
  %108 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %109 = call i32 @first_error(i32 %108)
  br label %145

110:                                              ; preds = %89
  br label %111

111:                                              ; preds = %110, %70
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %113 = and i32 %112, -33
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %114 = load i32, i32* %6, align 4
  %115 = shl i32 %114, 5
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %117 = or i32 %116, %115
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @LOW4(i32 %121)
  %123 = shl i32 %122, 12
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %125 = or i32 %124, %123
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @HI1(i32 %129)
  %131 = shl i32 %130, 22
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %133 = or i32 %132, %131
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %134 = load i32, i32* %1, align 4
  %135 = call i32 @neon_quad(i32 %134)
  %136 = shl i32 %135, 6
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %138 = or i32 %137, %136
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %139 = load i32, i32* %7, align 4
  %140 = shl i32 %139, 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %142 = or i32 %141, %140
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @neon_write_immbits(i32 %143)
  br label %145

145:                                              ; preds = %111, %107
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @neon_cmode_for_move_imm(i32, i32, i32, i32*, i32*, i32, i64) #1

declare dso_local i32 @neon_invert_size(i32*, i32*, i32) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @LOW4(i32) #1

declare dso_local i32 @HI1(i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i32 @neon_write_immbits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
