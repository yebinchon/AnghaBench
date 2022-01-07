; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_wait_status_low.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_wait_status_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, %struct.dlm_rcom* }
%struct.dlm_rcom = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i32)* @wait_status_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_status_low(%struct.dlm_ls* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 1
  %11 = load %struct.dlm_rcom*, %struct.dlm_rcom** %10, align 8
  store %struct.dlm_rcom* %11, %struct.dlm_rcom** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %13 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %43, %2
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %17 = call i64 @dlm_recovery_stopped(%struct.dlm_ls* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EINTR, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dlm_rcom_status(%struct.dlm_ls* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %46

29:                                               ; preds = %22
  %30 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %31 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %46

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 1000
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 20
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @msleep(i32 %44)
  br label %15

46:                                               ; preds = %36, %28
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i64 @dlm_recovery_stopped(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_rcom_status(%struct.dlm_ls*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
