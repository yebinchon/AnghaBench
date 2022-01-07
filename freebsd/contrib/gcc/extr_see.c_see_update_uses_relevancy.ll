; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_update_uses_relevancy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_update_uses_relevancy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, %struct.see_entry_extra_info* }
%struct.see_entry_extra_info = type { i32, i32 }

@df = common dso_local global i32 0, align 4
@use_entry = common dso_local global %struct.TYPE_2__* null, align 8
@uses_num = common dso_local global i32 0, align 4
@RELEVANT_USE = common dso_local global i32 0, align 4
@NOT_RELEVANT = common dso_local global i32 0, align 4
@REG_LIBCALL = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@REG_RETVAL = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"u%i insn %i reg %i \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NOT RELEVANT \0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"RELEVANT USE \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @see_update_uses_relevancy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @see_update_uses_relevancy() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.see_entry_extra_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %6 = load i32, i32* @df, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @use_entry, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %0
  br label %111

12:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %108, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @uses_num, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %111

17:                                               ; preds = %13
  %18 = load i32, i32* @df, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DF_USES_GET(i32 %18, i32 %19)
  %21 = call i32* @DF_REF_INSN(i32 %20)
  store i32* %21, i32** %1, align 8
  %22 = load i32, i32* @df, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @DF_USES_GET(i32 %22, i32 %23)
  %25 = call i32* @DF_REF_REAL_REG(i32 %24)
  store i32* %25, i32** %2, align 8
  %26 = load i32, i32* @RELEVANT_USE, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %1, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %17
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @INSN_P(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32*, i32** %1, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @REG_LIBCALL, align 4
  %41 = load i32, i32* @NULL_RTX, align 4
  %42 = call i64 @find_reg_note(i32* %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %38, %35
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* @REG_RETVAL, align 4
  %49 = load i32, i32* @NULL_RTX, align 4
  %50 = call i64 @find_reg_note(i32* %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %46
  br label %57

55:                                               ; preds = %17
  %56 = load i32, i32* @NOT_RELEVANT, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = load i64, i64* @dump_file, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i64, i64* @dump_file, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %1, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @INSN_UID(i32* %66)
  br label %69

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ -1, %68 ]
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @REGNO(i32* %71)
  %73 = call i32 (i64, i8*, ...) @fprintf(i64 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %70, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @NOT_RELEVANT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i64, i64* @dump_file, align 8
  %79 = call i32 (i64, i8*, ...) @fprintf(i64 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %83

80:                                               ; preds = %69
  %81 = load i64, i64* @dump_file, align 8
  %82 = call i32 (i64, i8*, ...) @fprintf(i64 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %57
  %85 = call %struct.see_entry_extra_info* @xmalloc(i32 8)
  store %struct.see_entry_extra_info* %85, %struct.see_entry_extra_info** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %3, align 8
  %88 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %3, align 8
  %91 = getelementptr inbounds %struct.see_entry_extra_info, %struct.see_entry_extra_info* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.see_entry_extra_info*, %struct.see_entry_extra_info** %3, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @use_entry, align 8
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store %struct.see_entry_extra_info* %92, %struct.see_entry_extra_info** %97, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @use_entry, align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @use_entry, align 8
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %84
  %109 = load i32, i32* %5, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %13

111:                                              ; preds = %11, %13
  ret void
}

declare dso_local i32* @DF_REF_INSN(i32) #1

declare dso_local i32 @DF_USES_GET(i32, i32) #1

declare dso_local i32* @DF_REF_REAL_REG(i32) #1

declare dso_local i32 @INSN_P(i32*) #1

declare dso_local i64 @find_reg_note(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @INSN_UID(i32*) #1

declare dso_local i32 @REGNO(i32*) #1

declare dso_local %struct.see_entry_extra_info* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
