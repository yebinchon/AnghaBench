; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dtrace_program_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dtrace_program_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i8* }

@DTRACE_D_STRIP = common dso_local global i32 0, align 4
@DTRACEIOC_ENABLE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EDT_DIFINVAL = common dso_local global i32 0, align 4
@EDT_DIFFAULT = common dso_local global i32 0, align 4
@EDT_DIFSIZE = common dso_local global i32 0, align 4
@EDT_ENABLING_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_program_exec(i32* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = call i32 @dtrace_program_info(i32* %12, i32* %13, %struct.TYPE_6__* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @DTRACE_D_STRIP, align 4
  %19 = call i8* @dtrace_dof_create(i32* %16, i32* %17, i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @DTRACEIOC_ENABLE, align 4
  %28 = call i32 @dt_ioctl(i32* %26, i32 %27, %struct.TYPE_7__* %8)
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @dtrace_dof_destroy(i32* %29, i8* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %50

34:                                               ; preds = %22
  %35 = load i32, i32* @errno, align 4
  switch i32 %35, label %44 [
    i32 128, label %36
    i32 129, label %38
    i32 131, label %40
    i32 130, label %42
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @EDT_DIFINVAL, align 4
  store i32 %37, i32* %11, align 4
  br label %46

38:                                               ; preds = %34
  %39 = load i32, i32* @EDT_DIFFAULT, align 4
  store i32 %39, i32* %11, align 4
  br label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @EDT_DIFSIZE, align 4
  store i32 %41, i32* %11, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @EDT_ENABLING_ERR, align 4
  store i32 %43, i32* %11, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %42, %40, %38, %36
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @dt_set_errno(i32* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %63

50:                                               ; preds = %22
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %53, %50
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %46, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @dtrace_program_info(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i8* @dtrace_dof_create(i32*, i32*, i32) #1

declare dso_local i32 @dt_ioctl(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dtrace_dof_destroy(i32*, i8*) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
