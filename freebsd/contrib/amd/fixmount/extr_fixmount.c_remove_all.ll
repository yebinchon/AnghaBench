; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fixmount/extr_fixmount.c_remove_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fixmount/extr_fixmount.c_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s: removing ALL\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@CALL_TIMEOUT = common dso_local global i32 0, align 4
@MOUNTPROC_UMNTALL = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_SYSTEMERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s MOUNTPROC_UMNTALL: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_all(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fflush(i32 %10)
  %12 = load i32, i32* @CALL_TIMEOUT, align 4
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @MOUNTPROC_UMNTALL, align 4
  %17 = load i64, i64* @xdr_void, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* @xdr_void, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @clnt_call(i32* %15, i32 %16, i32 %18, i8* null, i32 %20, i8* null, %struct.timeval* byval(%struct.timeval) align 8 %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @RPC_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RPC_SYSTEMERROR, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @clnt_perrno(i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fflush(i32 %34)
  store i32 -1, i32* %3, align 4
  br label %38

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i8*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @clnt_perrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
