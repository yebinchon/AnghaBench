; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_push_minipool_fix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_push_minipool_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32, i32, %struct.TYPE_4__*, i8*, i64, i64, i32*, i64, i8* }

@minipool_obstack = common dso_local global i32 0, align 4
@ARM_DOUBLEWORD_ALIGN = common dso_local global i64 0, align 8
@minipool_pad = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c";; %smode fixup for i%d; addr %lu, range (%ld,%ld): \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@minipool_fix_head = common dso_local global %struct.TYPE_4__* null, align 8
@minipool_fix_tail = common dso_local global %struct.TYPE_4__* null, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8**, i32, i8*)* @push_minipool_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_minipool_fix(i8* %0, i64 %1, i8** %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = call i64 @obstack_alloc(i32* @minipool_obstack, i32 72)
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %11, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 9
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  store i64 %17, i64* %19, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8** %20, i8*** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @MINIPOOL_FIX_SIZE(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @get_attr_pool_range(i8* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @get_attr_neg_pool_range(i8* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 7
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %5
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %5
  %53 = phi i1 [ true, %5 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @gcc_assert(i32 %54)
  %56 = load i64, i64* @ARM_DOUBLEWORD_ALIGN, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 4, i32* @minipool_pad, align 4
  br label %64

64:                                               ; preds = %63, %58, %52
  %65 = load i64, i64* @dump_file, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = load i64, i64* @dump_file, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @GET_MODE_NAME(i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @INSN_UID(i8* %71)
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = mul nsw i64 -1, %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i64, i8*, ...) @fprintf(i64 %68, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %72, i64 %73, i64 %77, i64 %80)
  %82 = load i64, i64* @dump_file, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @arm_print_value(i64 %82, i8* %85)
  %87 = load i64, i64* @dump_file, align 8
  %88 = call i32 (i64, i8*, ...) @fprintf(i64 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %67, %64
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %91, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @minipool_fix_head, align 8
  %93 = icmp ne %struct.TYPE_4__* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @minipool_fix_tail, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %97, align 8
  br label %100

98:                                               ; preds = %89
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** @minipool_fix_head, align 8
  br label %100

100:                                              ; preds = %98, %94
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** @minipool_fix_tail, align 8
  ret void
}

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @MINIPOOL_FIX_SIZE(i32) #1

declare dso_local i64 @get_attr_pool_range(i8*) #1

declare dso_local i64 @get_attr_neg_pool_range(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @INSN_UID(i8*) #1

declare dso_local i32 @arm_print_value(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
