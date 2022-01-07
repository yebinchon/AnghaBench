; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-operands.c_fini_ssa_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-operands.c_fini_ssa_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssa_operand_memory_d = type { %struct.ssa_operand_memory_d* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@tree = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@build_defs = common dso_local global i32 0, align 4
@build_uses = common dso_local global i32 0, align 4
@build_v_must_defs = common dso_local global i32 0, align 4
@build_v_may_defs = common dso_local global i32 0, align 4
@build_vuses = common dso_local global i32 0, align 4
@free_defs = common dso_local global i32* null, align 8
@free_uses = common dso_local global i32* null, align 8
@free_vuses = common dso_local global i32* null, align 8
@free_maydefs = common dso_local global i32* null, align 8
@free_mustdefs = common dso_local global i32* null, align 8
@operand_memory = common dso_local global %struct.ssa_operand_memory_d* null, align 8
@ops_active = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Original clobbered vars:%d\0A\00", align 1
@clobber_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Static write clobbers avoided:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Static read clobbers avoided:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unescapable clobbers avoided:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Original read-only clobbers:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Static read-only clobbers avoided:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fini_ssa_operands() #0 {
  %1 = alloca %struct.ssa_operand_memory_d*, align 8
  %2 = load i32, i32* @tree, align 4
  %3 = load i32, i32* @heap, align 4
  %4 = load i32, i32* @build_defs, align 4
  %5 = call i32 @VEC_free(i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @tree, align 4
  %7 = load i32, i32* @heap, align 4
  %8 = load i32, i32* @build_uses, align 4
  %9 = call i32 @VEC_free(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @tree, align 4
  %11 = load i32, i32* @heap, align 4
  %12 = load i32, i32* @build_v_must_defs, align 4
  %13 = call i32 @VEC_free(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @tree, align 4
  %15 = load i32, i32* @heap, align 4
  %16 = load i32, i32* @build_v_may_defs, align 4
  %17 = call i32 @VEC_free(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @tree, align 4
  %19 = load i32, i32* @heap, align 4
  %20 = load i32, i32* @build_vuses, align 4
  %21 = call i32 @VEC_free(i32 %18, i32 %19, i32 %20)
  store i32* null, i32** @free_defs, align 8
  store i32* null, i32** @free_uses, align 8
  store i32* null, i32** @free_vuses, align 8
  store i32* null, i32** @free_maydefs, align 8
  store i32* null, i32** @free_mustdefs, align 8
  br label %22

22:                                               ; preds = %25, %0
  %23 = load %struct.ssa_operand_memory_d*, %struct.ssa_operand_memory_d** @operand_memory, align 8
  store %struct.ssa_operand_memory_d* %23, %struct.ssa_operand_memory_d** %1, align 8
  %24 = icmp ne %struct.ssa_operand_memory_d* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.ssa_operand_memory_d*, %struct.ssa_operand_memory_d** @operand_memory, align 8
  %27 = getelementptr inbounds %struct.ssa_operand_memory_d, %struct.ssa_operand_memory_d* %26, i32 0, i32 0
  %28 = load %struct.ssa_operand_memory_d*, %struct.ssa_operand_memory_d** %27, align 8
  store %struct.ssa_operand_memory_d* %28, %struct.ssa_operand_memory_d** @operand_memory, align 8
  %29 = load %struct.ssa_operand_memory_d*, %struct.ssa_operand_memory_d** %1, align 8
  %30 = call i32 @ggc_free(%struct.ssa_operand_memory_d* %29)
  br label %22

31:                                               ; preds = %22
  store i32 0, i32* @ops_active, align 4
  %32 = load i64, i64* @dump_file, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load i32, i32* @dump_flags, align 4
  %36 = load i32, i32* @TDF_STATS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i64, i64* @dump_file, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clobber_stats, i32 0, i32 0), align 4
  %42 = call i32 @fprintf(i64 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* @dump_file, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clobber_stats, i32 0, i32 1), align 4
  %45 = call i32 @fprintf(i64 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* @dump_file, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clobber_stats, i32 0, i32 2), align 4
  %48 = call i32 @fprintf(i64 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* @dump_file, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clobber_stats, i32 0, i32 3), align 4
  %51 = call i32 @fprintf(i64 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* @dump_file, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clobber_stats, i32 0, i32 4), align 4
  %54 = call i32 @fprintf(i64 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* @dump_file, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clobber_stats, i32 0, i32 5), align 4
  %57 = call i32 @fprintf(i64 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %39, %34, %31
  ret void
}

declare dso_local i32 @VEC_free(i32, i32, i32) #1

declare dso_local i32 @ggc_free(%struct.ssa_operand_memory_d*) #1

declare dso_local i32 @fprintf(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
