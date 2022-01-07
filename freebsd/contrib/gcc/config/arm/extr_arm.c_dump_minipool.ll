; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_dump_minipool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_dump_minipool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__*, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@ARM_DOUBLEWORD_ALIGN = common dso_local global i64 0, align 8
@minipool_vector_head = common dso_local global %struct.TYPE_5__* null, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c";; Emitting minipool after insn %u; address %ld; align %d (bytes)\0A\00", align 1
@minipool_barrier = common dso_local global %struct.TYPE_6__* null, align 8
@minipool_vector_label = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c";;  Offset %u, min %ld, max %ld \00", align 1
@minipool_vector_tail = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dump_minipool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_minipool(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* @ARM_DOUBLEWORD_ALIGN, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @minipool_vector_head, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  br label %10

10:                                               ; preds = %25, %8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %29

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %3, align 8
  br label %10

29:                                               ; preds = %23, %10
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i64, i64* @dump_file, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i64, i64* @dump_file, align 8
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @INSN_UID(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @minipool_barrier, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 8, i32 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @fprintf(i64 %34, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %39, i64 %44)
  br label %46

46:                                               ; preds = %33, %30
  %47 = call i32 (...) @gen_label_rtx()
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @emit_label_after(i32 %47, i32 %48)
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 (...) @gen_align_8()
  br label %56

54:                                               ; preds = %46
  %55 = call i32 (...) @gen_align_4()
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @emit_insn_after(i32 %57, i32 %58)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* @minipool_vector_label, align 4
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @emit_label_after(i32 %60, i32 %61)
  store i32 %62, i32* %2, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @minipool_vector_head, align 8
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %3, align 8
  br label %64

64:                                               ; preds = %108, %56
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %110

67:                                               ; preds = %64
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load i64, i64* @dump_file, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load i64, i64* @dump_file, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @fprintf(i64 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %80, i64 %83, i64 %86)
  %88 = load i64, i64* @dump_file, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @arm_print_value(i64 %88, i32 %91)
  %93 = load i64, i64* @dump_file, align 8
  %94 = call i32 @fputc(i8 signext 10, i64 %93)
  br label %95

95:                                               ; preds = %75, %72
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %99 [
  ]

99:                                               ; preds = %95
  %100 = call i32 (...) @gcc_unreachable()
  br label %101

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %67
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %4, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = call i32 @free(%struct.TYPE_5__* %106)
  br label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %3, align 8
  br label %64

110:                                              ; preds = %64
  store i32* null, i32** @minipool_vector_tail, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @minipool_vector_head, align 8
  %111 = call i32 (...) @gen_consttable_end()
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @emit_insn_after(i32 %111, i32 %112)
  store i32 %113, i32* %2, align 4
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @emit_barrier_after(i32 %114)
  store i32 %115, i32* %2, align 4
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i32, i64, i64) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @emit_label_after(i32, i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @emit_insn_after(i32, i32) #1

declare dso_local i32 @gen_align_8(...) #1

declare dso_local i32 @gen_align_4(...) #1

declare dso_local i32 @arm_print_value(i64, i32) #1

declare dso_local i32 @fputc(i8 signext, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @gen_consttable_end(...) #1

declare dso_local i32 @emit_barrier_after(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
