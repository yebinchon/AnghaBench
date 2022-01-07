; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }

@description = common dso_local global %struct.TYPE_10__* null, align 8
@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0A#define %s %d\0A\0A\00", align 1
@ADVANCE_CYCLE_VALUE_NAME = common dso_local global i8* null, align 8
@advance_cycle_insn_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_tables() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = call i32 (...) @initiate_min_issue_delay_pass_states()
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** @description, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %1, align 8
  br label %6

6:                                                ; preds = %20, %0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %11 = call i32 @output_translate_vect(%struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %13 = call i32 @output_trans_table(%struct.TYPE_9__* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %15 = call i32 @output_min_issue_delay_table(%struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %17 = call i32 @output_dead_lock_vect(%struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %19 = call i32 @output_reserved_units_table(%struct.TYPE_9__* %18)
  br label %20

20:                                               ; preds = %9
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %1, align 8
  br label %6

24:                                               ; preds = %6
  %25 = load i32, i32* @output_file, align 4
  %26 = load i8*, i8** @ADVANCE_CYCLE_VALUE_NAME, align 8
  %27 = load i32, i32* @advance_cycle_insn_decl, align 4
  %28 = call %struct.TYPE_11__* @DECL_INSN_RESERV(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %30)
  ret void
}

declare dso_local i32 @initiate_min_issue_delay_pass_states(...) #1

declare dso_local i32 @output_translate_vect(%struct.TYPE_9__*) #1

declare dso_local i32 @output_trans_table(%struct.TYPE_9__*) #1

declare dso_local i32 @output_min_issue_delay_table(%struct.TYPE_9__*) #1

declare dso_local i32 @output_dead_lock_vect(%struct.TYPE_9__*) #1

declare dso_local i32 @output_reserved_units_table(%struct.TYPE_9__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @DECL_INSN_RESERV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
