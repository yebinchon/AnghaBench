; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dir_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*)* @dir_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_remove(%struct.dlm_rsb* %0) #0 {
  %2 = alloca %struct.dlm_rsb*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %2, align 8
  %4 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @dlm_no_directory(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %12 = call i32 @dlm_dir_nodeid(%struct.dlm_rsb* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (...) @dlm_our_nodeid()
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %18 = call i32 @send_remove(%struct.dlm_rsb* %17)
  br label %31

19:                                               ; preds = %10
  %20 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %21 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %25 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %28 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dlm_dir_remove_entry(i32 %22, i32 %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %9, %19, %16
  ret void
}

declare dso_local i64 @dlm_no_directory(i32) #1

declare dso_local i32 @dlm_dir_nodeid(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @send_remove(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_dir_remove_entry(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
