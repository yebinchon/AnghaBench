; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_stop_and_resume_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_stop_and_resume_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { %struct.lwp_info*, i32, i32 }

@lwp_list = common dso_local global %struct.lwp_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @stop_and_resume_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_and_resume_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lwp_info*, align 8
  store %struct.lwp_info* %0, %struct.lwp_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %7 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %2
  %11 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %12 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %10
  %16 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %17 = call i32 @stop_callback(%struct.lwp_info* %16, i32* null)
  %18 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %19 = call i32 @stop_wait_callback(%struct.lwp_info* %18, i32* null)
  %20 = load %struct.lwp_info*, %struct.lwp_info** @lwp_list, align 8
  store %struct.lwp_info* %20, %struct.lwp_info** %5, align 8
  br label %21

21:                                               ; preds = %34, %15
  %22 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %23 = icmp ne %struct.lwp_info* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %26 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %27 = icmp eq %struct.lwp_info* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %30 = call i32 @resume_callback(%struct.lwp_info* %29, i32* null)
  %31 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %32 = call i32 @resume_set_callback(%struct.lwp_info* %31, i32* null)
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.lwp_info*, %struct.lwp_info** %5, align 8
  %36 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %35, i32 0, i32 0
  %37 = load %struct.lwp_info*, %struct.lwp_info** %36, align 8
  store %struct.lwp_info* %37, %struct.lwp_info** %5, align 8
  br label %21

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %10, %2
  ret i32 0
}

declare dso_local i32 @stop_callback(%struct.lwp_info*, i32*) #1

declare dso_local i32 @stop_wait_callback(%struct.lwp_info*, i32*) #1

declare dso_local i32 @resume_callback(%struct.lwp_info*, i32*) #1

declare dso_local i32 @resume_set_callback(%struct.lwp_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
