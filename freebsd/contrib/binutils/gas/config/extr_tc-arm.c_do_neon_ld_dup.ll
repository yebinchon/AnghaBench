; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_ld_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_ld_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.neon_type_el = type { i64, i32 }

@NS_NULL = common dso_local global i32 0, align 4
@N_8 = common dso_local global i32 0, align 4
@N_16 = common dso_local global i32 0, align 4
@N_32 = common dso_local global i32 0, align 4
@NT_invtype = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bad list length\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"can't use alignment with this instruction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_ld_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_ld_dup() #0 {
  %1 = alloca %struct.neon_type_el, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @NS_NULL, align 4
  %6 = load i32, i32* @N_8, align 4
  %7 = load i32, i32* @N_16, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @N_32, align 4
  %10 = or i32 %8, %9
  %11 = call { i64, i32 } @neon_check_type(i32 1, i32 %5, i32 %10)
  %12 = bitcast %struct.neon_type_el* %1 to { i64, i32 }*
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %14 = extractvalue { i64, i32 } %11, 0
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %16 = extractvalue { i64, i32 } %11, 1
  store i32 %16, i32* %15, align 8
  store i32 0, i32* %3, align 4
  %17 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NT_invtype, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %195

22:                                               ; preds = %0
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 3
  switch i32 %25, label %189 [
    i32 0, label %26
    i32 1, label %67
    i32 2, label %106
    i32 3, label %138
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NEON_REG_STRIDE(i32 %30)
  %32 = icmp ne i32 %31, 2
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = call i32 (i32, i32, i32*, i32, i32, i32, i32, i32, ...) @neon_alignment_bit(i32 %36, i32 %41, i32* %3, i32 16, i32 16, i32 32, i32 32, i32 -1)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @FAIL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %195

47:                                               ; preds = %26
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NEON_REGLIST_LENGTH(i32 %51)
  switch i32 %52, label %57 [
    i32 1, label %53
    i32 2, label %54
  ]

53:                                               ; preds = %47
  br label %60

54:                                               ; preds = %47
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %56 = or i32 %55, 32
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %60

57:                                               ; preds = %47
  %58 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @first_error(i32 %58)
  br label %195

60:                                               ; preds = %54, %53
  %61 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @neon_logbits(i32 %62)
  %64 = shl i32 %63, 6
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %66 = or i32 %65, %64
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %190

67:                                               ; preds = %22
  %68 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 8
  %75 = call i32 (i32, i32, i32*, i32, i32, i32, i32, i32, ...) @neon_alignment_bit(i32 %69, i32 %74, i32* %3, i32 8, i32 16, i32 16, i32 32, i32 32, i32 64, i32 -1)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @FAIL, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %195

80:                                               ; preds = %67
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @NEON_REGLIST_LENGTH(i32 %84)
  %86 = icmp ne i32 %85, 2
  %87 = zext i1 %86 to i32
  %88 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 @constraint(i32 %87, i32 %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @NEON_REG_STRIDE(i32 %93)
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %99

96:                                               ; preds = %80
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %98 = or i32 %97, 32
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %99

99:                                               ; preds = %96, %80
  %100 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @neon_logbits(i32 %101)
  %103 = shl i32 %102, 6
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %105 = or i32 %104, %103
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %190

106:                                              ; preds = %22
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %112 = call i32 @constraint(i32 %110, i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @NEON_REGLIST_LENGTH(i32 %116)
  %118 = icmp ne i32 %117, 3
  %119 = zext i1 %118 to i32
  %120 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %121 = call i32 @constraint(i32 %119, i32 %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @NEON_REG_STRIDE(i32 %125)
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %131

128:                                              ; preds = %106
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %130 = or i32 %129, 32
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %131

131:                                              ; preds = %128, %106
  %132 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @neon_logbits(i32 %133)
  %135 = shl i32 %134, 6
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %137 = or i32 %136, %135
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %190

138:                                              ; preds = %22
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 8
  store i32 %143, i32* %4, align 4
  %144 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 (i32, i32, i32*, i32, i32, i32, i32, i32, ...) @neon_alignment_bit(i32 %145, i32 %146, i32* %3, i32 8, i32 32, i32 16, i32 64, i32 32, i32 64, i32 32, i32 128, i32 -1)
  store i32 %147, i32* %2, align 4
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @FAIL, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  br label %195

152:                                              ; preds = %138
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @NEON_REGLIST_LENGTH(i32 %156)
  %158 = icmp ne i32 %157, 4
  %159 = zext i1 %158 to i32
  %160 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %161 = call i32 @constraint(i32 %159, i32 %160)
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @NEON_REG_STRIDE(i32 %165)
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %171

168:                                              ; preds = %152
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %170 = or i32 %169, 32
  store i32 %170, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %171

171:                                              ; preds = %168, %152
  %172 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 32
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i32, i32* %4, align 4
  %177 = icmp eq i32 %176, 128
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %180 = or i32 %179, 192
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %188

181:                                              ; preds = %175, %171
  %182 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @neon_logbits(i32 %183)
  %185 = shl i32 %184, 6
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %187 = or i32 %186, %185
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %188

188:                                              ; preds = %181, %178
  br label %190

189:                                              ; preds = %22
  br label %190

190:                                              ; preds = %189, %188, %131, %99, %60
  %191 = load i32, i32* %3, align 4
  %192 = shl i32 %191, 4
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %194 = or i32 %193, %192
  store i32 %194, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %195

195:                                              ; preds = %190, %151, %79, %57, %46, %21
  ret void
}

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @NEON_REG_STRIDE(i32) #1

declare dso_local i32 @neon_alignment_bit(i32, i32, i32*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @NEON_REGLIST_LENGTH(i32) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @neon_logbits(i32) #1

declare dso_local i32 @constraint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
