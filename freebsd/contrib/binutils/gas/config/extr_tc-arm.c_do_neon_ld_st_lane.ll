; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_ld_st_lane.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_ld_st_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.neon_type_el = type { i32, i64 }

@NS_NULL = common dso_local global i32 0, align 4
@N_8 = common dso_local global i32 0, align 4
@N_16 = common dso_local global i32 0, align 4
@N_32 = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NT_invtype = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"bad list length\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"scalar index out of range\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"stride of 2 unavailable when element size is 8\00", align 1
@FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"can't use alignment with this instruction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_ld_st_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_ld_st_lane() #0 {
  %1 = alloca %struct.neon_type_el, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @NS_NULL, align 4
  %11 = load i32, i32* @N_8, align 4
  %12 = load i32, i32* @N_16, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @N_32, align 4
  %15 = or i32 %13, %14
  %16 = call { i32, i64 } @neon_check_type(i32 1, i32 %10, i32 %15)
  %17 = bitcast %struct.neon_type_el* %1 to { i32, i64 }*
  %18 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %17, i32 0, i32 0
  %19 = extractvalue { i32, i64 } %16, 0
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %17, i32 0, i32 1
  %21 = extractvalue { i32, i64 } %16, 1
  store i64 %21, i64* %20, align 8
  store i32 0, i32* %3, align 4
  %22 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @neon_logbits(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 3
  store i32 %32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 64, %34
  store i32 %35, i32* %7, align 4
  %36 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NT_invtype, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %0
  br label %190

41:                                               ; preds = %0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NEON_REGLIST_LENGTH(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp ne i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @constraint(i32 %50, i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @NEON_LANE(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @constraint(i32 %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %41
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @NEON_REG_STRIDE(i32 %69)
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 8
  br label %76

76:                                               ; preds = %72, %65, %41
  %77 = phi i1 [ false, %65 ], [ false, %41 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 @constraint(i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %158 [
    i32 0, label %82
    i32 1, label %106
    i32 2, label %122
    i32 3, label %129
  ]

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i32, i32, i32*, i32, i32, i32, i32, i32, ...) @neon_alignment_bit(i32 %84, i32 %85, i32* %3, i32 16, i32 16, i32 32, i32 32, i32 -1)
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @FAIL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %190

91:                                               ; preds = %82
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  store i32 0, i32* %8, align 4
  %95 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %99 [
    i32 16, label %97
    i32 32, label %98
  ]

97:                                               ; preds = %94
  store i32 1, i32* %8, align 4
  br label %100

98:                                               ; preds = %94
  store i32 3, i32* %8, align 4
  br label %100

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %98, %97
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %101, 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %104 = or i32 %103, %102
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %105

105:                                              ; preds = %100, %91
  br label %159

106:                                              ; preds = %76
  %107 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 (i32, i32, i32*, i32, i32, i32, i32, i32, ...) @neon_alignment_bit(i32 %108, i32 %109, i32* %3, i32 8, i32 16, i32 16, i32 32, i32 32, i32 64, i32 -1)
  store i32 %110, i32* %2, align 4
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @FAIL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %190

115:                                              ; preds = %106
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %120 = or i32 %119, 16
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %121

121:                                              ; preds = %118, %115
  br label %159

122:                                              ; preds = %76
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %128 = call i32 @constraint(i32 %126, i32 %127)
  br label %159

129:                                              ; preds = %76
  %130 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 (i32, i32, i32*, i32, i32, i32, i32, i32, ...) @neon_alignment_bit(i32 %131, i32 %132, i32* %3, i32 8, i32 32, i32 16, i32 64, i32 32, i32 64, i32 32, i32 128, i32 -1)
  store i32 %133, i32* %2, align 4
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @FAIL, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %190

138:                                              ; preds = %129
  %139 = load i32, i32* %3, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  %142 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  switch i32 %143, label %151 [
    i32 8, label %144
    i32 16, label %145
    i32 32, label %146
  ]

144:                                              ; preds = %141
  store i32 1, i32* %9, align 4
  br label %152

145:                                              ; preds = %141
  store i32 1, i32* %9, align 4
  br label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 64
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 2
  store i32 %150, i32* %9, align 4
  br label %152

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %146, %145, %144
  %153 = load i32, i32* %9, align 4
  %154 = shl i32 %153, 4
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %156 = or i32 %155, %154
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %157

157:                                              ; preds = %152, %138
  br label %159

158:                                              ; preds = %76
  br label %159

159:                                              ; preds = %158, %157, %122, %121, %105
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %159
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @NEON_REG_STRIDE(i32 %166)
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 4, %170
  %172 = shl i32 1, %171
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %174 = or i32 %173, %172
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %175

175:                                              ; preds = %169, %162, %159
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @NEON_LANE(i32 %179)
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, 5
  %183 = shl i32 %180, %182
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %185 = or i32 %184, %183
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %186 = load i32, i32* %4, align 4
  %187 = shl i32 %186, 10
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %189 = or i32 %188, %187
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %190

190:                                              ; preds = %175, %137, %114, %90, %40
  ret void
}

declare dso_local { i32, i64 } @neon_check_type(i32, i32, i32) #1

declare dso_local i32 @neon_logbits(i32) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @NEON_REGLIST_LENGTH(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @NEON_LANE(i32) #1

declare dso_local i32 @NEON_REG_STRIDE(i32) #1

declare dso_local i32 @neon_alignment_bit(i32, i32, i32*, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
