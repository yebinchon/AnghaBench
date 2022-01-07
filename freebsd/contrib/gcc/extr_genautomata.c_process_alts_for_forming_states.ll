; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_alts_for_forming_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_alts_for_forming_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__** }

@rm_oneof = common dso_local global i64 0, align 8
@alt_state_being_formed = common dso_local global %struct.TYPE_11__* null, align 8
@state_being_formed = common dso_local global i32 0, align 4
@curr_ainsn = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32)* @process_alts_for_forming_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_alts_for_forming_states(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @rm_oneof, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = call %struct.TYPE_11__* (...) @get_free_alt_state()
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** @alt_state_being_formed, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_free_state(i32 1, i32 %15)
  store i32 %16, i32* @state_being_formed, align 4
  %17 = load i32, i32* @state_being_formed, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @alt_state_being_formed, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curr_ainsn, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @alt_state_being_formed, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** @alt_state_being_formed, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curr_ainsn, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @process_seq_for_forming_states(%struct.TYPE_10__* %28, i32 %29, i32 0)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @alt_state_being_formed, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @finish_forming_alt_state(%struct.TYPE_11__* %31, i32 %32)
  br label %62

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @gcc_assert(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = call %struct.TYPE_13__* @REGEXP_ONEOF(%struct.TYPE_10__* %40)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %58, %34
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = call %struct.TYPE_13__* @REGEXP_ONEOF(%struct.TYPE_10__* %49)
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %52, i64 %54
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i32, i32* %5, align 4
  call void @process_alts_for_forming_states(%struct.TYPE_10__* %56, i32 %57, i32 1)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %45

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %13
  ret void
}

declare dso_local %struct.TYPE_11__* @get_free_alt_state(...) #1

declare dso_local i32 @get_free_state(i32, i32) #1

declare dso_local i32 @process_seq_for_forming_states(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @finish_forming_alt_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.TYPE_13__* @REGEXP_ONEOF(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
