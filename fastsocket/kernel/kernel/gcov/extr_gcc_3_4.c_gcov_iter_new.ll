; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_iter_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_iter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_iterator = type { %struct.gcov_info* }
%struct.gcov_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gcov_iterator* @gcov_iter_new(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca %struct.gcov_iterator*, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %2, align 8
  %4 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %5 = call i32 @num_counter_active(%struct.gcov_info* %4)
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = add i64 8, %7
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gcov_iterator* @kzalloc(i32 %9, i32 %10)
  store %struct.gcov_iterator* %11, %struct.gcov_iterator** %3, align 8
  %12 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %13 = icmp ne %struct.gcov_iterator* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %16 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %17 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %16, i32 0, i32 0
  store %struct.gcov_info* %15, %struct.gcov_info** %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  ret %struct.gcov_iterator* %19
}

declare dso_local %struct.gcov_iterator* @kzalloc(i32, i32) #1

declare dso_local i32 @num_counter_active(%struct.gcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
