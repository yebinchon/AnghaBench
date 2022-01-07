; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_dlm_recover_master_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_dlm_recover_master_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i32, i64 }
%struct.dlm_rsb = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"dlm_recover_master_reply no id %llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_recover_master_reply(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_rsb*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %8 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.dlm_rsb* @recover_list_find(%struct.dlm_ls* %7, i64 %10)
  store %struct.dlm_rsb* %11, %struct.dlm_rsb** %5, align 8
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %13 = icmp ne %struct.dlm_rsb* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %16 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @log_error(%struct.dlm_ls* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %22 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (...) @dlm_our_nodeid()
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @set_new_master(%struct.dlm_rsb* %29, i32 %30)
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %5, align 8
  %33 = call i32 @recover_list_del(%struct.dlm_rsb* %32)
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %35 = call i64 @recover_list_empty(%struct.dlm_ls* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %39 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %38, i32 0, i32 0
  %40 = call i32 @wake_up(i32* %39)
  br label %41

41:                                               ; preds = %37, %28
  br label %42

42:                                               ; preds = %41, %14
  ret i32 0
}

declare dso_local %struct.dlm_rsb* @recover_list_find(%struct.dlm_ls*, i64) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i64) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @set_new_master(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @recover_list_del(%struct.dlm_rsb*) #1

declare dso_local i64 @recover_list_empty(%struct.dlm_ls*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
