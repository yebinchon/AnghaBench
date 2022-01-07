; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_copy_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_copy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { %struct.TYPE_4__, %struct.unw_labeled_state* }
%struct.TYPE_4__ = type { i32 }
%struct.unw_labeled_state = type { i64, %struct.TYPE_5__, %struct.unw_labeled_state* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.unw_state_record*)* @desc_copy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_copy_state(i64 %0, %struct.unw_state_record* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.unw_state_record*, align 8
  %5 = alloca %struct.unw_labeled_state*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.unw_state_record* %1, %struct.unw_state_record** %4, align 8
  %6 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %7 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %6, i32 0, i32 1
  %8 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %7, align 8
  store %struct.unw_labeled_state* %8, %struct.unw_labeled_state** %5, align 8
  br label %9

9:                                                ; preds = %36, %2
  %10 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %11 = icmp ne %struct.unw_labeled_state* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %14 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %20 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %19, i32 0, i32 0
  %21 = call i32 @free_state_stack(%struct.TYPE_4__* %20)
  %22 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %23 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %22, i32 0, i32 0
  %24 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %25 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %24, i32 0, i32 1
  %26 = call i32 @memcpy(%struct.TYPE_4__* %23, %struct.TYPE_5__* %25, i32 4)
  %27 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %28 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dup_state_stack(i32 %30)
  %32 = load %struct.unw_state_record*, %struct.unw_state_record** %4, align 8
  %33 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  ret void

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %5, align 8
  %38 = getelementptr inbounds %struct.unw_labeled_state, %struct.unw_labeled_state* %37, i32 0, i32 2
  %39 = load %struct.unw_labeled_state*, %struct.unw_labeled_state** %38, align 8
  store %struct.unw_labeled_state* %39, %struct.unw_labeled_state** %5, align 8
  br label %9

40:                                               ; preds = %9
  %41 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @free_state_stack(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dup_state_stack(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
