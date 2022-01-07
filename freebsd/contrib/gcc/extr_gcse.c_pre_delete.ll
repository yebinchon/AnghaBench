; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_pre_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_pre_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.expr** }
%struct.expr = type { i32, i32*, %struct.occr*, %struct.expr* }
%struct.occr = type { i32, i32, %struct.occr* }
%struct.TYPE_4__ = type { i64 }

@expr_hash_table = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@pre_delete_map = common dso_local global i32* null, align 8
@pre_redundant_insns = common dso_local global i32 0, align 4
@gcse_subst_count = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"PRE: redundant insn %d (expression %d) in \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bb %d, reaching reg is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pre_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_delete() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.occr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %111, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @expr_hash_table, i32 0, i32 0), align 8
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %114

13:                                               ; preds = %9
  %14 = load %struct.expr**, %struct.expr*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @expr_hash_table, i32 0, i32 1), align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.expr*, %struct.expr** %14, i64 %16
  %18 = load %struct.expr*, %struct.expr** %17, align 8
  store %struct.expr* %18, %struct.expr** %3, align 8
  br label %19

19:                                               ; preds = %106, %13
  %20 = load %struct.expr*, %struct.expr** %3, align 8
  %21 = icmp ne %struct.expr* %20, null
  br i1 %21, label %22, label %110

22:                                               ; preds = %19
  %23 = load %struct.expr*, %struct.expr** %3, align 8
  %24 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.expr*, %struct.expr** %3, align 8
  %27 = getelementptr inbounds %struct.expr, %struct.expr* %26, i32 0, i32 2
  %28 = load %struct.occr*, %struct.occr** %27, align 8
  store %struct.occr* %28, %struct.occr** %4, align 8
  br label %29

29:                                               ; preds = %101, %22
  %30 = load %struct.occr*, %struct.occr** %4, align 8
  %31 = icmp ne %struct.occr* %30, null
  br i1 %31, label %32, label %105

32:                                               ; preds = %29
  %33 = load %struct.occr*, %struct.occr** %4, align 8
  %34 = getelementptr inbounds %struct.occr, %struct.occr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_4__* @BLOCK_FOR_INSN(i32 %36)
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %8, align 8
  %38 = load i32*, i32** @pre_delete_map, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @TEST_BIT(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %100

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @single_set(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %47
  %52 = load %struct.expr*, %struct.expr** %3, align 8
  %53 = getelementptr inbounds %struct.expr, %struct.expr* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @SET_DEST(i32 %57)
  %59 = call i32 @GET_MODE(i32 %58)
  %60 = call i32* @gen_reg_rtx(i32 %59)
  %61 = load %struct.expr*, %struct.expr** %3, align 8
  %62 = getelementptr inbounds %struct.expr, %struct.expr* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load %struct.expr*, %struct.expr** %3, align 8
  %65 = getelementptr inbounds %struct.expr, %struct.expr* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @SET_DEST(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @gcse_emit_move_after(i32* %66, i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @delete_insn(i32 %71)
  %73 = load %struct.occr*, %struct.occr** %4, align 8
  %74 = getelementptr inbounds %struct.occr, %struct.occr* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @pre_redundant_insns, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @INSN_CUID(i32 %76)
  %78 = call i32 @SET_BIT(i32 %75, i32 %77)
  store i32 1, i32* %2, align 4
  %79 = load i32, i32* @gcse_subst_count, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @gcse_subst_count, align 4
  %81 = load i64, i64* @dump_file, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %63
  %84 = load i64, i64* @dump_file, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @INSN_UID(i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @fprintf(i64 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i64, i64* @dump_file, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load %struct.expr*, %struct.expr** %3, align 8
  %95 = getelementptr inbounds %struct.expr, %struct.expr* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @REGNO(i32* %96)
  %98 = call i32 @fprintf(i64 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %83, %63
  br label %100

100:                                              ; preds = %99, %47, %32
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.occr*, %struct.occr** %4, align 8
  %103 = getelementptr inbounds %struct.occr, %struct.occr* %102, i32 0, i32 2
  %104 = load %struct.occr*, %struct.occr** %103, align 8
  store %struct.occr* %104, %struct.occr** %4, align 8
  br label %29

105:                                              ; preds = %29
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.expr*, %struct.expr** %3, align 8
  %108 = getelementptr inbounds %struct.expr, %struct.expr* %107, i32 0, i32 3
  %109 = load %struct.expr*, %struct.expr** %108, align 8
  store %struct.expr* %109, %struct.expr** %3, align 8
  br label %19

110:                                              ; preds = %19
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %1, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %1, align 4
  br label %9

114:                                              ; preds = %9
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_4__* @BLOCK_FOR_INSN(i32) #1

declare dso_local i64 @TEST_BIT(i32, i32) #1

declare dso_local i32 @single_set(i32) #1

declare dso_local i32* @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @gcse_emit_move_after(i32*, i32, i32) #1

declare dso_local i32 @delete_insn(i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @INSN_CUID(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @REGNO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
