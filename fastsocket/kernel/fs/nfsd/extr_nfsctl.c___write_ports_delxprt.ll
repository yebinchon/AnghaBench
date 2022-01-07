; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c___write_ports_delxprt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c___write_ports_delxprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%15s %4u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USHORT_MAX = common dso_local global i32 0, align 4
@nfsd_serv = common dso_local global i32* null, align 8
@AF_UNSPEC = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__write_ports_delxprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_ports_delxprt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.svc_xprt*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %10 = call i32 @sscanf(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %9, i32* %6)
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @USHORT_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** @nfsd_serv, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %18, %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %22
  %29 = load i32*, i32** @nfsd_serv, align 8
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %31 = load i32, i32* @AF_UNSPEC, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.svc_xprt* @svc_find_xprt(i32* %29, i8* %30, i32 %31, i32 %32)
  store %struct.svc_xprt* %33, %struct.svc_xprt** %4, align 8
  %34 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %35 = icmp eq %struct.svc_xprt* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOTCONN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %41 = call i32 @svc_close_xprt(%struct.svc_xprt* %40)
  %42 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %43 = call i32 @svc_xprt_put(%struct.svc_xprt* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %36, %25, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local %struct.svc_xprt* @svc_find_xprt(i32*, i8*, i32, i32) #1

declare dso_local i32 @svc_close_xprt(%struct.svc_xprt*) #1

declare dso_local i32 @svc_xprt_put(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
