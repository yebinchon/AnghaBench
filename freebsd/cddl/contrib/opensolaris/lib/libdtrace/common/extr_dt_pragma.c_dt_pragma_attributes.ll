; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_19__ = type { i64, i8*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i32 }

@yypcb = common dso_local global %struct.TYPE_21__* null, align 8
@DT_NODE_IDENT = common dso_local global i64 0, align 8
@D_PRAGMA_MALFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"malformed #pragma %s <attributes> <ident>\0A\00", align 1
@D_PRAGMA_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"invalid attributes specified by #pragma %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"invalid component \22%s\22 in attribute #pragma for provider %s\0A\00", align 1
@D_PRAGMA_SCOPE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [63 x i8] c"#pragma %s cannot modify entity defined outside program scope\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@EDT_NOMEM = common dso_local global i32 0, align 4
@DT_IDENT_PRAGAT = common dso_local global i32 0, align 4
@dt_idops_thaw = common dso_local global i32 0, align 4
@dt_pragma_apply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_19__*)* @dt_pragma_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_pragma_attributes(i8* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = icmp eq %struct.TYPE_19__* %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DT_NODE_IDENT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %36, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = icmp eq %struct.TYPE_19__* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DT_NODE_IDENT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28, %23, %17, %2
  %37 = load i32, i32* @D_PRAGMA_MALFORM, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %28
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @dtrace_str2attr(i8* %43, i32* %6)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @D_PRAGMA_INVAL, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %4, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %135

60:                                               ; preds = %50
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %4, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %9, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %4, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %10, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call %struct.TYPE_18__* @dt_provider_lookup(%struct.TYPE_17__* %73, i8* %74)
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %8, align 8
  %76 = icmp ne %struct.TYPE_18__* %75, null
  br i1 %76, label %77, label %134

77:                                               ; preds = %60
  %78 = load i8*, i8** %10, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  store i32* %85, i32** %7, align 8
  br label %131

86:                                               ; preds = %77
  %87 = load i8*, i8** %10, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  store i32* %94, i32** %7, align 8
  br label %130

95:                                               ; preds = %86
  %96 = load i8*, i8** %10, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  store i32* %103, i32** %7, align 8
  br label %129

104:                                              ; preds = %95
  %105 = load i8*, i8** %10, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  store i32* %112, i32** %7, align 8
  br label %128

113:                                              ; preds = %104
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i32* %121, i32** %7, align 8
  br label %127

122:                                              ; preds = %113
  %123 = load i32, i32* @D_PRAGMA_INVAL, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %123, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %124, i8* %125)
  br label %127

127:                                              ; preds = %122, %117
  br label %128

128:                                              ; preds = %127, %108
  br label %129

129:                                              ; preds = %128, %99
  br label %130

130:                                              ; preds = %129, %90
  br label %131

131:                                              ; preds = %130, %81
  %132 = load i32, i32* %6, align 4
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %206

134:                                              ; preds = %60
  br label %158

135:                                              ; preds = %50
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 2
  %138 = load i8*, i8** %9, align 8
  %139 = call %struct.TYPE_20__* @dt_idstack_lookup(i32* %137, i8* %138)
  store %struct.TYPE_20__* %139, %struct.TYPE_20__** %11, align 8
  %140 = icmp ne %struct.TYPE_20__* %139, null
  br i1 %140, label %141, label %157

141:                                              ; preds = %135
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load i32, i32* @D_PRAGMA_SCOPE, align 4
  %151 = load i8*, i8** %3, align 8
  %152 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %150, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %149, %141
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  br label %206

157:                                              ; preds = %135
  br label %158

158:                                              ; preds = %157, %134
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %158
  %164 = call i32* @dt_idhash_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 0, i32 0)
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  store i32* %164, i32** %166, align 8
  %167 = icmp eq i32* %164, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @EDT_NOMEM, align 4
  %173 = call i32 @longjmp(i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %168, %163, %158
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* @DT_IDENT_PRAGAT, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i8*, i8** %3, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call %struct.TYPE_20__* @dt_idhash_insert(i32* %177, i8* %178, i32 %179, i32 0, i32 0, i32 %180, i32 0, i32* @dt_idops_thaw, i8* %181, i64 %184)
  store %struct.TYPE_20__* %185, %struct.TYPE_20__** %11, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %187 = icmp eq %struct.TYPE_20__* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %174
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @EDT_NOMEM, align 4
  %193 = call i32 @longjmp(i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %188, %174
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  store i32* @dt_pragma_apply, i32** %205, align 8
  br label %206

206:                                              ; preds = %131, %153, %201, %194
  ret void
}

declare dso_local i32 @xyerror(i32, i8*, i8*, ...) #1

declare dso_local i32 @dtrace_str2attr(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_18__* @dt_provider_lookup(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.TYPE_20__* @dt_idstack_lookup(i32*, i8*) #1

declare dso_local i32* @dt_idhash_create(i8*, i32*, i32, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_20__* @dt_idhash_insert(i32*, i8*, i32, i32, i32, i32, i32, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
