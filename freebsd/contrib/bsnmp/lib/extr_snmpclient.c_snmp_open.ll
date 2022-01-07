; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32 }
%struct.timeval = type { i64, i64 }

@snmp_client = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"bad transport mapping\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@sent_pdus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_open(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timeval, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* @EBUSY, align 4
  store i32 %14, i32* @errno, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 (%struct.TYPE_3__*, i8*, ...) @seterr(%struct.TYPE_3__* @snmp_client, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 -1, i32* %5, align 4
  br label %74

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 4), align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlcpy(i32 %22, i8* %23, i32 4)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 3), align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strlcpy(i32 %29, i8* %30, i32 4)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 1), align 4
  switch i32 %33, label %47 [
    i32 129, label %34
    i32 128, label %34
    i32 131, label %41
    i32 130, label %41
  ]

34:                                               ; preds = %32, %32
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @open_client_udp(i8* %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %74

40:                                               ; preds = %34
  br label %49

41:                                               ; preds = %32, %32
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @open_client_local(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %74

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %32
  %48 = call i32 (%struct.TYPE_3__*, i8*, ...) @seterr(%struct.TYPE_3__* @snmp_client, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

49:                                               ; preds = %46, %40
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 0), align 8
  %53 = load i32, i32* @SOL_SOCKET, align 4
  %54 = load i32, i32* @SO_SNDTIMEO, align 4
  %55 = call i32 @setsockopt(i32 %52, i32 %53, i32 %54, %struct.timeval* %10, i32 16)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %72

57:                                               ; preds = %49
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 (%struct.TYPE_3__*, i8*, ...) @seterr(%struct.TYPE_3__* @snmp_client, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 0), align 8
  %62 = call i32 @close(i32 %61)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 0), align 8
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 2), align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 2), align 8
  %70 = call i32 @remove(i8* %69)
  br label %71

71:                                               ; preds = %68, %57
  store i32 -1, i32* %5, align 4
  br label %74

72:                                               ; preds = %49
  %73 = call i32 @LIST_INIT(i32* @sent_pdus)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %71, %47, %45, %39, %13
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @seterr(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @open_client_udp(i8*, i8*) #1

declare dso_local i32 @open_client_local(i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
