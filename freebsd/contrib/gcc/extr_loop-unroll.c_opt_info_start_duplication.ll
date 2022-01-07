; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_opt_info_start_duplication.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_opt_info_start_duplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt_info = type { i32 }

@last_basic_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opt_info*)* @opt_info_start_duplication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_info_start_duplication(%struct.opt_info* %0) #0 {
  %2 = alloca %struct.opt_info*, align 8
  store %struct.opt_info* %0, %struct.opt_info** %2, align 8
  %3 = load %struct.opt_info*, %struct.opt_info** %2, align 8
  %4 = icmp ne %struct.opt_info* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @last_basic_block, align 4
  %7 = load %struct.opt_info*, %struct.opt_info** %2, align 8
  %8 = getelementptr inbounds %struct.opt_info, %struct.opt_info* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
