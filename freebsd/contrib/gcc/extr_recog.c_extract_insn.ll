; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_extract_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_extract_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8**, i32*, i32*, i32*, i64, i32, i32* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i8*, i32 }

@recog_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@which_alternative = common dso_local global i32 0, align 4
@MAX_RECOG_OPERANDS = common dso_local global i32 0, align 4
@insn_data = common dso_local global %struct.TYPE_6__* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@OP_OUT = common dso_local global i32 0, align 4
@OP_INOUT = common dso_local global i32 0, align 4
@OP_IN = common dso_local global i32 0, align 4
@MAX_RECOG_ALTERNATIVES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extract_insn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @PATTERN(i32 %8)
  store i32 %9, i32* %6, align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 8), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 6), align 8
  store i32 -1, i32* @which_alternative, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  switch i32 %11, label %80 [
    i32 128, label %12
    i32 131, label %12
    i32 133, label %12
    i32 134, label %12
    i32 135, label %12
    i32 129, label %13
    i32 130, label %20
    i32 132, label %38
  ]

12:                                               ; preds = %1, %1, %1, %1, %1
  br label %217

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @SET_SRC(i32 %14)
  %16 = call i32 @GET_CODE(i32 %15)
  %17 = icmp eq i32 %16, 132
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %39

19:                                               ; preds = %13
  br label %81

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @XVECEXP(i32 %21, i32 0, i32 0)
  %23 = call i32 @GET_CODE(i32 %22)
  %24 = icmp eq i32 %23, 129
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @XVECEXP(i32 %26, i32 0, i32 0)
  %28 = call i32 @SET_SRC(i32 %27)
  %29 = call i32 @GET_CODE(i32 %28)
  %30 = icmp eq i32 %29, 132
  br i1 %30, label %36, label %31

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @XVECEXP(i32 %32, i32 0, i32 0)
  %34 = call i32 @GET_CODE(i32 %33)
  %35 = icmp eq i32 %34, 132
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %25
  br label %39

37:                                               ; preds = %31
  br label %81

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %36, %18
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @asm_noperands(i32 %40)
  store i32 %41, i32* %5, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 0), align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  %47 = icmp sle i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 4), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 7), align 8
  %53 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 2), align 8
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 5), align 8
  %55 = call i32 @decode_asm_operands(i32 %50, i32* %51, i32 %52, i8** %53, i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %44
  %59 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 2), align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %7, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 1), align 4
  br label %62

62:                                               ; preds = %66, %58
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 44
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 1), align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 1), align 4
  br label %62

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %44
  br label %168

77:                                               ; preds = %39
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @fatal_insn_not_found(i32 %78)
  br label %80

80:                                               ; preds = %1, %77
  br label %81

81:                                               ; preds = %80, %37, %19
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @recog_memoized(i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @fatal_insn_not_found(i32 %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %5, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 0), align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 1), align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 6), align 8
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @insn_extract(i32 %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %164, %89
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %167

114:                                              ; preds = %110
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 2), align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %125, i8** %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @insn_data, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 5), align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 5), align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @VOIDmode, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %114
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 4), align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @GET_MODE(i32 %157)
  %159 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 5), align 8
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %152, %114
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %3, align 4
  br label %110

167:                                              ; preds = %110
  br label %168

168:                                              ; preds = %167, %76
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %207, %168
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %210

173:                                              ; preds = %169
  %174 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 2), align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 61
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = load i32, i32* @OP_OUT, align 4
  br label %201

185:                                              ; preds = %173
  %186 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 2), align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 43
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = load i32, i32* @OP_INOUT, align 4
  br label %199

197:                                              ; preds = %185
  %198 = load i32, i32* @OP_IN, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  br label %201

201:                                              ; preds = %199, %183
  %202 = phi i32 [ %184, %183 ], [ %200, %199 ]
  %203 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 3), align 8
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  br label %207

207:                                              ; preds = %201
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %3, align 4
  br label %169

210:                                              ; preds = %169
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @recog_data, i32 0, i32 1), align 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* @MAX_RECOG_ALTERNATIVES, align 8
  %214 = icmp sle i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @gcc_assert(i32 %215)
  br label %217

217:                                              ; preds = %210, %12
  ret void
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @asm_noperands(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @decode_asm_operands(i32, i32*, i32, i8**, i32*) #1

declare dso_local i32 @fatal_insn_not_found(i32) #1

declare dso_local i32 @recog_memoized(i32) #1

declare dso_local i32 @insn_extract(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
