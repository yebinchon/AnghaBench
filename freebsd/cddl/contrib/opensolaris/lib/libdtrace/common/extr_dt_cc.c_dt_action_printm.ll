; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_printm.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_printm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_PRINTM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"printm( ) argument #1 must be a non-zero positive integral constant expression\0A\00", align 1
@D_PRINTM_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"printm( ) argument #2 is incompatible with prototype:\0A\09prototype: pointer\0A\09 argument: %s\0A\00", align 1
@yypcb = common dso_local global i32 0, align 4
@DTRACEACT_PRINTM = common dso_local global i32 0, align 4
@DIF_TF_BYREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32*)* @dt_action_printm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_printm(i32* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_13__* @dt_stmt_action(i32* %12, i32* %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %8, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %9, align 8
  %23 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = call i64 @dt_node_is_posconst(%struct.TYPE_14__* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = load i32, i32* @D_PRINTM_SIZE, align 4
  %33 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @dnerror(%struct.TYPE_14__* %31, i32 %32, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = call i64 @dt_node_is_pointer(%struct.TYPE_14__* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = load i32, i32* @D_PRINTM_ADDR, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = trunc i64 %24 to i32
  %43 = call i32 @dt_node_type_name(%struct.TYPE_14__* %41, i8* %26, i32 %42)
  %44 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @dnerror(%struct.TYPE_14__* %39, i32 %40, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i32, i32* @yypcb, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = call i32 @dt_cg(i32 %46, %struct.TYPE_14__* %47)
  %49 = load i32, i32* @yypcb, align 4
  %50 = call %struct.TYPE_15__* @dt_as(i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %52, align 8
  %53 = load i32, i32* @DTRACEACT_PRINTM, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @DIF_TF_BYREF, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %56
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i64 %67, i64* %72, align 8
  %73 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

declare dso_local %struct.TYPE_13__* @dt_stmt_action(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dt_node_is_posconst(%struct.TYPE_14__*) #1

declare dso_local i32 @dnerror(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i64 @dt_node_is_pointer(%struct.TYPE_14__*) #1

declare dso_local i32 @dt_node_type_name(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @dt_cg(i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @dt_as(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
