; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_debug_value_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_debug_value_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@INVALID_REGNUM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[%u] Bad next_regno for empty chain (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[%u %s] \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"[%u] Loop in regno chain\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"[%u] Bad oldest_regno (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"[%u] Non-empty reg in chain (%s %u %i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_value_data(%struct.value_data* %0) #0 {
  %2 = alloca %struct.value_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.value_data* %0, %struct.value_data** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @CLEAR_HARD_REG_SET(i32 %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %147, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %150

12:                                               ; preds = %8
  %13 = load %struct.value_data*, %struct.value_data** %2, align 8
  %14 = getelementptr inbounds %struct.value_data, %struct.value_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %146

23:                                               ; preds = %12
  %24 = load %struct.value_data*, %struct.value_data** %2, align 8
  %25 = getelementptr inbounds %struct.value_data, %struct.value_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VOIDmode, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %23
  %35 = load %struct.value_data*, %struct.value_data** %2, align 8
  %36 = getelementptr inbounds %struct.value_data, %struct.value_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @INVALID_REGNUM, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %34
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.value_data*, %struct.value_data** %2, align 8
  %49 = getelementptr inbounds %struct.value_data, %struct.value_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %55)
  br label %57

57:                                               ; preds = %45, %34
  br label %147

58:                                               ; preds = %23
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @SET_HARD_REG_BIT(i32 %59, i32 %60)
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.value_data*, %struct.value_data** %2, align 8
  %65 = getelementptr inbounds %struct.value_data, %struct.value_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @GET_MODE_NAME(i64 %71)
  %73 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %72)
  %74 = load %struct.value_data*, %struct.value_data** %2, align 8
  %75 = getelementptr inbounds %struct.value_data, %struct.value_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %134, %58
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @INVALID_REGNUM, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %143

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @TEST_HARD_REG_BIT(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %226

95:                                               ; preds = %86
  %96 = load %struct.value_data*, %struct.value_data** %2, align 8
  %97 = getelementptr inbounds %struct.value_data, %struct.value_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %95
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.value_data*, %struct.value_data** %2, align 8
  %110 = getelementptr inbounds %struct.value_data, %struct.value_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %116)
  br label %226

118:                                              ; preds = %95
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @SET_HARD_REG_BIT(i32 %119, i32 %120)
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.value_data*, %struct.value_data** %2, align 8
  %125 = getelementptr inbounds %struct.value_data, %struct.value_data* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @GET_MODE_NAME(i64 %131)
  %133 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %123, i8* %132)
  br label %134

134:                                              ; preds = %118
  %135 = load %struct.value_data*, %struct.value_data** %2, align 8
  %136 = getelementptr inbounds %struct.value_data, %struct.value_data* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %5, align 4
  br label %82

143:                                              ; preds = %82
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 @fputc(i8 signext 10, i32 %144)
  br label %146

146:                                              ; preds = %143, %12
  br label %147

147:                                              ; preds = %146, %57
  %148 = load i32, i32* %4, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %8

150:                                              ; preds = %8
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %223, %150
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %226

155:                                              ; preds = %151
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* %4, align 4
  %158 = call i64 @TEST_HARD_REG_BIT(i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %222, label %160

160:                                              ; preds = %155
  %161 = load %struct.value_data*, %struct.value_data** %2, align 8
  %162 = getelementptr inbounds %struct.value_data, %struct.value_data* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @VOIDmode, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %193, label %171

171:                                              ; preds = %160
  %172 = load %struct.value_data*, %struct.value_data** %2, align 8
  %173 = getelementptr inbounds %struct.value_data, %struct.value_data* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %193, label %182

182:                                              ; preds = %171
  %183 = load %struct.value_data*, %struct.value_data** %2, align 8
  %184 = getelementptr inbounds %struct.value_data, %struct.value_data* %183, i32 0, i32 0
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @INVALID_REGNUM, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %222

193:                                              ; preds = %182, %171, %160
  %194 = load i32, i32* @stderr, align 4
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.value_data*, %struct.value_data** %2, align 8
  %197 = getelementptr inbounds %struct.value_data, %struct.value_data* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i8* @GET_MODE_NAME(i64 %203)
  %205 = load %struct.value_data*, %struct.value_data** %2, align 8
  %206 = getelementptr inbounds %struct.value_data, %struct.value_data* %205, i32 0, i32 0
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.value_data*, %struct.value_data** %2, align 8
  %214 = getelementptr inbounds %struct.value_data, %struct.value_data* %213, i32 0, i32 0
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %195, i8* %204, i32 %212, i32 %220)
  br label %222

222:                                              ; preds = %193, %182, %155
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %4, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %4, align 4
  br label %151

226:                                              ; preds = %91, %106, %151
  ret void
}

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i8* @GET_MODE_NAME(i64) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
