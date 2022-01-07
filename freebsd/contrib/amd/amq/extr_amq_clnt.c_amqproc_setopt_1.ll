; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amq/extr_amq_clnt.c_amqproc_setopt_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amq/extr_amq_clnt.c_amqproc_setopt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amqproc_setopt_1.res = internal global i32 0, align 4
@AMQPROC_SETOPT = common dso_local global i32 0, align 4
@xdr_amq_setopt = common dso_local global i64 0, align 8
@xdr_int = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @amqproc_setopt_1(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = call i32 @memset(i8* bitcast (i32* @amqproc_setopt_1.res to i8*), i32 0, i32 4)
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @AMQPROC_SETOPT, align 4
  %9 = load i64, i64* @xdr_amq_setopt, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32*, i32** %4, align 8
  %12 = ptrtoint i32* %11 to i32
  %13 = load i64, i64* @xdr_int, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @TIMEOUT, align 4
  %16 = call i64 @clnt_call(i32* %7, i32 %8, i32 %10, i32 %12, i32 %14, i32 ptrtoint (i32* @amqproc_setopt_1.res to i32), i32 %15)
  %17 = load i64, i64* @RPC_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %21

20:                                               ; preds = %2
  store i32* @amqproc_setopt_1.res, i32** %3, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32*, i32** %3, align 8
  ret i32* %22
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
