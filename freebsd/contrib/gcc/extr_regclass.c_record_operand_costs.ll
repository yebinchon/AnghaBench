; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_record_operand_costs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_record_operand_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i32*, i32*, i32 }
%struct.costs = type { i32 }
%struct.reg_pref = type { i32 }

@MAX_RECOG_OPERANDS = common dso_local global i32 0, align 4
@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@init_cost = common dso_local global %struct.costs zeroinitializer, align 4
@SUBREG = common dso_local global i64 0, align 8
@MEM = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i32 0, align 4
@frequency = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.costs*, %struct.reg_pref*)* @record_operand_costs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_operand_costs(i32 %0, %struct.costs* %1, %struct.reg_pref* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.costs*, align 8
  %6 = alloca %struct.reg_pref*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.costs* %1, %struct.costs** %5, align 8
  store %struct.reg_pref* %2, %struct.reg_pref** %6, align 8
  %14 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8*, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %42, %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %17, i64 %32
  store i8* %30, i8** %33, align 8
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 2), align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %20, i64 %40
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %21

45:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %137, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %140

50:                                               ; preds = %46
  %51 = load %struct.costs*, %struct.costs** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.costs, %struct.costs* %51, i64 %53
  %55 = bitcast %struct.costs* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%struct.costs* @init_cost to i8*), i64 4, i1 false)
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @GET_CODE(i32 %60)
  %62 = load i64, i64* @SUBREG, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %50
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SUBREG_REG(i32 %69)
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %64, %50
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @MEM_P(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %75
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @GET_MODE(i32 %88)
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @XEXP(i32 %94, i32 0)
  %96 = load i32, i32* @MEM, align 4
  %97 = load i32, i32* @SCRATCH, align 4
  %98 = load i32, i32* @frequency, align 4
  %99 = mul nsw i32 %98, 2
  %100 = call i32 @record_address_regs(i32 %89, i32 %95, i32 0, i32 %96, i32 %97, i32 %99)
  br label %136

101:                                              ; preds = %75
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %17, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 112
  br i1 %109, label %123, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %17, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %17, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @EXTRA_ADDRESS_CONSTRAINT(i8 signext %116, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %110, %101
  %124 = load i32, i32* @VOIDmode, align 4
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ADDRESS, align 4
  %131 = load i32, i32* @SCRATCH, align 4
  %132 = load i32, i32* @frequency, align 4
  %133 = mul nsw i32 %132, 2
  %134 = call i32 @record_address_regs(i32 %124, i32 %129, i32 0, i32 %130, i32 %131, i32 %133)
  br label %135

135:                                              ; preds = %123, %110
  br label %136

136:                                              ; preds = %135, %83
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %46

140:                                              ; preds = %46
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %201, %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %204

146:                                              ; preds = %141
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %17, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 37
  br i1 %154, label %155, label %200

155:                                              ; preds = %146
  %156 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %157 = zext i32 %156 to i64
  %158 = call i8* @llvm.stacksave()
  store i8* %158, i8** %11, align 8
  %159 = alloca i8*, i64 %157, align 16
  store i64 %157, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %160

160:                                              ; preds = %172, %155
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %17, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %159, i64 %170
  store i8* %168, i8** %171, align 8
  br label %172

172:                                              ; preds = %164
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %160

175:                                              ; preds = %160
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %17, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %159, i64 %182
  store i8* %180, i8** %183, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %17, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %159, i64 %190
  store i8* %187, i8** %191, align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 4), align 8
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %194 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.costs*, %struct.costs** %5, align 8
  %197 = load %struct.reg_pref*, %struct.reg_pref** %6, align 8
  %198 = call i32 @record_reg_classes(i32 %192, i32 %193, i32* %194, i32* %20, i8** %159, i32 %195, %struct.costs* %196, %struct.reg_pref* %197)
  %199 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %199)
  br label %200

200:                                              ; preds = %175, %146
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %141

204:                                              ; preds = %141
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 4), align 8
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %207 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 3), align 8
  %208 = load i32, i32* %4, align 4
  %209 = load %struct.costs*, %struct.costs** %5, align 8
  %210 = load %struct.reg_pref*, %struct.reg_pref** %6, align 8
  %211 = call i32 @record_reg_classes(i32 %205, i32 %206, i32* %207, i32* %20, i8** %17, i32 %208, %struct.costs* %209, %struct.reg_pref* %210)
  %212 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %212)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @GET_CODE(i32) #3

declare dso_local i32 @SUBREG_REG(i32) #3

declare dso_local i64 @MEM_P(i32) #3

declare dso_local i32 @record_address_regs(i32, i32, i32, i32, i32, i32) #3

declare dso_local i32 @GET_MODE(i32) #3

declare dso_local i32 @XEXP(i32, i32) #3

declare dso_local i64 @EXTRA_ADDRESS_CONSTRAINT(i8 signext, i8*) #3

declare dso_local i32 @record_reg_classes(i32, i32, i32*, i32*, i8**, i32, %struct.costs*, %struct.reg_pref*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
