; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_normalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"denormalize\00", align 1
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_NORMALIZE_PROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s( ) prototype mismatch: %d args passed, %d expected\0A\00", align 1
@DT_NODE_AGG = common dso_local global i64 0, align 8
@D_NORMALIZE_AGGARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"%s( ) argument #1 is incompatible with prototype:\0A\09prototype: aggregation\0A\09 argument: %s\0A\00", align 1
@D_NORMALIZE_SCALAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"%s( ) argument #2 must be of scalar type\0A\00", align 1
@DT_IDFLG_MOD = common dso_local global i32 0, align 4
@D_NORMALIZE_AGGBAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"undefined aggregation: @%s\0A\00", align 1
@DTRACEACT_LIBACT = common dso_local global i32 0, align 4
@DT_ACT_DENORMALIZE = common dso_local global i8* null, align 8
@DT_ACT_NORMALIZE = common dso_local global i8* null, align 8
@yypcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*, i32*)* @dt_action_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_normalize(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @strcmp(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %9, align 8
  br label %31

31:                                               ; preds = %37, %3
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = icmp ne %struct.TYPE_16__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %9, align 8
  br label %31

41:                                               ; preds = %31
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %67

53:                                               ; preds = %50, %44
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = load i32, i32* @D_NORMALIZE_PROTO, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 2
  %66 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_16__* %54, i32 %55, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %53, %50, %47
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %9, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = icmp ne %struct.TYPE_16__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DT_NODE_AGG, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %67
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = load i32, i32* @D_NORMALIZE_AGGARG, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = trunc i64 %25 to i32
  %90 = call i32 @dt_node_type_name(%struct.TYPE_16__* %88, i8* %27, i32 %89)
  %91 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_16__* %81, i32 %82, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %80, %67
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %10, align 8
  %96 = icmp ne %struct.TYPE_16__* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %99 = call i32 @dt_node_is_scalar(%struct.TYPE_16__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = load i32, i32* @D_NORMALIZE_SCALAR, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_16__* %102, i32 %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %101, %97, %92
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  store %struct.TYPE_17__* %113, %struct.TYPE_17__** %7, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %110
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @DT_IDFLG_MOD, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = load i32, i32* @D_NORMALIZE_AGGBAD, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_16__* %129, i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %128, %121, %110
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call %struct.TYPE_15__* @dt_stmt_action(%struct.TYPE_14__* %136, i32* %137)
  store %struct.TYPE_15__* %138, %struct.TYPE_15__** %8, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @DTRACEACT_LIBACT, align 4
  %146 = call i32 @dt_action_difconst(%struct.TYPE_15__* %139, i32 %144, i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %135
  %150 = load i8*, i8** @DT_ACT_DENORMALIZE, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  store i32 1, i32* %15, align 4
  br label %177

153:                                              ; preds = %135
  %154 = load i8*, i8** @DT_ACT_NORMALIZE, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %158 = icmp ne %struct.TYPE_16__* %157, null
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = call %struct.TYPE_15__* @dt_stmt_action(%struct.TYPE_14__* %161, i32* %162)
  store %struct.TYPE_15__* %163, %struct.TYPE_15__** %8, align 8
  %164 = load i32, i32* @yypcb, align 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %166 = call i32 @dt_cg(i32 %164, %struct.TYPE_16__* %165)
  %167 = load i32, i32* @yypcb, align 4
  %168 = call i32 @dt_as(i32 %167)
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @DTRACEACT_LIBACT, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load i8*, i8** @DT_ACT_NORMALIZE, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  store i32 0, i32* %15, align 4
  br label %177

177:                                              ; preds = %153, %149
  %178 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %15, align 4
  switch i32 %179, label %181 [
    i32 0, label %180
    i32 1, label %180
  ]

180:                                              ; preds = %177, %177
  ret void

181:                                              ; preds = %177
  unreachable
}

declare dso_local i64 @strcmp(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dnerror(%struct.TYPE_16__*, i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_node_type_name(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @dt_node_is_scalar(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @dt_stmt_action(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @dt_action_difconst(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @dt_cg(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @dt_as(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
