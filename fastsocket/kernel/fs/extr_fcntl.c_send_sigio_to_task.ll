; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_send_sigio_to_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_send_sigio_to_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }
%struct.task_struct = type { i32 }
%struct.fown_struct = type { i32 }

@__SI_MASK = common dso_local global i32 0, align 4
@__SI_POLL = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@NSIGPOLL = common dso_local global i32 0, align 4
@band_table = common dso_local global i64* null, align 8
@SIGIO = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.fown_struct*, i32, i32, i32)* @send_sigio_to_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_sigio_to_task(%struct.task_struct* %0, %struct.fown_struct* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.fown_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.fown_struct* %1, %struct.fown_struct** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.fown_struct*, %struct.fown_struct** %7, align 8
  %14 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ACCESS_ONCE(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = load %struct.fown_struct*, %struct.fown_struct** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @sigio_perm(%struct.task_struct* %17, %struct.fown_struct* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  br label %70

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %25 [
    i32 0, label %64
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @__SI_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @__SI_POLL, align 4
  %35 = icmp ne i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @POLL_IN, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* @NSIGPOLL, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 -1, i64* %44, align 8
  br label %54

45:                                               ; preds = %25
  %46 = load i64*, i64** @band_table, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @POLL_IN, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %45, %43
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @do_send_sig_info(i32 %57, %struct.TYPE_4__* %12, %struct.task_struct* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %70

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %23, %63
  %65 = load i32, i32* @SIGIO, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SEND_SIG_PRIV, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @do_send_sig_info(i32 %65, %struct.TYPE_4__* %66, %struct.task_struct* %67, i32 %68)
  br label %70

70:                                               ; preds = %22, %64, %62
  ret void
}

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i32 @sigio_perm(%struct.task_struct*, %struct.fown_struct*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_send_sig_info(i32, %struct.TYPE_4__*, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
