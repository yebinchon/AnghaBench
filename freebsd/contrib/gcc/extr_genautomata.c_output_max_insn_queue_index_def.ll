; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_max_insn_queue_index_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_max_insn_queue_index_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@description = common dso_local global %struct.TYPE_9__* null, align 8
@dm_insn_reserv = common dso_local global i64 0, align 8
@advance_cycle_insn_decl = common dso_local global %struct.TYPE_8__* null, align 8
@dm_bypass = common dso_local global i64 0, align 8
@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\0Aconst int max_insn_queue_index = %d;\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_max_insn_queue_index_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_max_insn_queue_index_def() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %61, %0
  %9 = load i32, i32* %1, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @description, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 %19
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %4, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @dm_insn_reserv, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %14
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @advance_cycle_insn_decl, align 8
  %30 = icmp ne %struct.TYPE_8__* %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = call %struct.TYPE_10__* @DECL_INSN_RESERV(%struct.TYPE_8__* %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %31
  br label %60

42:                                               ; preds = %27, %14
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @dm_bypass, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call %struct.TYPE_11__* @DECL_BYPASS(%struct.TYPE_8__* %49)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %48
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %8

64:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %71, %64
  %66 = load i32, i32* %1, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %2, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %65

74:                                               ; preds = %65
  %75 = load i32, i32* %1, align 4
  %76 = icmp sge i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @gcc_assert(i32 %77)
  %79 = load i32, i32* @output_file, align 4
  %80 = load i32, i32* %1, align 4
  %81 = shl i32 1, %80
  %82 = sub nsw i32 %81, 1
  %83 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %82)
  ret void
}

declare dso_local %struct.TYPE_10__* @DECL_INSN_RESERV(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_11__* @DECL_BYPASS(%struct.TYPE_8__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
