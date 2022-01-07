; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_delete_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_delete_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { %struct.lwp_info*, i32 }

@lwp_list = common dso_local global %struct.lwp_info* null, align 8
@num_lwps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @delete_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_lwp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca %struct.lwp_info*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.lwp_info* null, %struct.lwp_info** %4, align 8
  %5 = load %struct.lwp_info*, %struct.lwp_info** @lwp_list, align 8
  store %struct.lwp_info* %5, %struct.lwp_info** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %8 = icmp ne %struct.lwp_info* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %11 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @ptid_equal(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %23

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  store %struct.lwp_info* %19, %struct.lwp_info** %4, align 8
  %20 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %21 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %20, i32 0, i32 0
  %22 = load %struct.lwp_info*, %struct.lwp_info** %21, align 8
  store %struct.lwp_info* %22, %struct.lwp_info** %3, align 8
  br label %6

23:                                               ; preds = %16, %6
  %24 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %25 = icmp ne %struct.lwp_info* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %45

27:                                               ; preds = %23
  %28 = load i32, i32* @num_lwps, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @num_lwps, align 4
  %30 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %31 = icmp ne %struct.lwp_info* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %34 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %33, i32 0, i32 0
  %35 = load %struct.lwp_info*, %struct.lwp_info** %34, align 8
  %36 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %37 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %36, i32 0, i32 0
  store %struct.lwp_info* %35, %struct.lwp_info** %37, align 8
  br label %42

38:                                               ; preds = %27
  %39 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %40 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %39, i32 0, i32 0
  %41 = load %struct.lwp_info*, %struct.lwp_info** %40, align 8
  store %struct.lwp_info* %41, %struct.lwp_info** @lwp_list, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %44 = call i32 @xfree(%struct.lwp_info* %43)
  br label %45

45:                                               ; preds = %42, %26
  ret void
}

declare dso_local i64 @ptid_equal(i32, i32) #1

declare dso_local i32 @xfree(%struct.lwp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
