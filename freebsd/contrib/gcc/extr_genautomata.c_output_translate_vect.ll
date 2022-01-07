; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_translate_vect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_translate_vect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }

@vect_el_t = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@description = common dso_local global %struct.TYPE_10__* null, align 8
@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"/* Vector translating external insn codes to internal ones.*/\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"static const \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"[] ATTRIBUTE_UNUSED = {\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @output_translate_vect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_translate_vect(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load i32, i32* @vect_el_t, align 4
  %7 = load i32, i32* @heap, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @description, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @VEC_alloc(i32 %6, i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @description, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load i32, i32* @vect_el_t, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @VEC_quick_push(i32 %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %3, align 8
  br label %32

32:                                               ; preds = %47, %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* @vect_el_t, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @VEC_replace(i32 %36, i32 %37, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %35
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %3, align 8
  br label %32

51:                                               ; preds = %32
  %52 = load i32, i32* @output_file, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @output_file, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @output_file, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @output_range_type(i32 %56, i32 0, i32 %59)
  %61 = load i32, i32* @output_file, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @output_file, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = call i32 @output_translate_vect_name(i32 %63, %struct.TYPE_8__* %64)
  %66 = load i32, i32* @output_file, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @output_vect(i32 %68)
  %70 = load i32, i32* @output_file, align 4
  %71 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @vect_el_t, align 4
  %73 = load i32, i32* @heap, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @VEC_free(i32 %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @VEC_alloc(i32, i32, i32) #1

declare dso_local i32 @VEC_quick_push(i32, i32, i32) #1

declare dso_local i32 @VEC_replace(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @output_range_type(i32, i32, i32) #1

declare dso_local i32 @output_translate_vect_name(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @output_vect(i32) #1

declare dso_local i32 @VEC_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
