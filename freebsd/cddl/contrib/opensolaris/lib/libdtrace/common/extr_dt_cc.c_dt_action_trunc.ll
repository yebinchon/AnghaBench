; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_trunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32, i32 }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_TRUNC_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s( ) prototype mismatch: %d args passed, %s expected\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"at least 1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"no more than 2\00", align 1
@DT_NODE_AGG = common dso_local global i64 0, align 8
@D_TRUNC_AGGARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"%s( ) argument #1 is incompatible with prototype:\0A\09prototype: aggregation\0A\09 argument: %s\0A\00", align 1
@D_TRUNC_SCALAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"%s( ) argument #2 must be of scalar type\0A\00", align 1
@DT_IDFLG_MOD = common dso_local global i32 0, align 4
@D_TRUNC_AGGBAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"undefined aggregation: @%s\0A\00", align 1
@DTRACEACT_LIBACT = common dso_local global i32 0, align 4
@DT_ACT_TRUNC = common dso_local global i8* null, align 8
@yypcb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*, i32*)* @dt_action_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_trunc(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %9, align 8
  br label %21

21:                                               ; preds = %27, %3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %9, align 8
  br label %21

31:                                               ; preds = %21
  %32 = load i32, i32* %13, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %51

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = load i32, i32* @D_TRUNC_PROTO, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 1
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_16__* %38, i32 %39, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i8* %49)
  br label %51

51:                                               ; preds = %37, %34
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %9, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %10, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DT_NODE_AGG, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %51
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = load i32, i32* @D_TRUNC_AGGARG, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = trunc i64 %15 to i32
  %77 = call i32 @dt_node_type_name(%struct.TYPE_16__* %75, i8* %17, i32 %76)
  %78 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_16__* %68, i32 %69, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %67, %51
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %84 = icmp ne %struct.TYPE_16__* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %88 = call i32 @dt_node_is_scalar(%struct.TYPE_16__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %82
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = load i32, i32* @D_TRUNC_SCALAR, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_16__* %91, i32 %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %90, %82
  br label %100

100:                                              ; preds = %99, %79
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %7, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %100
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DT_IDFLG_MOD, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = load i32, i32* @D_TRUNC_AGGBAD, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_16__* %119, i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %118, %111, %100
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call %struct.TYPE_15__* @dt_stmt_action(%struct.TYPE_14__* %126, i32* %127)
  store %struct.TYPE_15__* %128, %struct.TYPE_15__** %8, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DTRACEACT_LIBACT, align 4
  %136 = call i32 @dt_action_difconst(%struct.TYPE_15__* %129, i32 %134, i32 %135)
  %137 = load i8*, i8** @DT_ACT_TRUNC, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = call %struct.TYPE_15__* @dt_stmt_action(%struct.TYPE_14__* %140, i32* %141)
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %8, align 8
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %125
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %147 = load i32, i32* @DTRACEACT_LIBACT, align 4
  %148 = call i32 @dt_action_difconst(%struct.TYPE_15__* %146, i32 0, i32 %147)
  br label %164

149:                                              ; preds = %125
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %151 = icmp ne %struct.TYPE_16__* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i32, i32* @yypcb, align 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %156 = call i32 @dt_cg(i32 %154, %struct.TYPE_16__* %155)
  %157 = load i32, i32* @yypcb, align 4
  %158 = call i32 @dt_as(i32 %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @DTRACEACT_LIBACT, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %149, %145
  %165 = load i8*, i8** @DT_ACT_TRUNC, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %168)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dnerror(%struct.TYPE_16__*, i32, i8*, i32, ...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_16__*, i8*, i32) #2

declare dso_local i32 @dt_node_is_scalar(%struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_15__* @dt_stmt_action(%struct.TYPE_14__*, i32*) #2

declare dso_local i32 @dt_action_difconst(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @dt_cg(i32, %struct.TYPE_16__*) #2

declare dso_local i32 @dt_as(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
