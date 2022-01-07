; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_one_sock_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_one_sock_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ipv4 %s %pI4 %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ipv6 %s %pI6 %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"*unknown-%d*\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_sock*, i8*, i32)* @svc_one_sock_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_one_sock_name(%struct.svc_sock* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_sock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.svc_sock* %0, %struct.svc_sock** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.svc_sock*, %struct.svc_sock** %5, align 8
  %12 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPPROTO_UDP, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %20, i8** %9, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %48 [
    i32 129, label %24
    i32 128, label %36
  ]

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.sock*, %struct.sock** %8, align 8
  %32 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32* %30, i32 %34)
  store i32 %35, i32* %10, align 4
  br label %55

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.sock*, %struct.sock** %8, align 8
  %41 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %39, i32* %42, i32 %46)
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %3
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sock*, %struct.sock** %8, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %48, %36, %24
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* @ENAMETOOLONG, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_3__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet6_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
