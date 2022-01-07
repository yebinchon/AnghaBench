; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/conf/transp/extr_transp_sockets.c_amu_get_myaddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/conf/transp/extr_transp_sockets.c_amu_get_myaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i64 }
%struct.hostent = type { i32** }

@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Unable to resolve localhost_address \22%s\22 (%s): using default\00", align 1
@h_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"localhost_address \22%s\22 has no IP addresses: using default\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"localhost_address \22%s\22 has more than one IP addresses: using first\00", align 1
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"localhost_address \22%s\22 requested, using %s\00", align 1
@INADDR_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amu_get_myaddress(%struct.in_addr* %0, i8* %1) #0 {
  %3 = alloca %struct.in_addr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca [20 x i8], align 16
  store %struct.in_addr* %0, %struct.in_addr** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %60

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.hostent* @gethostbyname(i8* %11)
  store %struct.hostent* %12, %struct.hostent** %5, align 8
  %13 = load %struct.hostent*, %struct.hostent** %5, align 8
  %14 = icmp eq %struct.hostent* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @XLOG_ERROR, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @h_errno, align 4
  %19 = call i32 @hstrerror(i32 %18)
  %20 = call i32 (i32, i8*, i8*, ...) @plog(i32 %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %19)
  br label %60

21:                                               ; preds = %10
  %22 = load %struct.hostent*, %struct.hostent** %5, align 8
  %23 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = icmp eq i32** %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @XLOG_ERROR, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i32, i8*, i8*, ...) @plog(i32 %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %60

30:                                               ; preds = %21
  %31 = load %struct.hostent*, %struct.hostent** %5, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @XLOG_ERROR, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @plog(i32 %38, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %60

41:                                               ; preds = %30
  %42 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %43 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %42, i32 0, i32 0
  %44 = ptrtoint i64* %43 to i32
  %45 = load %struct.hostent*, %struct.hostent** %5, align 8
  %46 = getelementptr inbounds %struct.hostent, %struct.hostent* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 @memmove(i32 %44, i32 %50, i32 8)
  %52 = load i32, i32* @XLOG_INFO, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %55 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @inet_dquad(i8* %54, i32 20, i64 %57)
  %59 = call i32 (i32, i8*, i8*, ...) @plog(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %53, i32 %58)
  br label %65

60:                                               ; preds = %37, %26, %15, %9
  %61 = load i32, i32* @INADDR_LOOPBACK, align 4
  %62 = call i64 @htonl(i32 %61)
  %63 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %41
  ret void
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @plog(i32, i8*, i8*, ...) #1

declare dso_local i32 @hstrerror(i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @inet_dquad(i8*, i32, i64) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
