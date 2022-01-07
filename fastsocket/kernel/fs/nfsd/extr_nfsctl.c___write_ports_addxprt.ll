; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c___write_ports_addxprt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsctl.c___write_ports_addxprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.svc_xprt = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%15s %4u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USHORT_MAX = common dso_local global i32 0, align 4
@nfsd_serv = common dso_local global %struct.TYPE_5__* null, align 8
@init_net = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SVC_SOCK_ANONYMOUS = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__write_ports_addxprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_ports_addxprt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca %struct.svc_xprt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %10 = call i32 @sscanf(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %9, i32* %6)
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @USHORT_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %79

25:                                               ; preds = %18
  %26 = call i32 (...) @nfsd_create_serv()
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nfsd_serv, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %34 = load i32, i32* @PF_INET, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %37 = call i32 @svc_create_xprt(%struct.TYPE_5__* %32, i8* %33, i32* @init_net, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %75

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nfsd_serv, align 8
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %44 = load i32, i32* @PF_INET6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %47 = call i32 @svc_create_xprt(%struct.TYPE_5__* %42, i8* %43, i32* @init_net, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @EAFNOSUPPORT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %61

56:                                               ; preds = %50, %41
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nfsd_serv, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %79

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nfsd_serv, align 8
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %64 = load i32, i32* @PF_INET, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call %struct.svc_xprt* @svc_find_xprt(%struct.TYPE_5__* %62, i8* %63, i32 %64, i32 %65)
  store %struct.svc_xprt* %66, %struct.svc_xprt** %5, align 8
  %67 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %68 = icmp ne %struct.svc_xprt* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %71 = call i32 @svc_close_xprt(%struct.svc_xprt* %70)
  %72 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %73 = call i32 @svc_xprt_put(%struct.svc_xprt* %72)
  br label %74

74:                                               ; preds = %69, %61
  br label %75

75:                                               ; preds = %74, %40
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nfsd_serv, align 8
  %77 = call i32 @svc_destroy(%struct.TYPE_5__* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %56, %29, %22, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @nfsd_create_serv(...) #1

declare dso_local i32 @svc_create_xprt(%struct.TYPE_5__*, i8*, i32*, i32, i32, i32) #1

declare dso_local %struct.svc_xprt* @svc_find_xprt(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @svc_close_xprt(%struct.svc_xprt*) #1

declare dso_local i32 @svc_xprt_put(%struct.svc_xprt*) #1

declare dso_local i32 @svc_destroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
