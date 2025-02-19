; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_ctypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_ctypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EDT_BADOPTVAL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @dt_opt_ctypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_opt_ctypes(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = load i32, i32* @EDT_BADOPTVAL, align 4
  %14 = call i32 @dt_set_errno(%struct.TYPE_4__* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @O_CREAT, align 4
  %18 = load i32, i32* @O_WRONLY, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open64(i8* %16, i32 %19, i32 438)
  store i32 %20, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @dt_set_errno(%struct.TYPE_4__* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %22, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @dt_set_errno(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @open64(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
