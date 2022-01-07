; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, i32*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i64 }

@CTF_K_ARRAY = common dso_local global i64 0, align 8
@yypcb = common dso_local global %struct.TYPE_16__* null, align 8
@DT_NODE_TYPE = common dso_local global i64 0, align 8
@D_DECL_DYNOBJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot declare array of associative arrays\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@D_DECL_VOIDOBJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot declare array of void\0A\00", align 1
@DT_IDFLG_REF = common dso_local global i32 0, align 4
@D_DECL_ARRSUB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [98 x i8] c"positive integral constant expression or tuple signature expected as array declaration subscript\0A\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8
@D_DECL_ARRBIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"array dimension too big\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@DT_DP_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @dt_decl_array(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load i64, i64* @CTF_K_ARRAY, align 8
  %7 = call i32 @dt_decl_alloc(i64 %6, i32* null)
  %8 = call %struct.TYPE_15__* @dt_decl_push(i32 %7)
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** @yypcb, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %5, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CTF_K_ARRAY, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %17, %12
  %26 = phi i1 [ false, %12 ], [ %24, %17 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %5, align 8
  br label %12

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = icmp ne %struct.TYPE_15__* %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DT_NODE_TYPE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @D_DECL_DYNOBJ, align 4
  %46 = call i32 @xyerror(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38, %35
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %60, align 8
  br label %61

61:                                               ; preds = %47, %31
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @strcmp(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @D_DECL_VOIDOBJ, align 4
  %78 = call i32 @xyerror(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %68, %61
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = icmp ne %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DT_NODE_TYPE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = load i32, i32* @DT_IDFLG_REF, align 4
  %91 = call %struct.TYPE_14__* @dt_node_cook(%struct.TYPE_14__* %89, i32 %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %93, align 8
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %2, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = call i64 @dt_node_is_posconst(%struct.TYPE_14__* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @D_DECL_ARRSUB, align 4
  %99 = call i32 @xyerror(i32 %98, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %88
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @UINT_MAX, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @D_DECL_ARRBIG, align 4
  %108 = call i32 @xyerror(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %100
  br label %122

110:                                              ; preds = %82, %79
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %112 = icmp ne %struct.TYPE_14__* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %116, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = load i32, i32* @DT_DP_ANON, align 4
  %120 = call i32 @dt_decl_prototype(%struct.TYPE_14__* %117, %struct.TYPE_14__* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %113, %110
  br label %122

122:                                              ; preds = %121, %109
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %123
}

declare dso_local %struct.TYPE_15__* @dt_decl_push(i32) #1

declare dso_local i32 @dt_decl_alloc(i64, i32*) #1

declare dso_local i32 @xyerror(i32, i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local %struct.TYPE_14__* @dt_node_cook(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @dt_node_is_posconst(%struct.TYPE_14__*) #1

declare dso_local i32 @dt_decl_prototype(%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
