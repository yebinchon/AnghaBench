; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_is_old_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_is_old_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i64 }
%struct.dlm_rcom = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"ignoring old reply %x from %d seq_reply %llx expect %llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_rcom*)* @is_old_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_old_reply(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %8 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %40 [
    i32 128, label %10
    i32 129, label %10
    i32 130, label %10
    i32 131, label %10
  ]

10:                                               ; preds = %2, %2, %2, %2
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %10
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %27 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %31 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %35 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @log_debug(%struct.dlm_ls* %26, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33, i64 %36, i64 %37)
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %25, %10
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
