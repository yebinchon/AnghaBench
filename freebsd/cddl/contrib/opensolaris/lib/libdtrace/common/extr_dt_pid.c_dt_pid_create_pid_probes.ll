; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_create_pid_probes.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_create_pid_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8*, i8*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i32, i64, i32*, %struct.TYPE_16__*, i32* }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@D_PROC_LIB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"only the a.out module is valid with the '-' function\00", align 1
@D_PROC_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"only individual addresses may be specified with the '-' function\00", align 1
@dt_pid_mod_filt = common dso_local global i32 0, align 4
@D_PROC_DYN = common dso_local global i32 0, align 4
@PR_OBJ_LDSO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32*, %struct.TYPE_16__*)* @dt_pid_create_pid_probes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_pid_create_pid_probes(%struct.TYPE_15__* %0, i32* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 7
  store i32* %16, i32** %17, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 6
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %19, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  store i32* %24, i32** %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %37 ]
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  br label %53

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %52 ]
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i8* [ %66, %63 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %67 ]
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %137

76:                                               ; preds = %68
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcpy(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %125

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strisglob(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.TYPE_14__* @Pname_to_map(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %12, align 8
  %102 = icmp eq %struct.TYPE_14__* %101, null
  br i1 %102, label %118, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call %struct.TYPE_14__* @Pname_to_map(i32 %105, i8* %107)
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %13, align 8
  %109 = icmp eq %struct.TYPE_14__* %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110, %103, %98, %93
  %119 = load i32*, i32** %7, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = load i32, i32* @D_PROC_LIB, align 4
  %123 = call i32 (i32*, i32*, %struct.TYPE_16__*, i32*, i32, i8*, ...) @dt_pid_error(i32* %119, i32* %120, %struct.TYPE_16__* %121, i32* null, i32 %122, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  store i32 %123, i32* %5, align 4
  br label %173

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %84
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strisglob(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = load i32, i32* @D_PROC_NAME, align 4
  %135 = call i32 (i32*, i32*, %struct.TYPE_16__*, i32*, i32, i8*, ...) @dt_pid_error(i32* %131, i32* %132, %struct.TYPE_16__* %133, i32* null, i32 %134, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  store i32 %135, i32* %5, align 4
  br label %173

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %68
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strisglob(i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @dt_pid_mod_filt, align 4
  %146 = call i32 @Pobject_iter(i32 %144, i32 %145, %struct.TYPE_17__* %10)
  store i32 %146, i32* %11, align 4
  br label %171

147:                                              ; preds = %137
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call %struct.TYPE_14__* @dt_pid_fix_mod(%struct.TYPE_15__* %148, i32 %150)
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %14, align 8
  %152 = icmp ne %struct.TYPE_14__* %151, null
  br i1 %152, label %153, label %170

153:                                              ; preds = %147
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @strchr(i8* %156, i8 signext 96)
  store i8* %157, i8** %15, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %15, align 8
  br label %166

163:                                              ; preds = %153
  %164 = load i8*, i8** %15, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %15, align 8
  br label %166

166:                                              ; preds = %163, %159
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = call i32 @dt_pid_per_mod(%struct.TYPE_17__* %10, %struct.TYPE_14__* %167, i8* %168)
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %166, %147
  br label %171

171:                                              ; preds = %170, %142
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %171, %130, %118
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strisglob(i8*) #1

declare dso_local %struct.TYPE_14__* @Pname_to_map(i32, i8*) #1

declare dso_local i32 @dt_pid_error(i32*, i32*, %struct.TYPE_16__*, i32*, i32, i8*, ...) #1

declare dso_local i32 @Pobject_iter(i32, i32, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_14__* @dt_pid_fix_mod(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dt_pid_per_mod(%struct.TYPE_17__*, %struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
