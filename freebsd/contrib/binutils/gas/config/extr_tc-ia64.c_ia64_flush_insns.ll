; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_ia64_flush_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_ia64_flush_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { %struct.label_fix*, %struct.label_fix*, %struct.TYPE_14__ }
%struct.label_fix = type { i32, i32, %struct.label_fix* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }

@md = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@now_seg = common dso_local global i32 0, align 4
@now_subseg = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURR_SLOT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@DWARF2_FLAG_BASIC_BLOCK = common dso_local global i32 0, align 4
@unwind = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@frag_now = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unwind directive not followed by an instruction.\00", align 1
@O_register = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"qualifying predicate not followed by instruction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_flush_insns() #0 {
  %1 = alloca %struct.label_fix*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @md, i32 0, i32 2), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %98

9:                                                ; preds = %0
  %10 = load i32, i32* @now_seg, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @now_subseg, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @md, i32 0, i32 2), align 8
  %13 = call i32 @subseg_set(i32 %12, i32 0)
  br label %14

14:                                               ; preds = %17, %9
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @md, i32 0, i32 0), align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @emit_one_bundle()
  br label %14

19:                                               ; preds = %14
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.label_fix*, %struct.label_fix** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @CURR_SLOT, i32 0, i32 1), align 8
  store %struct.label_fix* %21, %struct.label_fix** %1, align 8
  br label %22

22:                                               ; preds = %35, %19
  %23 = load %struct.label_fix*, %struct.label_fix** %1, align 8
  %24 = icmp ne %struct.label_fix* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.label_fix*, %struct.label_fix** %1, align 8
  %27 = getelementptr inbounds %struct.label_fix, %struct.label_fix* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @symbol_set_value_now(i32 %28)
  %30 = load %struct.label_fix*, %struct.label_fix** %1, align 8
  %31 = getelementptr inbounds %struct.label_fix, %struct.label_fix* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load %struct.label_fix*, %struct.label_fix** %1, align 8
  %37 = getelementptr inbounds %struct.label_fix, %struct.label_fix* %36, i32 0, i32 2
  %38 = load %struct.label_fix*, %struct.label_fix** %37, align 8
  store %struct.label_fix* %38, %struct.label_fix** %1, align 8
  br label %22

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = call i32 @dwarf2_where(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @CURR_SLOT, i32 0, i32 2))
  %44 = load i32, i32* @DWARF2_FLAG_BASIC_BLOCK, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @CURR_SLOT, i32 0, i32 2, i32 0), align 8
  %46 = or i32 %45, %44
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @CURR_SLOT, i32 0, i32 2, i32 0), align 8
  %47 = call i32 (...) @frag_now_fix()
  %48 = call i32 @dwarf2_gen_line_info(i32 %47, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @CURR_SLOT, i32 0, i32 2))
  br label %49

49:                                               ; preds = %42, %39
  store %struct.label_fix* null, %struct.label_fix** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @CURR_SLOT, i32 0, i32 1), align 8
  %50 = load %struct.label_fix*, %struct.label_fix** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @CURR_SLOT, i32 0, i32 0), align 8
  store %struct.label_fix* %50, %struct.label_fix** %1, align 8
  br label %51

51:                                               ; preds = %59, %49
  %52 = load %struct.label_fix*, %struct.label_fix** %1, align 8
  %53 = icmp ne %struct.label_fix* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.label_fix*, %struct.label_fix** %1, align 8
  %56 = getelementptr inbounds %struct.label_fix, %struct.label_fix* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @symbol_set_value_now(i32 %57)
  br label %59

59:                                               ; preds = %54
  %60 = load %struct.label_fix*, %struct.label_fix** %1, align 8
  %61 = getelementptr inbounds %struct.label_fix, %struct.label_fix* %60, i32 0, i32 2
  %62 = load %struct.label_fix*, %struct.label_fix** %61, align 8
  store %struct.label_fix* %62, %struct.label_fix** %1, align 8
  br label %51

63:                                               ; preds = %51
  store %struct.label_fix* null, %struct.label_fix** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @CURR_SLOT, i32 0, i32 0), align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @unwind, i32 0, i32 0), align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %4, align 8
  br label %65

65:                                               ; preds = %85, %63
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = icmp ne %struct.TYPE_11__* %66, null
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %81 [
    i32 133, label %73
    i32 132, label %73
    i32 142, label %73
    i32 139, label %73
    i32 128, label %80
    i32 141, label %80
    i32 140, label %80
    i32 138, label %80
    i32 137, label %80
    i32 136, label %80
    i32 135, label %80
    i32 134, label %80
    i32 131, label %80
    i32 130, label %80
    i32 129, label %80
  ]

73:                                               ; preds = %68, %68, %68, %68
  %74 = call i64 @frag_more(i32 0)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @frag_now, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %84

80:                                               ; preds = %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68
  br label %84

81:                                               ; preds = %68
  %82 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @as_bad(i8* %82)
  br label %84

84:                                               ; preds = %81, %80, %73
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %4, align 8
  br label %65

89:                                               ; preds = %65
  store %struct.TYPE_11__* null, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @unwind, i32 0, i32 0), align 8
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @subseg_set(i32 %90, i32 %91)
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @md, i32 0, i32 1, i32 0), align 8
  %94 = load i64, i64* @O_register, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call i32 @as_bad(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %8, %96, %89
  ret void
}

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32 @emit_one_bundle(...) #1

declare dso_local i32 @symbol_set_value_now(i32) #1

declare dso_local i32 @dwarf2_where(%struct.TYPE_14__*) #1

declare dso_local i32 @dwarf2_gen_line_info(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @frag_now_fix(...) #1

declare dso_local i64 @frag_more(i32) #1

declare dso_local i32 @as_bad(i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
