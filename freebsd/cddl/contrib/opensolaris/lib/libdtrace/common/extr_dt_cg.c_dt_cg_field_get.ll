; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_field_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_field_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cg: bad field: off %lu type <%ld> bits %u\0A\00", align 1
@DT_TOK_PTR = common dso_local global i64 0, align 8
@DT_TOK_DOT = common dso_local global i64 0, align 8
@DT_NF_SIGNED = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@DIF_OP_SLL = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_SRA = common dso_local global i32 0, align 4
@DIF_OP_SRL = common dso_local global i32 0, align 4
@DIF_OP_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, i32*, %struct.TYPE_10__*)* @dt_cg_field_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_field_get(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ctf_type_encoding(i32* %16, i32 %19, %struct.TYPE_11__* %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 64
  br i1 %25, label %26, label %37

26:                                               ; preds = %22, %5
  %27 = load i32, i32* @D_UNKNOWN, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xyerror(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %26, %22
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DT_TOK_PTR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DT_TOK_DOT, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ true, %37 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @dt_regset_alloc(i32* %58)
  store i32 %59, i32* %15, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DT_NF_SIGNED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NBBY, align 4
  %70 = call i32 @P2ROUNDUP(i32 %68, i32 %69)
  %71 = load i32, i32* @NBBY, align 4
  %72 = sdiv i32 %70, %71
  %73 = call i32 @clp2(i32 %72)
  %74 = load i32, i32* @NBBY, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NBBY, align 4
  %80 = srem i32 %78, %79
  %81 = sub nsw i32 %75, %80
  store i32 %81, i32* %13, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 64, %84
  %86 = sext i32 %85 to i64
  %87 = call i32 @dt_cg_setx(i32* %82, i32 %83, i64 %86)
  %88 = load i32, i32* @DIF_OP_SLL, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @DIF_INSTR_FMT(i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* @DT_LBL_NONE, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @dt_cg_node_alloc(i32 %94, i32 %95)
  %97 = call i32 @dt_irlist_append(i32* %93, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %15, align 4
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 64, %101
  %103 = sext i32 %102 to i64
  %104 = call i32 @dt_cg_setx(i32* %98, i32 %99, i64 %103)
  %105 = load i32, i32* @DIF_OP_SRA, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @DIF_INSTR_FMT(i32 %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* @DT_LBL_NONE, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @dt_cg_node_alloc(i32 %111, i32 %112)
  %114 = call i32 @dt_irlist_append(i32* %110, i32 %113)
  br label %167

115:                                              ; preds = %49
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NBBY, align 4
  %119 = call i32 @P2ROUNDUP(i32 %117, i32 %118)
  %120 = load i32, i32* @NBBY, align 4
  %121 = sdiv i32 %119, %120
  %122 = call i32 @clp2(i32 %121)
  %123 = load i32, i32* @NBBY, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NBBY, align 4
  %129 = srem i32 %127, %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %129, %131
  %133 = sub nsw i32 %124, %132
  store i32 %133, i32* %13, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = call i32 @dt_cg_setx(i32* %134, i32 %135, i64 %137)
  %139 = load i32, i32* @DIF_OP_SRL, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @DIF_INSTR_FMT(i32 %139, i32 %140, i32 %141, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @DT_LBL_NONE, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @dt_cg_node_alloc(i32 %145, i32 %146)
  %148 = call i32 @dt_irlist_append(i32* %144, i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %15, align 4
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  %154 = shl i64 1, %153
  %155 = sub i64 %154, 1
  %156 = call i32 @dt_cg_setx(i32* %149, i32 %150, i64 %155)
  %157 = load i32, i32* @DIF_OP_AND, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @DIF_INSTR_FMT(i32 %157, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* @DT_LBL_NONE, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @dt_cg_node_alloc(i32 %163, i32 %164)
  %166 = call i32 @dt_irlist_append(i32* %162, i32 %165)
  br label %167

167:                                              ; preds = %115, %66
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @dt_regset_free(i32* %168, i32 %169)
  ret void
}

declare dso_local i64 @ctf_type_encoding(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @xyerror(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @clp2(i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i64) #1

declare dso_local i32 @DIF_INSTR_FMT(i32, i32, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
