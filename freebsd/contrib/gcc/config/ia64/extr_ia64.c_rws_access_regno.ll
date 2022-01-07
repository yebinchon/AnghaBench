; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_rws_access_regno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_rws_access_regno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32 }
%struct.reg_flags = type { i64, i64, i64, i64 }

@NUM_REGS = common dso_local global i32 0, align 4
@rws_insn = common dso_local global %struct.TYPE_4__* null, align 8
@rws_sum = common dso_local global %struct.TYPE_4__* null, align 8
@BR_REGS = common dso_local global i64 0, align 8
@AR_PFS_REGNUM = common dso_local global i32 0, align 4
@PR_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.reg_flags*, i32)* @rws_access_regno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rws_access_regno(i32 %0, %struct.reg_flags* byval(%struct.reg_flags) align 8 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NUM_REGS, align 4
  %11 = icmp slt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @PR_REGNO_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %3
  %21 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %141

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_insn, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_insn, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @rws_update(%struct.TYPE_4__* %35, i32 %36, %struct.reg_flags* byval(%struct.reg_flags) align 8 %1, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %138 [
    i32 0, label %46
    i32 1, label %51
    i32 2, label %95
  ]

46:                                               ; preds = %24
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @rws_update(%struct.TYPE_4__* %47, i32 %48, %struct.reg_flags* byval(%struct.reg_flags) align 8 %1, i32 %49)
  br label %140

51:                                               ; preds = %24
  %52 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %90

64:                                               ; preds = %55, %51
  %65 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %89

77:                                               ; preds = %68, %64
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, 1
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %77
  br label %89

89:                                               ; preds = %88, %76
  br label %90

90:                                               ; preds = %89, %63
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @rws_update(%struct.TYPE_4__* %91, i32 %92, %struct.reg_flags* byval(%struct.reg_flags) align 8 %1, i32 %93)
  br label %140

95:                                               ; preds = %24
  %96 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %123

108:                                              ; preds = %99, %95
  %109 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %122

121:                                              ; preds = %112, %108
  store i32 1, i32* %7, align 4
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122, %107
  %124 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  store i64 %125, i64* %130, align 8
  %131 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  store i64 %132, i64* %137, align 8
  br label %140

138:                                              ; preds = %24
  %139 = call i32 (...) @gcc_unreachable()
  br label %140

140:                                              ; preds = %138, %123, %90, %46
  br label %220

141:                                              ; preds = %20
  %142 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %141
  %146 = load i32, i32* %5, align 4
  %147 = call i64 @REGNO_REG_CLASS(i32 %146)
  %148 = load i64, i64* @BR_REGS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @AR_PFS_REGNUM, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %145
  store i32 0, i32* %4, align 4
  br label %222

155:                                              ; preds = %150
  %156 = load i32, i32* %5, align 4
  %157 = call i64 @REGNO_REG_CLASS(i32 %156)
  %158 = load i64, i64* @PR_REGS, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %222

169:                                              ; preds = %160, %155
  br label %170

170:                                              ; preds = %169, %141
  %171 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  store i32 0, i32* %4, align 4
  br label %222

183:                                              ; preds = %174, %170
  %184 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %1, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  store i32 0, i32* %4, align 4
  br label %222

196:                                              ; preds = %187, %183
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  switch i32 %202, label %217 [
    i32 0, label %203
    i32 1, label %204
    i32 2, label %216
  ]

203:                                              ; preds = %196
  br label %219

204:                                              ; preds = %196
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rws_sum, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = xor i32 %210, 1
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  store i32 1, i32* %7, align 4
  br label %215

215:                                              ; preds = %214, %204
  br label %219

216:                                              ; preds = %196
  store i32 1, i32* %7, align 4
  br label %219

217:                                              ; preds = %196
  %218 = call i32 (...) @gcc_unreachable()
  br label %219

219:                                              ; preds = %217, %216, %215, %203
  br label %220

220:                                              ; preds = %219, %140
  %221 = load i32, i32* %7, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %220, %195, %182, %168, %154
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @PR_REGNO_P(i32) #1

declare dso_local i32 @rws_update(%struct.TYPE_4__*, i32, %struct.reg_flags* byval(%struct.reg_flags) align 8, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @REGNO_REG_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
