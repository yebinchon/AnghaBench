; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_add_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_add_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { %struct.lwp_info*, i32 }

@lwp_list = common dso_local global %struct.lwp_info* null, align 8
@num_lwps = common dso_local global i32 0, align 4
@threaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lwp_info* (i32)* @add_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lwp_info* @add_lwp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwp_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @is_lwp(i32 %4)
  %6 = call i32 @gdb_assert(i32 %5)
  %7 = call i64 @xmalloc(i32 16)
  %8 = inttoptr i64 %7 to %struct.lwp_info*
  store %struct.lwp_info* %8, %struct.lwp_info** %3, align 8
  %9 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %10 = call i32 @memset(%struct.lwp_info* %9, i32 0, i32 16)
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %13 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.lwp_info*, %struct.lwp_info** @lwp_list, align 8
  %15 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %16 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %15, i32 0, i32 0
  store %struct.lwp_info* %14, %struct.lwp_info** %16, align 8
  %17 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  store %struct.lwp_info* %17, %struct.lwp_info** @lwp_list, align 8
  %18 = load i32, i32* @num_lwps, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @num_lwps, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* @threaded, align 4
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  ret %struct.lwp_info* %23
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @is_lwp(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.lwp_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
