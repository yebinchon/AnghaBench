; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-service.c_ps_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-service.c_ps_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@PS_OK = common dso_local global i32 0, align 4
@PS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps_prochandle*, i32, i8*, i64, i32)* @ps_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_xfer_memory(%struct.ps_prochandle* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ps_prochandle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cleanup*, align 8
  %12 = alloca i32, align 4
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %13, %struct.cleanup** %11, align 8
  %14 = load %struct.ps_prochandle*, %struct.ps_prochandle** %6, align 8
  %15 = getelementptr inbounds %struct.ps_prochandle, %struct.ps_prochandle* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pid_to_ptid(i32 %16)
  store i32 %17, i32* @inferior_ptid, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @target_write_memory(i32 %21, i8* %22, i64 %23)
  store i32 %24, i32* %12, align 4
  br label %30

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @target_read_memory(i32 %26, i8* %27, i64 %28)
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %32 = call i32 @do_cleanups(%struct.cleanup* %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @PS_OK, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @PS_ERR, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  ret i32 %40
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @target_write_memory(i32, i8*, i64) #1

declare dso_local i32 @target_read_memory(i32, i8*, i64) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
