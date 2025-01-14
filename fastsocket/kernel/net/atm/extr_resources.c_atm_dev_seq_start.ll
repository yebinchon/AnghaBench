; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_resources.c_atm_dev_seq_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_resources.c_atm_dev_seq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@atm_dev_mutex = common dso_local global i32 0, align 4
@SEQ_START_TOKEN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @atm_dev_seq_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i64*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = call i32 @mutex_lock(i32* @atm_dev_mutex)
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @dev_get_idx(i64 %11)
  br label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** @SEQ_START_TOKEN, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i8* [ %12, %9 ], [ %14, %13 ]
  ret i8* %16
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @dev_get_idx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
