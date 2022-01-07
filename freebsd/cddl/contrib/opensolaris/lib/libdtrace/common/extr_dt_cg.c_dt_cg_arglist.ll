; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_arglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_arglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i64, i32 }

@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_INSTR_FLUSHTS = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_21__* null, align 8
@DIF_TF_BYREF = common dso_local global i32 0, align 4
@DIF_OP_PUSHTR = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DIF_OP_PUSHTV = common dso_local global i32 0, align 4
@EDT_NOTUPREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_18__*, i32*, i32*)* @dt_cg_arglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_arglist(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %10, align 8
  br label %20

20:                                               ; preds = %28, %4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @dt_cg_node(%struct.TYPE_18__* %24, i32* %25, i32* %26)
  br label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %10, align 8
  br label %20

32:                                               ; preds = %20
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @DT_LBL_NONE, align 4
  %35 = load i32, i32* @DIF_INSTR_FLUSHTS, align 4
  %36 = call i32 @dt_cg_node_alloc(i32 %34, i32 %35)
  %37 = call i32 @dt_irlist_append(i32* %33, i32 %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %10, align 8
  br label %39

39:                                               ; preds = %126, %32
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %41 = icmp ne %struct.TYPE_18__* %40, null
  br i1 %41, label %42, label %132

42:                                               ; preds = %39
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = call i32 @dt_node_diftype(%struct.TYPE_22__* %45, %struct.TYPE_18__* %46, %struct.TYPE_17__* %12)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %63
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @dt_cg_typecast(%struct.TYPE_18__* %58, %struct.TYPE_15__* %64, i32* %65, i32* %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @DIF_TF_BYREF, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %42
  %81 = load i32, i32* @DIF_OP_PUSHTR, align 4
  store i32 %81, i32* %14, align 4
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @dt_regset_alloc(i32* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %15, align 4
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @dt_cg_setx(i32* %88, i32 %89, i64 %91)
  br label %95

93:                                               ; preds = %80
  %94 = load i32, i32* @DIF_REG_R0, align 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %93, %85
  br label %99

96:                                               ; preds = %42
  %97 = load i32, i32* @DIF_OP_PUSHTV, align 4
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* @DIF_REG_R0, align 4
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %96, %95
  %100 = load i32, i32* %14, align 4
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @DIF_INSTR_PUSHTS(i32 %100, i32 %102, i32 %103, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* @DT_LBL_NONE, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @dt_cg_node_alloc(i32 %109, i32 %110)
  %112 = call i32 @dt_irlist_append(i32* %108, i32 %111)
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dt_regset_free(i32* %113, i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @DIF_REG_R0, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %99
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @dt_regset_free(i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %99
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  store %struct.TYPE_18__* %129, %struct.TYPE_18__** %10, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %39

132:                                              ; preds = %39
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %133, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %132
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** @yypcb, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @EDT_NOTUPREG, align 4
  %146 = call i32 @longjmp(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %132
  ret void
}

declare dso_local i32 @dt_cg_node(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_node_diftype(%struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @dt_cg_typecast(%struct.TYPE_18__*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i64) #1

declare dso_local i32 @DIF_INSTR_PUSHTS(i32, i32, i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
