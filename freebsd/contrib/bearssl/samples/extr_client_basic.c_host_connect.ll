; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_client_basic.c_host_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_client_basic.c_host_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i32, i32, i32, %struct.addrinfo* }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ERROR: getaddrinfo(): %s\0A\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"<unknown family: %d>\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"connecting to: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"connect()\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ERROR: failed to connect\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"connected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @host_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_connect(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 40)
  %17 = load i32, i32* @PF_UNSPEC, align 4
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @getaddrinfo(i8* %21, i8* %22, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i8* @gai_strerror(i32 %28)
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 -1, i32* %3, align 4
  br label %138

31:                                               ; preds = %2
  store i32 -1, i32* %9, align 4
  %32 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %32, %struct.addrinfo** %8, align 8
  br label %33

33:                                               ; preds = %120, %31
  %34 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %35 = icmp ne %struct.addrinfo* %34, null
  br i1 %35, label %36, label %124

36:                                               ; preds = %33
  %37 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %38 = add nsw i32 %37, 50
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %13, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %14, align 8
  %42 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.sockaddr*
  store %struct.sockaddr* %45, %struct.sockaddr** %11, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AF_INET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %53 = bitcast %struct.sockaddr* %52 to %struct.sockaddr_in*
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to i8*
  store i8* %55, i8** %12, align 8
  br label %69

56:                                               ; preds = %36
  %57 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %58 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AF_INET6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %64 = bitcast %struct.sockaddr* %63 to %struct.sockaddr_in6*
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %64, i32 0, i32 0
  %66 = bitcast i32* %65 to i8*
  store i8* %66, i8** %12, align 8
  br label %68

67:                                               ; preds = %56
  store i8* null, i8** %12, align 8
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = trunc i64 %39 to i32
  %78 = call i32 @inet_ntop(i32 %75, i8* %76, i8* %41, i32 %77)
  br label %85

79:                                               ; preds = %69
  %80 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %81 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %72
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %88 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @socket(i32 %90, i32 %93, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 4, i32* %15, align 4
  br label %117

102:                                              ; preds = %85
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %105 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @connect(i32 %103, i64 %106, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @close(i32 %114)
  store i32 4, i32* %15, align 4
  br label %117

116:                                              ; preds = %102
  store i32 2, i32* %15, align 4
  br label %117

117:                                              ; preds = %116, %112, %100
  %118 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %15, align 4
  switch i32 %119, label %140 [
    i32 4, label %120
    i32 2, label %124
  ]

120:                                              ; preds = %117
  %121 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %121, i32 0, i32 5
  %123 = load %struct.addrinfo*, %struct.addrinfo** %122, align 8
  store %struct.addrinfo* %123, %struct.addrinfo** %8, align 8
  br label %33

124:                                              ; preds = %117, %33
  %125 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %126 = icmp eq %struct.addrinfo* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %129 = call i32 @freeaddrinfo(%struct.addrinfo* %128)
  %130 = load i32, i32* @stderr, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %138

132:                                              ; preds = %124
  %133 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %134 = call i32 @freeaddrinfo(%struct.addrinfo* %133)
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %127, %26
  %139 = load i32, i32* %3, align 4
  ret i32 %139

140:                                              ; preds = %117
  unreachable
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @connect(i32, i64, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
