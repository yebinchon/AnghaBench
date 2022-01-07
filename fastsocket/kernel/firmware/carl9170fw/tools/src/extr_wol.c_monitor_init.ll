; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_wol.c_monitor_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_wol.c_monitor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ll = type { i64, i32 }
%struct.sockaddr = type { i32 }

@AF_PACKET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Monitor interface '%s' does not exist\0A\00", align 1
@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"socket(PF_PACKET,SOCK_RAW): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"bind(PACKET): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @monitor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_ll, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 @memset(%struct.sockaddr_ll* %4, i32 0, i32 16)
  %7 = load i32, i32* @AF_PACKET, align 4
  %8 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @if_nametoindex(i8* %9)
  %11 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %4, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load i32, i32* @PF_PACKET, align 4
  %21 = load i32, i32* @SOCK_RAW, align 4
  %22 = load i32, i32* @ETH_P_ALL, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = call i32 @socket(i32 %20, i32 %21, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 -1, i32* %2, align 4
  br label %46

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = bitcast %struct.sockaddr_ll* %4 to %struct.sockaddr*
  %35 = call i64 @bind(i32 %33, %struct.sockaddr* %34, i32 16)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i8* @strerror(i32 %39)
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @close(i32 %42)
  store i32 -1, i32* %2, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %37, %27, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.sockaddr_ll*, i32, i32) #1

declare dso_local i64 @if_nametoindex(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
