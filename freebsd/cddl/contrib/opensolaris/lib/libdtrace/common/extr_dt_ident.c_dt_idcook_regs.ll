; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idcook_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_ident.c_dt_idcook_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@yypcb = common dso_local global %struct.TYPE_13__* null, align 8
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_PROTO_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s[ ] prototype mismatch: %d arg%spassed, 1 expected\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"s \00", align 1
@DT_NODE_INT = common dso_local global i64 0, align 8
@D_PROTO_ARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"%s[ ] argument #1 is incompatible with prototype:\0A\09prototype: %s\0A\09 argument: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"integer constant\00", align 1
@DT_NF_SIGNED = common dso_local global i32 0, align 4
@D_REGS_IDX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"index %lld is out of range for array %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to resolve type of %s: %s\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.TYPE_11__*)* @dt_idcook_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_idcook_regs(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @yypcb, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load i32, i32* @D_PROTO_LEN, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i8* %31)
  br label %33

33:                                               ; preds = %22, %4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DT_NODE_INT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load i32, i32* @D_PROTO_ARG, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = trunc i64 %17 to i32
  %51 = call i32 @dt_type_name(i32 %46, i32 %49, i8* %19, i32 %50)
  %52 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %40, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %39, %33
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DT_NF_SIGNED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* @D_REGS_IDX, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %65, %60, %53
  %76 = call i32 @dt_type_lookup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_10__* %9)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* @D_UNKNOWN, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @dtrace_errno(i32* %84)
  %86 = call i32 @dtrace_errmsg(i32* %83, i32 %85)
  %87 = call i32 (i32, i8*, i32, ...) @xyerror(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %78, %75
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @B_FALSE, align 4
  %105 = call i32 @dt_node_type_assign(%struct.TYPE_11__* %97, i32 %100, i32 %103, i32 %104)
  %106 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xyerror(i32, i8*, i32, ...) #2

declare dso_local i32 @dt_type_name(i32, i32, i8*, i32) #2

declare dso_local i32 @dt_type_lookup(i8*, %struct.TYPE_10__*) #2

declare dso_local i32 @dtrace_errmsg(i32*, i32) #2

declare dso_local i32 @dtrace_errno(i32*) #2

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_11__*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
