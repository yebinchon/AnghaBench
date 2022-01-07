; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_prearith_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_prearith_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_14__*, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@CTF_K_POINTER = common dso_local global i64 0, align 8
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DT_NODE_VAR = common dso_local global i64 0, align 8
@DT_IDFLG_DIFW = common dso_local global i32 0, align 4
@DT_NF_REF = common dso_local global i32 0, align 4
@DT_NF_WRITABLE = common dso_local global i32 0, align 4
@DT_NF_LVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i32*, i32)* @dt_cg_prearith_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_prearith_op(%struct.TYPE_12__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  store i32 1, i32* %12, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = call i64 @dt_node_is_pointer(%struct.TYPE_12__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ctf_type_resolve(i32* %23, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @ctf_type_kind(i32* %28, i32 %29)
  %31 = load i64, i64* @CTF_K_POINTER, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ctf_type_reference(i32* %36, i32 %37)
  %39 = call i32 @ctf_type_size(i32* %35, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %22, %4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @dt_cg_node(%struct.TYPE_14__* %43, i32* %44, i32* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @dt_regset_alloc(i32* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @dt_cg_setx(i32* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DIF_INSTR_FMT(i32 %60, i32 %63, i32 %64, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @DT_LBL_NONE, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @dt_cg_node_alloc(i32 %70, i32 %71)
  %73 = call i32 @dt_irlist_append(i32* %69, i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @dt_regset_free(i32* %74, i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DT_NODE_VAR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %40
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_13__* @dt_ident_resolve(i32 %89)
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %14, align 8
  %91 = load i32, i32* @DT_IDFLG_DIFW, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %97 = call i32 @dt_cg_stvar(%struct.TYPE_13__* %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @DIF_INSTR_STV(i32 %97, i32 %100, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* @DT_LBL_NONE, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @dt_cg_node_alloc(i32 %106, i32 %107)
  %109 = call i32 @dt_irlist_append(i32* %105, i32 %108)
  br label %176

110:                                              ; preds = %40
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DT_NF_REF, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %15, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @DT_NF_WRITABLE, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DT_NF_LVALUE, align 4
  %132 = and i32 %130, %131
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* @DT_NF_REF, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %134
  store i32 %140, i32* %138, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @dt_cg_node(%struct.TYPE_14__* %143, i32* %144, i32* %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = call i32 @dt_cg_store(%struct.TYPE_12__* %147, i32* %148, i32* %149, %struct.TYPE_14__* %152)
  %154 = load i32*, i32** %7, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @dt_regset_free(i32* %154, i32 %159)
  %161 = load i32, i32* @DT_NF_REF, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %162
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %169
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %110, %84
  ret void
}

declare dso_local i64 @dt_node_is_pointer(%struct.TYPE_12__*) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ctf_type_kind(i32*, i32) #1

declare dso_local i32 @ctf_type_size(i32*, i32) #1

declare dso_local i32 @ctf_type_reference(i32*, i32) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i32) #1

declare dso_local i32 @DIF_INSTR_FMT(i32, i32, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @dt_ident_resolve(i32) #1

declare dso_local i32 @DIF_INSTR_STV(i32, i32, i32) #1

declare dso_local i32 @dt_cg_stvar(%struct.TYPE_13__*) #1

declare dso_local i32 @dt_cg_store(%struct.TYPE_12__*, i32*, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
