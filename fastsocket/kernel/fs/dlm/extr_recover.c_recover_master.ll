; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_recover_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_recover_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, %struct.dlm_ls* }
%struct.dlm_ls = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"recover dir lookup error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*)* @recover_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_master(%struct.dlm_rsb* %0) #0 {
  %2 = alloca %struct.dlm_rsb*, align 8
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %2, align 8
  %8 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %9 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %8, i32 0, i32 2
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  store %struct.dlm_ls* %10, %struct.dlm_ls** %3, align 8
  %11 = call i32 (...) @dlm_our_nodeid()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %13 = call i32 @dlm_dir_nodeid(%struct.dlm_rsb* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %21 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %24 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dlm_dir_lookup(%struct.dlm_ls* %18, i32 %19, i32 %22, i32 %25, i32* %6)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @log_error(%struct.dlm_ls* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @set_new_master(%struct.dlm_rsb* %39, i32 %40)
  br label %48

42:                                               ; preds = %1
  %43 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %44 = call i32 @recover_list_add(%struct.dlm_rsb* %43)
  %45 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dlm_send_rcom_lookup(%struct.dlm_rsb* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @dlm_dir_nodeid(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_dir_lookup(%struct.dlm_ls*, i32, i32, i32, i32*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32) #1

declare dso_local i32 @set_new_master(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @recover_list_add(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_send_rcom_lookup(%struct.dlm_rsb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
