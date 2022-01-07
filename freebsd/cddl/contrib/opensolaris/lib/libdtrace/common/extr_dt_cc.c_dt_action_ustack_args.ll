; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_ustack_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_ustack_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i64, %struct.TYPE_13__*, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i64 }

@DT_ACT_JSTACK = common dso_local global i64 0, align 8
@DT_ACT_USTACK = common dso_local global i64 0, align 8
@DTRACEOPT_JSTACKFRAMES = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@DTRACEOPT_JSTACKSTRSIZE = common dso_local global i64 0, align 8
@DTRACEACT_JSTACK = common dso_local global i32 0, align 4
@DTRACEOPT_USTACKFRAMES = common dso_local global i64 0, align 8
@DTRACEACT_USTACK = common dso_local global i32 0, align 4
@D_USTACK_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"ustack( ) argument #1 must be a non-zero positive integer constant\0A\00", align 1
@DT_NODE_INT = common dso_local global i64 0, align 8
@DT_NF_SIGNED = common dso_local global i32 0, align 4
@D_USTACK_STRSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"ustack( ) argument #2 must be a positive integer constant\0A\00", align 1
@D_USTACK_PROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ustack( ) prototype mismatch: too many arguments\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @dt_action_ustack_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_ustack_args(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi %struct.TYPE_13__* [ %19, %16 ], [ null, %20 ]
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DT_ACT_JSTACK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DT_ACT_USTACK, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %30, %21
  %39 = phi i1 [ true, %21 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DT_ACT_JSTACK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %38
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @DTRACEOPT_JSTACKFRAMES, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @DTRACEOPT_JSTACKFRAMES, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %58, %49
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @DTRACEOPT_JSTACKSTRSIZE, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @DTRACEOPT_JSTACKSTRSIZE, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %74, %65
  %82 = load i32, i32* @DTRACEACT_JSTACK, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %114

85:                                               ; preds = %38
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DT_ACT_USTACK, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @DTRACEOPT_USTACKFRAMES, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %85
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @DTRACEOPT_USTACKFRAMES, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %103, %85
  %111 = load i32, i32* @DTRACEACT_USTACK, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %81
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = icmp ne %struct.TYPE_13__* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %119 = call i32 @dt_node_is_posconst(%struct.TYPE_13__* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = load i32, i32* @D_USTACK_FRAMES, align 4
  %124 = call i32 @dnerror(%struct.TYPE_13__* %122, i32 %123, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %117
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %125, %114
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = icmp ne %struct.TYPE_13__* %130, null
  br i1 %131, label %132, label %167

132:                                              ; preds = %129
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DT_NODE_INT, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %150, label %138

138:                                              ; preds = %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @DT_NF_SIGNED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145, %132
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %152 = load i32, i32* @D_USTACK_STRSIZE, align 4
  %153 = call i32 @dnerror(%struct.TYPE_13__* %151, i32 %152, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %150, %145, %138
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = icmp ne %struct.TYPE_13__* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = load i32, i32* @D_USTACK_PROTO, align 4
  %162 = call i32 @dnerror(%struct.TYPE_13__* %160, i32 %161, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %163

163:                                              ; preds = %159, %154
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %163, %129
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i32 @DTRACE_USTACK_ARG(i64 %168, i64 %169)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_node_is_posconst(%struct.TYPE_13__*) #1

declare dso_local i32 @dnerror(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @DTRACE_USTACK_ARG(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
