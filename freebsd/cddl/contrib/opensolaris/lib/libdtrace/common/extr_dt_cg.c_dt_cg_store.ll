; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@DT_NF_BITFIELD = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@NBBY = common dso_local global i32 0, align 4
@DT_NF_REF = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_STB = common dso_local global i32 0, align 4
@DIF_OP_STH = common dso_local global i32 0, align 4
@DIF_OP_STW = common dso_local global i32 0, align 4
@DIF_OP_STX = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"internal error -- cg cannot store size %lu when passed by value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, %struct.TYPE_9__*)* @dt_cg_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_store(%struct.TYPE_9__* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DT_NF_BITFIELD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ctf_type_encoding(i32 %22, i32 %25, %struct.TYPE_10__* %9)
  %27 = load i64, i64* @CTF_ERR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NBBY, align 4
  %33 = call i32 @P2ROUNDUP(i32 %31, i32 %32)
  %34 = load i32, i32* @NBBY, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i64 @clp2(i32 %35)
  store i64 %36, i64* %11, align 8
  br label %40

37:                                               ; preds = %19, %4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = call i64 @dt_node_type_size(%struct.TYPE_9__* %38)
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DT_NF_REF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %40
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @dt_regset_alloc(i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @dt_cg_setx(i32* %50, i32 %51, i64 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DIF_INSTR_COPYS(i32 %56, i32 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @DT_LBL_NONE, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dt_cg_node_alloc(i32 %63, i32 %64)
  %66 = call i32 @dt_irlist_append(i32* %62, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @dt_regset_free(i32* %67, i32 %68)
  br label %139

70:                                               ; preds = %40
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DT_NF_BITFIELD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = call i32 @dt_cg_field_set(%struct.TYPE_9__* %78, i32* %79, i32* %80, %struct.TYPE_9__* %81)
  store i32 %82, i32* %12, align 4
  br label %87

83:                                               ; preds = %70
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i64, i64* %11, align 8
  switch i64 %88, label %117 [
    i64 1, label %89
    i64 2, label %96
    i64 4, label %103
    i64 8, label %110
  ]

89:                                               ; preds = %87
  %90 = load i32, i32* @DIF_OP_STB, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DIF_INSTR_STORE(i32 %90, i32 %91, i32 %94)
  store i32 %95, i32* %10, align 4
  br label %122

96:                                               ; preds = %87
  %97 = load i32, i32* @DIF_OP_STH, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DIF_INSTR_STORE(i32 %97, i32 %98, i32 %101)
  store i32 %102, i32* %10, align 4
  br label %122

103:                                              ; preds = %87
  %104 = load i32, i32* @DIF_OP_STW, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @DIF_INSTR_STORE(i32 %104, i32 %105, i32 %108)
  store i32 %109, i32* %10, align 4
  br label %122

110:                                              ; preds = %87
  %111 = load i32, i32* @DIF_OP_STX, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @DIF_INSTR_STORE(i32 %111, i32 %112, i32 %115)
  store i32 %116, i32* %10, align 4
  br label %122

117:                                              ; preds = %87
  %118 = load i32, i32* @D_UNKNOWN, align 4
  %119 = load i64, i64* %11, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @xyerror(i32 %118, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %117, %110, %103, %96, %89
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* @DT_LBL_NONE, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @dt_cg_node_alloc(i32 %124, i32 %125)
  %127 = call i32 @dt_irlist_append(i32* %123, i32 %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DT_NF_BITFIELD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %122
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @dt_regset_free(i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %122
  br label %139

139:                                              ; preds = %138, %47
  ret void
}

declare dso_local i64 @ctf_type_encoding(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @clp2(i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i64 @dt_node_type_size(%struct.TYPE_9__*) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i64) #1

declare dso_local i32 @DIF_INSTR_COPYS(i32, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @dt_cg_field_set(%struct.TYPE_9__*, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @DIF_INSTR_STORE(i32, i32, i32) #1

declare dso_local i32 @xyerror(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
