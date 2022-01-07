; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_36__**, i32, i32 }
%struct.TYPE_36__ = type { i64, i32 }
%struct.bypass_decl = type { i64 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__*, i32, i32 }
%struct.TYPE_30__ = type { i64, i8*, i8*, %struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_31__* }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_38__*, i32* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_37__ = type { i64, i64, i32* }
%struct.TYPE_35__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_39__ = type { i32, i32, i32, i32, i32 }

@description = common dso_local global %struct.TYPE_32__* null, align 8
@dm_automaton = common dso_local global i64 0, align 8
@w_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"repeated declaration of automaton `%s'\00", align 1
@dm_insn_reserv = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"define_insn_reservation `%s' has negative latency time\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"`%s' is already used as insn reservation name\00", align 1
@dm_bypass = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"define_bypass `%s - %s' has negative latency time\00", align 1
@dm_unit = common dso_local global i64 0, align 8
@dm_reserv = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"automaton `%s' is not declared\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"define_unit `%s' without automaton when one defined\00", align 1
@NOTHING_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"`%s' is declared as cpu unit\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"`%s' is declared as cpu reservation\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"repeated declaration of unit `%s'\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"repeated declaration of reservation `%s'\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"there is no insn reservation `%s'\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"the same bypass `%s - %s' is already defined\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"bypass `%s - %s' is already defined\00", align 1
@dm_excl = common dso_local global i64 0, align 8
@dm_presence = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@dm_absence = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_decls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_decls() #0 {
  %1 = alloca %struct.TYPE_36__*, align 8
  %2 = alloca %struct.TYPE_36__*, align 8
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.bypass_decl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %62, %0
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %24, i64 %26
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  store %struct.TYPE_36__* %28, %struct.TYPE_36__** %1, align 8
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @dm_automaton, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %36 = call %struct.TYPE_36__* @insert_automaton_decl(%struct.TYPE_36__* %35)
  store %struct.TYPE_36__* %36, %struct.TYPE_36__** %3, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %39 = icmp ne %struct.TYPE_36__* %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load i32, i32* @w_flag, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %45 = call %struct.TYPE_38__* @DECL_AUTOMATON(%struct.TYPE_36__* %44)
  %46 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %59

51:                                               ; preds = %40
  %52 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %53 = call %struct.TYPE_38__* @DECL_AUTOMATON(%struct.TYPE_36__* %52)
  %54 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (i32, i8*, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %34
  br label %61

61:                                               ; preds = %60, %21
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %15

65:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %292, %65
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %295

72:                                               ; preds = %66
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %75, i64 %77
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %78, align 8
  store %struct.TYPE_36__* %79, %struct.TYPE_36__** %1, align 8
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @dm_insn_reserv, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %72
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %87 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %86)
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %93 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %92)
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %91, %85
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %104 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %103)
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 4
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %111 = call %struct.TYPE_36__* @insert_insn_decl(%struct.TYPE_36__* %110)
  store %struct.TYPE_36__* %111, %struct.TYPE_36__** %3, align 8
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %114 = icmp ne %struct.TYPE_36__* %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %99
  %116 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %117 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %116)
  %118 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %115, %99
  br label %291

124:                                              ; preds = %72
  %125 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @dm_bypass, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %132 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %131)
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %138 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %137)
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %142 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %141)
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %140, i8* %144)
  br label %146

146:                                              ; preds = %136, %130
  br label %290

147:                                              ; preds = %124
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %149 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @dm_unit, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @dm_reserv, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %289

159:                                              ; preds = %153, %147
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @dm_unit, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %240

165:                                              ; preds = %159
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %167 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %166)
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 2
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %168, align 8
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %170 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %169)
  %171 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %199

174:                                              ; preds = %165
  %175 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %176 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %175)
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = call %struct.TYPE_36__* @find_automaton_decl(i32* %178)
  store %struct.TYPE_36__* %179, %struct.TYPE_36__** %2, align 8
  %180 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %181 = icmp eq %struct.TYPE_36__* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %174
  %183 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %184 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %183)
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = bitcast i32* %186 to i8*
  %188 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %187)
  br label %198

189:                                              ; preds = %174
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %191 = call %struct.TYPE_38__* @DECL_AUTOMATON(%struct.TYPE_36__* %190)
  %192 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 4
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %2, align 8
  %194 = call %struct.TYPE_38__* @DECL_AUTOMATON(%struct.TYPE_36__* %193)
  %195 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %196 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %195)
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 2
  store %struct.TYPE_38__* %194, %struct.TYPE_38__** %197, align 8
  br label %198

198:                                              ; preds = %189, %182
  br label %211

199:                                              ; preds = %165
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %204 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %203)
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  %209 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %202, %199
  br label %211

211:                                              ; preds = %210, %198
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %216 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %215)
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 4
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %223 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %222)
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @NOTHING_NAME, align 4
  %227 = call i64 @strcmp(i32 %225, i32 %226)
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %211
  %230 = load i32, i32* @NOTHING_NAME, align 4
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %232)
  br label %292

234:                                              ; preds = %211
  %235 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %236 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %235)
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call %struct.TYPE_36__* @find_decl(i32 %238)
  store %struct.TYPE_36__* %239, %struct.TYPE_36__** %3, align 8
  br label %259

240:                                              ; preds = %159
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %242 = call %struct.TYPE_34__* @DECL_RESERV(%struct.TYPE_36__* %241)
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @NOTHING_NAME, align 4
  %246 = call i64 @strcmp(i32 %244, i32 %245)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %240
  %249 = load i32, i32* @NOTHING_NAME, align 4
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i8*
  %252 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %251)
  br label %292

253:                                              ; preds = %240
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %255 = call %struct.TYPE_34__* @DECL_RESERV(%struct.TYPE_36__* %254)
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call %struct.TYPE_36__* @find_decl(i32 %257)
  store %struct.TYPE_36__* %258, %struct.TYPE_36__** %3, align 8
  br label %259

259:                                              ; preds = %253, %234
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %261 = icmp eq %struct.TYPE_36__* %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %264 = call %struct.TYPE_36__* @insert_decl(%struct.TYPE_36__* %263)
  store %struct.TYPE_36__* %264, %struct.TYPE_36__** %3, align 8
  br label %288

265:                                              ; preds = %259
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %267 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @dm_unit, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %265
  %272 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %273 = call %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__* %272)
  %274 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %277)
  br label %287

279:                                              ; preds = %265
  %280 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %281 = call %struct.TYPE_34__* @DECL_RESERV(%struct.TYPE_36__* %280)
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = inttoptr i64 %284 to i8*
  %286 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %285)
  br label %287

287:                                              ; preds = %279, %271
  br label %288

288:                                              ; preds = %287, %262
  br label %289

289:                                              ; preds = %288, %153
  br label %290

290:                                              ; preds = %289, %146
  br label %291

291:                                              ; preds = %290, %123
  br label %292

292:                                              ; preds = %291, %248, %229
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %8, align 4
  br label %66

295:                                              ; preds = %66
  store i32 0, i32* %8, align 4
  br label %296

296:                                              ; preds = %426, %295
  %297 = load i32, i32* %8, align 4
  %298 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp slt i32 %297, %300
  br i1 %301, label %302, label %429

302:                                              ; preds = %296
  %303 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %304 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %305, i64 %307
  %309 = load %struct.TYPE_36__*, %struct.TYPE_36__** %308, align 8
  store %struct.TYPE_36__* %309, %struct.TYPE_36__** %1, align 8
  %310 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %311 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @dm_bypass, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %425

315:                                              ; preds = %302
  %316 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %317 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %316)
  %318 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %317, i32 0, i32 1
  %319 = load i8*, i8** %318, align 8
  %320 = call %struct.TYPE_36__* @find_insn_decl(i8* %319)
  store %struct.TYPE_36__* %320, %struct.TYPE_36__** %4, align 8
  %321 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %322 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %321)
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %322, i32 0, i32 2
  %324 = load i8*, i8** %323, align 8
  %325 = call %struct.TYPE_36__* @find_insn_decl(i8* %324)
  store %struct.TYPE_36__* %325, %struct.TYPE_36__** %5, align 8
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %327 = icmp eq %struct.TYPE_36__* %326, null
  br i1 %327, label %328, label %334

328:                                              ; preds = %315
  %329 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %330 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %329)
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %332)
  br label %424

334:                                              ; preds = %315
  %335 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %336 = icmp eq %struct.TYPE_36__* %335, null
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %339 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %338)
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %339, i32 0, i32 2
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %341)
  br label %423

343:                                              ; preds = %334
  %344 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %345 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %344)
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %347 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %346)
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 5
  store %struct.TYPE_31__* %345, %struct.TYPE_31__** %348, align 8
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %350 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %349)
  %351 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %352 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %351)
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 4
  store %struct.TYPE_31__* %350, %struct.TYPE_31__** %353, align 8
  %354 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %355 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %354)
  %356 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_30__*, %struct.TYPE_30__** %356, align 8
  %358 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %359 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %358)
  %360 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %359, i32 0, i32 4
  %361 = load %struct.TYPE_31__*, %struct.TYPE_31__** %360, align 8
  %362 = call %struct.bypass_decl* @find_bypass(%struct.TYPE_30__* %357, %struct.TYPE_31__* %361)
  store %struct.bypass_decl* %362, %struct.bypass_decl** %6, align 8
  %363 = load %struct.bypass_decl*, %struct.bypass_decl** %6, align 8
  %364 = icmp ne %struct.bypass_decl* %363, null
  br i1 %364, label %365, label %409

365:                                              ; preds = %343
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %367 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %366)
  %368 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.bypass_decl*, %struct.bypass_decl** %6, align 8
  %371 = getelementptr inbounds %struct.bypass_decl, %struct.bypass_decl* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = icmp eq i64 %369, %372
  br i1 %373, label %374, label %398

374:                                              ; preds = %365
  %375 = load i32, i32* @w_flag, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %387, label %377

377:                                              ; preds = %374
  %378 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %379 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %378)
  %380 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %379, i32 0, i32 1
  %381 = load i8*, i8** %380, align 8
  %382 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %383 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %382)
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 2
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* %381, i8* %385)
  br label %397

387:                                              ; preds = %374
  %388 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %389 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %388)
  %390 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %389, i32 0, i32 1
  %391 = load i8*, i8** %390, align 8
  %392 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %393 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %392)
  %394 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %393, i32 0, i32 2
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 (i32, i8*, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* %391, i8* %395)
  br label %397

397:                                              ; preds = %387, %377
  br label %408

398:                                              ; preds = %365
  %399 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %400 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %399)
  %401 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %400, i32 0, i32 1
  %402 = load i8*, i8** %401, align 8
  %403 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %404 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %403)
  %405 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %404, i32 0, i32 2
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %402, i8* %406)
  br label %408

408:                                              ; preds = %398, %397
  br label %422

409:                                              ; preds = %343
  %410 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %411 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %410)
  %412 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %411, i32 0, i32 1
  %413 = load %struct.TYPE_30__*, %struct.TYPE_30__** %412, align 8
  %414 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %415 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %414)
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %415, i32 0, i32 3
  store %struct.TYPE_30__* %413, %struct.TYPE_30__** %416, align 8
  %417 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %418 = call %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__* %417)
  %419 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %420 = call %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__* %419)
  %421 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %420, i32 0, i32 1
  store %struct.TYPE_30__* %418, %struct.TYPE_30__** %421, align 8
  br label %422

422:                                              ; preds = %409, %408
  br label %423

423:                                              ; preds = %422, %337
  br label %424

424:                                              ; preds = %423, %328
  br label %425

425:                                              ; preds = %424, %302
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %8, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %8, align 4
  br label %296

429:                                              ; preds = %296
  store i32 0, i32* %8, align 4
  br label %430

430:                                              ; preds = %497, %429
  %431 = load i32, i32* %8, align 4
  %432 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %433 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = icmp slt i32 %431, %434
  br i1 %435, label %436, label %500

436:                                              ; preds = %430
  %437 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %438 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %438, align 8
  %440 = load i32, i32* %8, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %439, i64 %441
  %443 = load %struct.TYPE_36__*, %struct.TYPE_36__** %442, align 8
  store %struct.TYPE_36__* %443, %struct.TYPE_36__** %1, align 8
  %444 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %445 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @dm_excl, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %496

449:                                              ; preds = %436
  %450 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %451 = call %struct.TYPE_37__* @DECL_EXCL(%struct.TYPE_36__* %450)
  %452 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %451, i32 0, i32 2
  %453 = load i32*, i32** %452, align 8
  %454 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %455 = call %struct.TYPE_37__* @DECL_EXCL(%struct.TYPE_36__* %454)
  %456 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %459 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @process_excls(i32* %453, i64 %457, i32 %460)
  store i32 %461, i32* %9, align 4
  %462 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %463 = call %struct.TYPE_37__* @DECL_EXCL(%struct.TYPE_36__* %462)
  %464 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %463, i32 0, i32 2
  %465 = load i32*, i32** %464, align 8
  %466 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %467 = call %struct.TYPE_37__* @DECL_EXCL(%struct.TYPE_36__* %466)
  %468 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = getelementptr inbounds i32, i32* %465, i64 %469
  %471 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %472 = call %struct.TYPE_37__* @DECL_EXCL(%struct.TYPE_36__* %471)
  %473 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %476 = call %struct.TYPE_37__* @DECL_EXCL(%struct.TYPE_36__* %475)
  %477 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = sub i64 %474, %478
  %480 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %481 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 8
  %483 = call i32 @process_excls(i32* %470, i64 %479, i32 %482)
  store i32 %483, i32* %10, align 4
  %484 = load i32, i32* %9, align 4
  %485 = load i32, i32* %10, align 4
  %486 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %487 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 8
  %489 = call i32 @add_excls(i32 %484, i32 %485, i32 %488)
  %490 = load i32, i32* %10, align 4
  %491 = load i32, i32* %9, align 4
  %492 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %493 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @add_excls(i32 %490, i32 %491, i32 %494)
  br label %496

496:                                              ; preds = %449, %436
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %8, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %8, align 4
  br label %430

500:                                              ; preds = %430
  store i32 0, i32* %8, align 4
  br label %501

501:                                              ; preds = %567, %500
  %502 = load i32, i32* %8, align 4
  %503 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %504 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = icmp slt i32 %502, %505
  br i1 %506, label %507, label %570

507:                                              ; preds = %501
  %508 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %509 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i32 0, i32 1
  %510 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %509, align 8
  %511 = load i32, i32* %8, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %510, i64 %512
  %514 = load %struct.TYPE_36__*, %struct.TYPE_36__** %513, align 8
  store %struct.TYPE_36__* %514, %struct.TYPE_36__** %1, align 8
  %515 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %516 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %515, i32 0, i32 0
  %517 = load i64, i64* %516, align 8
  %518 = load i64, i64* @dm_presence, align 8
  %519 = icmp eq i64 %517, %518
  br i1 %519, label %520, label %566

520:                                              ; preds = %507
  %521 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %522 = call %struct.TYPE_35__* @DECL_PRESENCE(%struct.TYPE_36__* %521)
  %523 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %522, i32 0, i32 4
  %524 = load i32, i32* %523, align 4
  %525 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %526 = call %struct.TYPE_35__* @DECL_PRESENCE(%struct.TYPE_36__* %525)
  %527 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %530 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 8
  %532 = load i32, i32* @TRUE, align 4
  %533 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %534 = call %struct.TYPE_35__* @DECL_PRESENCE(%struct.TYPE_36__* %533)
  %535 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = call i32 @process_presence_absence_names(i32 %524, i32 %528, i32 %531, i32 %532, i32 %536)
  store i32 %537, i32* %11, align 4
  %538 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %539 = call %struct.TYPE_35__* @DECL_PRESENCE(%struct.TYPE_36__* %538)
  %540 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %539, i32 0, i32 2
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %543 = call %struct.TYPE_35__* @DECL_PRESENCE(%struct.TYPE_36__* %542)
  %544 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %547 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 8
  %549 = load i32, i32* @TRUE, align 4
  %550 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %551 = call %struct.TYPE_35__* @DECL_PRESENCE(%struct.TYPE_36__* %550)
  %552 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @process_presence_absence_patterns(i32 %541, i32 %545, i32 %548, i32 %549, i32 %553)
  store i32 %554, i32* %12, align 4
  %555 = load i32, i32* %11, align 4
  %556 = load i32, i32* %12, align 4
  %557 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %558 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @TRUE, align 4
  %561 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %562 = call %struct.TYPE_35__* @DECL_PRESENCE(%struct.TYPE_36__* %561)
  %563 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 4
  %565 = call i32 @add_presence_absence(i32 %555, i32 %556, i32 %559, i32 %560, i32 %564)
  br label %566

566:                                              ; preds = %520, %507
  br label %567

567:                                              ; preds = %566
  %568 = load i32, i32* %8, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %8, align 4
  br label %501

570:                                              ; preds = %501
  store i32 0, i32* %8, align 4
  br label %571

571:                                              ; preds = %637, %570
  %572 = load i32, i32* %8, align 4
  %573 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %574 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = icmp slt i32 %572, %575
  br i1 %576, label %577, label %640

577:                                              ; preds = %571
  %578 = load %struct.TYPE_32__*, %struct.TYPE_32__** @description, align 8
  %579 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %578, i32 0, i32 1
  %580 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %579, align 8
  %581 = load i32, i32* %8, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %580, i64 %582
  %584 = load %struct.TYPE_36__*, %struct.TYPE_36__** %583, align 8
  store %struct.TYPE_36__* %584, %struct.TYPE_36__** %1, align 8
  %585 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %586 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %585, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* @dm_absence, align 8
  %589 = icmp eq i64 %587, %588
  br i1 %589, label %590, label %636

590:                                              ; preds = %577
  %591 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %592 = call %struct.TYPE_39__* @DECL_ABSENCE(%struct.TYPE_36__* %591)
  %593 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %592, i32 0, i32 4
  %594 = load i32, i32* %593, align 4
  %595 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %596 = call %struct.TYPE_39__* @DECL_ABSENCE(%struct.TYPE_36__* %595)
  %597 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %600 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 8
  %602 = load i32, i32* @FALSE, align 4
  %603 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %604 = call %struct.TYPE_39__* @DECL_ABSENCE(%struct.TYPE_36__* %603)
  %605 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 4
  %607 = call i32 @process_presence_absence_names(i32 %594, i32 %598, i32 %601, i32 %602, i32 %606)
  store i32 %607, i32* %13, align 4
  %608 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %609 = call %struct.TYPE_39__* @DECL_ABSENCE(%struct.TYPE_36__* %608)
  %610 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %613 = call %struct.TYPE_39__* @DECL_ABSENCE(%struct.TYPE_36__* %612)
  %614 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %617 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 8
  %619 = load i32, i32* @FALSE, align 4
  %620 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %621 = call %struct.TYPE_39__* @DECL_ABSENCE(%struct.TYPE_36__* %620)
  %622 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = call i32 @process_presence_absence_patterns(i32 %611, i32 %615, i32 %618, i32 %619, i32 %623)
  store i32 %624, i32* %14, align 4
  %625 = load i32, i32* %13, align 4
  %626 = load i32, i32* %14, align 4
  %627 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %628 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 8
  %630 = load i32, i32* @FALSE, align 4
  %631 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %632 = call %struct.TYPE_39__* @DECL_ABSENCE(%struct.TYPE_36__* %631)
  %633 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 4
  %635 = call i32 @add_presence_absence(i32 %625, i32 %626, i32 %629, i32 %630, i32 %634)
  br label %636

636:                                              ; preds = %590, %577
  br label %637

637:                                              ; preds = %636
  %638 = load i32, i32* %8, align 4
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %8, align 4
  br label %571

640:                                              ; preds = %571
  ret void
}

declare dso_local %struct.TYPE_36__* @insert_automaton_decl(%struct.TYPE_36__*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_38__* @DECL_AUTOMATON(%struct.TYPE_36__*) #1

declare dso_local i32 @warning(i32, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_31__* @DECL_INSN_RESERV(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @insert_insn_decl(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_30__* @DECL_BYPASS(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_33__* @DECL_UNIT(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @find_automaton_decl(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_36__* @find_decl(i32) #1

declare dso_local %struct.TYPE_34__* @DECL_RESERV(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @insert_decl(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @find_insn_decl(i8*) #1

declare dso_local %struct.bypass_decl* @find_bypass(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @process_excls(i32*, i64, i32) #1

declare dso_local %struct.TYPE_37__* @DECL_EXCL(%struct.TYPE_36__*) #1

declare dso_local i32 @add_excls(i32, i32, i32) #1

declare dso_local i32 @process_presence_absence_names(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_35__* @DECL_PRESENCE(%struct.TYPE_36__*) #1

declare dso_local i32 @process_presence_absence_patterns(i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_presence_absence(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_39__* @DECL_ABSENCE(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
