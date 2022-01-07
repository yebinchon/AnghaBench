; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_wire.c_getwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_wire.c_getwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_7__* }
%struct.ifconf = type { i32, i8* }
%struct.ifreq = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@GFBUFLEN = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"getwire unable to get interface flags\00", align 1
@localnets = common dso_local global %struct.TYPE_7__* null, align 8
@NO_SUBNET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@SIOCGIFCONF = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@SIOCGIFNETMASK = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getwire(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.ifconf, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca %struct.ifreq, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* %10, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  %17 = load i32, i32* @GFBUFLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32, i32* @XLOG_ERROR, align 4
  %22 = call i32 @plog(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @localnets, align 8
  store i32 1, i32* %16, align 4
  br label %46

23:                                               ; No predecessors!
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @close(i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @localnets, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @localnets, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %3, align 8
  store i8* %35, i8** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @localnets, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %4, align 8
  store i8* %39, i8** %40, align 8
  br label %45

41:                                               ; preds = %29
  %42 = load i8*, i8** @NO_SUBNET, align 8
  %43 = load i8**, i8*** %3, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %32
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %16, align 4
  switch i32 %48, label %50 [
    i32 0, label %49
    i32 1, label %49
  ]

49:                                               ; preds = %46, %46
  ret void

50:                                               ; preds = %46
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @plog(i32, i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
