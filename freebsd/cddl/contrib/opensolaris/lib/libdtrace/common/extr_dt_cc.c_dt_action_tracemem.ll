; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_tracemem.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_tracemem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_TRACEMEM_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"tracemem( ) argument #1 is incompatible with prototype:\0A\09prototype: pointer or integer\0A\09 argument: %s\0A\00", align 1
@D_TRACEMEM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"tracemem( ) argument #2 must be a non-zero positive integral constant expression\0A\00", align 1
@D_TRACEMEM_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"tracemem ( ) prototype mismatch: expected at most 3 args\0A\00", align 1
@D_TRACEMEM_DYNSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"tracemem ( ) dynamic size (argument #3) must be of scalar type\0A\00", align 1
@yypcb = common dso_local global i32 0, align 4
@dt_int_rtype = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@DTRACEACT_TRACEMEM_DYNSIZE = common dso_local global i32 0, align 4
@DTRACEACT_TRACEMEM = common dso_local global i32 0, align 4
@DIF_TF_BYREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_17__*, i32*)* @dt_action_tracemem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_tracemem(i32* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_16__* @dt_stmt_action(i32* %13, i32* %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %9, align 8
  %24 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = call i64 @dt_node_is_integer(%struct.TYPE_17__* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = call i64 @dt_node_is_pointer(%struct.TYPE_17__* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = load i32, i32* @D_TRACEMEM_ADDR, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = trunc i64 %25 to i32
  %40 = call i32 @dt_node_type_name(%struct.TYPE_17__* %38, i8* %27, i32 %39)
  %41 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @dnerror(%struct.TYPE_17__* %36, i32 %37, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %31, %3
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %44 = call i64 @dt_node_is_posconst(%struct.TYPE_17__* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = load i32, i32* @D_TRACEMEM_SIZE, align 4
  %49 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @dnerror(%struct.TYPE_17__* %47, i32 %48, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %10, align 8
  %54 = icmp ne %struct.TYPE_17__* %53, null
  br i1 %54, label %55, label %92

55:                                               ; preds = %50
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = icmp ne %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = load i32, i32* @D_TRACEMEM_ARGS, align 4
  %63 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @dnerror(%struct.TYPE_17__* %61, i32 %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = call i32 @dt_node_is_scalar(%struct.TYPE_17__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %70 = load i32, i32* @D_TRACEMEM_DYNSIZE, align 4
  %71 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @dnerror(%struct.TYPE_17__* %69, i32 %70, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @yypcb, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = call i32 @dt_cg(i32 %73, %struct.TYPE_17__* %74)
  %76 = load i32, i32* @yypcb, align 4
  %77 = call i8* @dt_as(i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_15__*
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = bitcast %struct.TYPE_14__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 bitcast (%struct.TYPE_14__* @dt_int_rtype to i8*), i64 8, i1 false)
  %86 = load i32, i32* @DTRACEACT_TRACEMEM_DYNSIZE, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call %struct.TYPE_16__* @dt_stmt_action(i32* %89, i32* %90)
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %7, align 8
  br label %92

92:                                               ; preds = %72, %50
  %93 = load i32, i32* @yypcb, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = call i32 @dt_cg(i32 %93, %struct.TYPE_17__* %94)
  %96 = load i32, i32* @yypcb, align 4
  %97 = call i8* @dt_as(i32 %96)
  %98 = bitcast i8* %97 to %struct.TYPE_15__*
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %100, align 8
  %101 = load i32, i32* @DTRACEACT_TRACEMEM, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @DIF_TF_BYREF, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %104
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  %120 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %120)
  ret void
}

declare dso_local %struct.TYPE_16__* @dt_stmt_action(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dt_node_is_integer(%struct.TYPE_17__*) #1

declare dso_local i64 @dt_node_is_pointer(%struct.TYPE_17__*) #1

declare dso_local i32 @dnerror(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @dt_node_type_name(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i64 @dt_node_is_posconst(%struct.TYPE_17__*) #1

declare dso_local i32 @dt_node_is_scalar(%struct.TYPE_17__*) #1

declare dso_local i32 @dt_cg(i32, %struct.TYPE_17__*) #1

declare dso_local i8* @dt_as(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
