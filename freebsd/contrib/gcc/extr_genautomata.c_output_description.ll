; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i8*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i8*, i8* }

@description = common dso_local global %struct.TYPE_14__* null, align 8
@dm_unit = common dso_local global i64 0, align 8
@output_description_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unit %s exlusion_set: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unit %s presence_set: \00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unit %s final_presence_set: \00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"unit %s absence_set: \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unit %s final_absence_set: \00", align 1
@dm_reserv = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"reservation %s: \00", align 1
@dm_insn_reserv = common dso_local global i64 0, align 8
@advance_cycle_insn_decl = common dso_local global %struct.TYPE_13__* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"insn reservation %s \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c": \00", align 1
@dm_bypass = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"bypass %d %s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\0A\0C\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_description() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %124, %0
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** @description, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %127

9:                                                ; preds = %3
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** @description, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %12, i64 %14
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %1, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @dm_unit, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %123

22:                                               ; preds = %9
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %24 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %23)
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load i32, i32* @output_description_file, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %31 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %30)
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %36 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %35)
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @output_unit_set_el_list(i32* %38)
  %40 = load i32, i32* @output_description_file, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %28, %22
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %44 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %43)
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load i32, i32* @output_description_file, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %51 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %50)
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %56 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %55)
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @output_pattern_set_el_list(i32* %58)
  %60 = load i32, i32* @output_description_file, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %48, %42
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %64 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %63)
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i32, i32* @output_description_file, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %71 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %70)
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %76 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %75)
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @output_pattern_set_el_list(i32* %78)
  %80 = load i32, i32* @output_description_file, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %68, %62
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %84 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %83)
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load i32, i32* @output_description_file, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %91 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %90)
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %96 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %95)
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @output_pattern_set_el_list(i32* %98)
  %100 = load i32, i32* @output_description_file, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %88, %82
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %104 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %103)
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load i32, i32* @output_description_file, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %111 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %110)
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %116 = call %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__* %115)
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @output_pattern_set_el_list(i32* %118)
  %120 = load i32, i32* @output_description_file, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %108, %102
  br label %123

123:                                              ; preds = %122, %9
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %2, align 4
  br label %3

127:                                              ; preds = %3
  %128 = load i32, i32* @output_description_file, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %219, %127
  %131 = load i32, i32* %2, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** @description, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %222

136:                                              ; preds = %130
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** @description, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %138, align 8
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %139, i64 %141
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %1, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @dm_reserv, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %136
  %150 = load i32, i32* @output_description_file, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %152 = call %struct.TYPE_16__* @DECL_RESERV(%struct.TYPE_13__* %151)
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %157 = call %struct.TYPE_16__* @DECL_RESERV(%struct.TYPE_13__* %156)
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @output_regexp(i32 %159)
  %161 = load i32, i32* @output_description_file, align 4
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %218

163:                                              ; preds = %136
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @dm_insn_reserv, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %195

169:                                              ; preds = %163
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** @advance_cycle_insn_decl, align 8
  %172 = icmp ne %struct.TYPE_13__* %170, %171
  br i1 %172, label %173, label %195

173:                                              ; preds = %169
  %174 = load i32, i32* @output_description_file, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %176 = call %struct.TYPE_17__* @DECL_INSN_RESERV(%struct.TYPE_13__* %175)
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  %180 = load i32, i32* @output_description_file, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %182 = call %struct.TYPE_17__* @DECL_INSN_RESERV(%struct.TYPE_13__* %181)
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @print_rtl(i32 %180, i32 %184)
  %186 = load i32, i32* @output_description_file, align 4
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %189 = call %struct.TYPE_17__* @DECL_INSN_RESERV(%struct.TYPE_13__* %188)
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @output_regexp(i32 %191)
  %193 = load i32, i32* @output_description_file, align 4
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %217

195:                                              ; preds = %169, %163
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @dm_bypass, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %195
  %202 = load i32, i32* @output_description_file, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %204 = call %struct.TYPE_12__* @DECL_BYPASS(%struct.TYPE_13__* %203)
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %208 = call %struct.TYPE_12__* @DECL_BYPASS(%struct.TYPE_13__* %207)
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %212 = call %struct.TYPE_12__* @DECL_BYPASS(%struct.TYPE_13__* %211)
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %206, i8* %210, i8* %214)
  br label %216

216:                                              ; preds = %201, %195
  br label %217

217:                                              ; preds = %216, %173
  br label %218

218:                                              ; preds = %217, %149
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %2, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %2, align 4
  br label %130

222:                                              ; preds = %130
  %223 = load i32, i32* @output_description_file, align 4
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_15__* @DECL_UNIT(%struct.TYPE_13__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @output_unit_set_el_list(i32*) #1

declare dso_local i32 @output_pattern_set_el_list(i32*) #1

declare dso_local %struct.TYPE_16__* @DECL_RESERV(%struct.TYPE_13__*) #1

declare dso_local i32 @output_regexp(i32) #1

declare dso_local %struct.TYPE_17__* @DECL_INSN_RESERV(%struct.TYPE_13__*) #1

declare dso_local i32 @print_rtl(i32, i32) #1

declare dso_local %struct.TYPE_12__* @DECL_BYPASS(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
