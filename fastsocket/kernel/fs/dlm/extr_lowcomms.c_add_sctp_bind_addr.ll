; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_add_sctp_bind_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_add_sctp_bind_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.connection = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@SOL_SCTP = common dso_local global i32 0, align 4
@SCTP_SOCKOPT_BINDX_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Can't bind to port %d addr number %d\00", align 1
@dlm_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, %struct.sockaddr_storage*, i32, i32)* @add_sctp_bind_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sctp_bind_addr(%struct.connection* %0, %struct.sockaddr_storage* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load %struct.connection*, %struct.connection** %5, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %17 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr*
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @kernel_bind(i32 %15, %struct.sockaddr* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load %struct.connection*, %struct.connection** %5, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SOL_SCTP, align 4
  %25 = load i32, i32* @SCTP_SOCKOPT_BINDX_ADD, align 4
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %27 = bitcast %struct.sockaddr_storage* %26 to i8*
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @kernel_setsockopt(i32 %23, i32 %24, i32 %25, i8* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %20, %12
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 0), align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @kernel_bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @kernel_setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @log_print(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
