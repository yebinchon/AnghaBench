; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_transform_insn_regexps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_transform_insn_regexps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@transform_time = common dso_local global i32 0, align 4
@progress_flag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reservation transformation...\00", align 1
@description = common dso_local global %struct.TYPE_7__* null, align 8
@dm_insn_reserv = common dso_local global i64 0, align 8
@advance_cycle_insn_decl = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @transform_insn_regexps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_insn_regexps() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @create_ticker()
  store i32 %3, i32* @transform_time, align 4
  %4 = call i32 (...) @add_advance_cycle_insn_decl()
  %5 = load i64, i64* @progress_flag, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %45, %10
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %1, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @dm_insn_reserv, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %17
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @advance_cycle_insn_decl, align 8
  %33 = icmp ne %struct.TYPE_6__* %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %36 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_6__* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @copy_insn_regexp(i32 %38)
  %40 = call i32 @transform_regexp(i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %42 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_6__* %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %30, %17
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load i64, i64* @progress_flag, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  %55 = call i32 @ticker_off(i32* @transform_time)
  ret void
}

declare dso_local i32 @create_ticker(...) #1

declare dso_local i32 @add_advance_cycle_insn_decl(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @transform_regexp(i32) #1

declare dso_local i32 @copy_insn_regexp(i32) #1

declare dso_local %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_6__*) #1

declare dso_local i32 @ticker_off(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
