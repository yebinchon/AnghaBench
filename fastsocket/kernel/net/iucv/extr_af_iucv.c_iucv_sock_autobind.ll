; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_autobind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sock = type { i32 }
%struct.iucv_sock = type { i64, i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"QUERY USERID\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@iucv_sk_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@IUCV_QUEUELEN_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @iucv_sock_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_autobind(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.iucv_sock*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca [12 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %8)
  store %struct.iucv_sock* %9, %struct.iucv_sock** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %11 = call i32 @cpcmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10, i32 80, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EPROTO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %20 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %23 = call i32 @memcpy(i32* %21, i8* %22, i32 8)
  %24 = call i32 @write_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iucv_sk_list, i32 0, i32 0))
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %26 = call i32 @atomic_inc_return(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iucv_sk_list, i32 0, i32 1))
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %32, %18
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %30 = call i64 @__iucv_get_sock_by_name(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %34 = call i32 @atomic_inc_return(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iucv_sk_list, i32 0, i32 1))
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %28

36:                                               ; preds = %28
  %37 = call i32 @write_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iucv_sk_list, i32 0, i32 0))
  %38 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %39 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %38, i32 0, i32 1
  %40 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %41 = call i32 @memcpy(i32* %39, i8* %40, i32 8)
  %42 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %43 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load i64, i64* @IUCV_QUEUELEN_DEFAULT, align 8
  %48 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %49 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %36
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @cpcmd(i8*, i8*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @__iucv_get_sock_by_name(i8*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
