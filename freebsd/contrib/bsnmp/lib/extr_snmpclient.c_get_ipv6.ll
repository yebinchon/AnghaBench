; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_get_ipv6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_get_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_client = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@IF_NAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unterminated IPv6 address '%.*s'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"IPv6 address too long '%.*s'\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.snmp_client*, i8**)* @get_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_ipv6(%struct.snmp_client* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snmp_client*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.addrinfo, align 4
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.snmp_client* %0, %struct.snmp_client** %4, align 8
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %14 = load i32, i32* @IF_NAMESIZE, align 4
  %15 = add nsw i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 91
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %126

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %12, align 8
  br label %32

32:                                               ; preds = %53, %28
  %33 = load i8*, i8** %12, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 93
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %44 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (%struct.snmp_client*, i8*, ...) @seterr(%struct.snmp_client* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %49, i8* %51)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %126

53:                                               ; preds = %37
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  br label %32

56:                                               ; preds = %32
  %57 = load i8*, i8** %12, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %57 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %64 = load i32, i32* @IF_NAMESIZE, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = icmp sgt i64 %62, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %56
  %69 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %70 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load i8**, i8*** %5, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (%struct.snmp_client*, i8*, ...) @seterr(%struct.snmp_client* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %75, i8* %77)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %126

79:                                               ; preds = %56
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8*, i8** %12, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = ptrtoint i8* %83 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @strncpy(i8* %18, i8* %82, i32 %90)
  %92 = load i8*, i8** %12, align 8
  %93 = load i8**, i8*** %5, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = ptrtoint i8* %92 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = getelementptr inbounds i8, i8* %18, i64 %98
  store i8 0, i8* %99, align 1
  %100 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 16)
  %101 = load i32, i32* @AI_CANONNAME, align 4
  %102 = load i32, i32* @AI_NUMERICHOST, align 4
  %103 = or i32 %101, %102
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @AF_INET6, align 4
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @SOCK_DGRAM, align 4
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @IPPROTO_UDP, align 4
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = call i32 @getaddrinfo(i8* %18, i32* null, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %79
  %115 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @gai_strerror(i32 %116)
  %118 = call i32 (%struct.snmp_client*, i8*, ...) @seterr(%struct.snmp_client* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %18, i32 %117)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %126

119:                                              ; preds = %79
  %120 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %121 = call i32 @freeaddrinfo(%struct.addrinfo* %120)
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8**, i8*** %5, align 8
  store i8* %123, i8** %124, align 8
  %125 = load i8*, i8** %12, align 8
  store i8* %125, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %126

126:                                              ; preds = %119, %114, %68, %42, %24
  %127 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i8*, i8** %3, align 8
  ret i8* %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @seterr(%struct.snmp_client*, i8*, ...) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
