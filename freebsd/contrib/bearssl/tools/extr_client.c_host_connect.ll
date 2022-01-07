; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_client.c_host_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_client.c_host_connect.c"
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
@INVALID_SOCKET = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"<unknown family: %d>\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"connecting to: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"connect()\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ERROR: failed to connect\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"connected.\0A\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @host_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_connect(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 40)
  %18 = load i32, i32* @PF_UNSPEC, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @getaddrinfo(i8* %22, i8* %23, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i8* @gai_strerror(i32 %29)
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %32, i32* %4, align 4
  br label %168

33:                                               ; preds = %3
  %34 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %35, %struct.addrinfo** %10, align 8
  br label %36

36:                                               ; preds = %141, %33
  %37 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %38 = icmp ne %struct.addrinfo* %37, null
  br i1 %38, label %39, label %145

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %101

42:                                               ; preds = %39
  %43 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %44 = add nsw i32 %43, 50
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %15, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %16, align 8
  %48 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.sockaddr*
  store %struct.sockaddr* %51, %struct.sockaddr** %13, align 8
  %52 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %53 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AF_INET, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %59 = bitcast %struct.sockaddr* %58 to i8*
  %60 = bitcast i8* %59 to %struct.sockaddr_in*
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 0
  %62 = bitcast i32* %61 to i8*
  store i8* %62, i8** %14, align 8
  br label %77

63:                                               ; preds = %42
  %64 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %65 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %71 = bitcast %struct.sockaddr* %70 to i8*
  %72 = bitcast i8* %71 to %struct.sockaddr_in6*
  %73 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %72, i32 0, i32 0
  %74 = bitcast i32* %73 to i8*
  store i8* %74, i8** %14, align 8
  br label %76

75:                                               ; preds = %63
  store i8* null, i8** %14, align 8
  br label %76

76:                                               ; preds = %75, %69
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = trunc i64 %45 to i32
  %86 = call i32 @inet_ntop(i32 %83, i8* %84, i8* %47, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %80
  br label %97

91:                                               ; preds = %77
  %92 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %93 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %90
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %100 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %100)
  br label %101

101:                                              ; preds = %97, %39
  %102 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %103 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %109 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @socket(i32 %104, i32 %107, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @INVALID_SOCKET, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %101
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115
  br label %141

121:                                              ; preds = %101
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %127 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @connect(i32 %122, i64 %125, i32 %128)
  %130 = load i32, i32* @INVALID_SOCKET, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %121
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %132
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @close(i32 %138)
  br label %141

140:                                              ; preds = %121
  br label %145

141:                                              ; preds = %137, %120
  %142 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %143 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %142, i32 0, i32 5
  %144 = load %struct.addrinfo*, %struct.addrinfo** %143, align 8
  store %struct.addrinfo* %144, %struct.addrinfo** %10, align 8
  br label %36

145:                                              ; preds = %140, %36
  %146 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %147 = icmp eq %struct.addrinfo* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %150 = call i32 @freeaddrinfo(%struct.addrinfo* %149)
  %151 = load i32, i32* @stderr, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %153, i32* %4, align 4
  br label %168

154:                                              ; preds = %145
  %155 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %156 = call i32 @freeaddrinfo(%struct.addrinfo* %155)
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @F_SETFL, align 4
  %165 = load i32, i32* @O_NONBLOCK, align 4
  %166 = call i32 @fcntl(i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %162, %148, %27
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @connect(i32, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
