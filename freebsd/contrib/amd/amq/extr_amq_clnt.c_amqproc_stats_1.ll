; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amq/extr_amq_clnt.c_amqproc_stats_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amq/extr_amq_clnt.c_amqproc_stats_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amqproc_stats_1.res = internal global i32 0, align 4
@AMQPROC_STATS = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_amq_mount_stats = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @amqproc_stats_1(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = call i32 @memset(i8* bitcast (i32* @amqproc_stats_1.res to i8*), i32 0, i32 4)
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @AMQPROC_STATS, align 4
  %9 = load i64, i64* @xdr_void, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = load i64, i64* @xdr_amq_mount_stats, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @TIMEOUT, align 4
  %15 = call i64 @clnt_call(i32* %7, i32 %8, i32 %10, i32 %11, i32 %13, i32 ptrtoint (i32* @amqproc_stats_1.res to i32), i32 %14)
  %16 = load i64, i64* @RPC_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %20

19:                                               ; preds = %2
  store i32* @amqproc_stats_1.res, i32** %3, align 8
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32*, i32** %3, align 8
  ret i32* %21
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
