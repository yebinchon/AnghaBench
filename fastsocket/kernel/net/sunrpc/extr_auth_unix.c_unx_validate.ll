; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_unix.c_unx_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth_unix.c_unx_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RPC_AUTH_NULL = common dso_local global i64 0, align 8
@RPC_AUTH_UNIX = common dso_local global i64 0, align 8
@RPC_AUTH_SHORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"RPC: bad verf flavor: %u\0A\00", align 1
@RPC_MAX_AUTH_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RPC: giant verf size: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rpc_task*, i32*)* @unx_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @unx_validate(%struct.rpc_task* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i8* @ntohl(i32 %10)
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @RPC_AUTH_NULL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @RPC_AUTH_UNIX, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @RPC_AUTH_SHORT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32* null, i32** %3, align 8
  br label %58

28:                                               ; preds = %20, %16, %2
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i8* @ntohl(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32* null, i32** %3, align 8
  br label %58

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 2
  %43 = add nsw i32 %42, 2
  %44 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %43, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 2
  %54 = load i32*, i32** %5, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %40, %37, %24
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
