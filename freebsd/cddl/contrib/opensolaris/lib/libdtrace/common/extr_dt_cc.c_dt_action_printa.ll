; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_printa.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_printa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32, i8*, %struct.TYPE_19__*, %struct.TYPE_21__*, i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64, i32, i32, i64, i32, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_PRINTA_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s( ) prototype mismatch: %d args passed, %d expected\0A\00", align 1
@D_PRINTA_AGGARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"%s( ) argument #%d is incompatible with prototype:\0A\09prototype: aggregation\0A\09 argument: %s\0A\00", align 1
@DT_IDFLG_MOD = common dso_local global i32 0, align 4
@D_PRINTA_AGGBAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"undefined aggregation: @%s\0A\00", align 1
@yylineno = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_22__* null, align 8
@DT_PRINTF_AGGREGATION = common dso_local global i32 0, align 4
@DTRACEACT_PRINTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_17__*)* @dt_action_printa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_printa(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %12, align 8
  %17 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %11, align 8
  br label %24

24:                                               ; preds = %30, %3
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %26 = icmp ne %struct.TYPE_19__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %11, align 8
  br label %24

34:                                               ; preds = %24
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %55 [
    i32 128, label %40
    i32 129, label %51
  ]

40:                                               ; preds = %34
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %10, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %11, align 8
  store i32 2, i32* %16, align 4
  br label %59

51:                                               ; preds = %34
  store i8* null, i8** %10, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %11, align 8
  store i32 1, i32* %16, align 4
  br label %59

55:                                               ; preds = %34
  store i8* null, i8** %10, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %11, align 8
  store i32 1, i32* %16, align 4
  br label %59

59:                                               ; preds = %55, %51, %40
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = load i32, i32* @D_PRINTA_PROTO, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 (%struct.TYPE_19__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_19__* %64, i32 %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %59
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %76 = icmp ne %struct.TYPE_19__* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  br label %79

79:                                               ; preds = %168, %74
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %81 = icmp ne %struct.TYPE_19__* %80, null
  br i1 %81, label %82, label %185

82:                                               ; preds = %79
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 129
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = load i32, i32* @D_PRINTA_AGGARG, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %97 = trunc i64 %18 to i32
  %98 = call i32 @dt_node_type_name(%struct.TYPE_19__* %96, i8* %20, i32 %97)
  %99 = call i32 (%struct.TYPE_19__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_19__* %88, i32 %89, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %87, %82
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %7, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  store %struct.TYPE_21__* %106, %struct.TYPE_21__** %8, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %100
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @DT_IDFLG_MOD, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = load i32, i32* @D_PRINTA_AGGBAD, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.TYPE_19__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_19__* %122, i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %121, %114, %100
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %130 = icmp ne %struct.TYPE_19__* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %134 = call i32 @dt_printa_validate(%struct.TYPE_19__* %132, %struct.TYPE_19__* %133)
  br label %137

135:                                              ; preds = %128
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %136, %struct.TYPE_19__** %12, align 8
  br label %137

137:                                              ; preds = %135, %131
  %138 = load i8*, i8** %10, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %168

140:                                              ; preds = %137
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* @yylineno, align 4
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @dt_printf_create(i32 %146, i8* %147)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DT_PRINTF_AGGREGATION, align 4
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to %struct.TYPE_20__*
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @dt_printf_validate(i32 %153, i32 %154, %struct.TYPE_21__* %157, i32 1, i32 %160, i32 %166)
  store i8* null, i8** %10, align 8
  br label %168

168:                                              ; preds = %140, %137
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %171 = call i32* @dt_stmt_action(%struct.TYPE_18__* %169, %struct.TYPE_17__* %170)
  store i32* %171, i32** %9, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @DTRACEACT_PRINTA, align 4
  %179 = call i32 @dt_action_difconst(i32* %172, i32 %177, i32 %178)
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  store %struct.TYPE_19__* %182, %struct.TYPE_19__** %11, align 8
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  br label %79

185:                                              ; preds = %79
  %186 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %186)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dnerror(%struct.TYPE_19__*, i32, i8*, i32, ...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i32 @dt_printa_validate(%struct.TYPE_19__*, %struct.TYPE_19__*) #2

declare dso_local i32 @dt_printf_create(i32, i8*) #2

declare dso_local i32 @dt_printf_validate(i32, i32, %struct.TYPE_21__*, i32, i32, i32) #2

declare dso_local i32* @dt_stmt_action(%struct.TYPE_18__*, %struct.TYPE_17__*) #2

declare dso_local i32 @dt_action_difconst(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
