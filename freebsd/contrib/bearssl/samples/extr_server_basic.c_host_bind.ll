; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_server_basic.c_host_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_server_basic.c_host_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32, i32, i64, %struct.addrinfo* }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ERROR: getaddrinfo(): %s\0A\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@in6addr_any = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"<unknown family: %d>\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"binding to: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"ERROR: failed to bind\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"bound.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @host_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_bind(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca %struct.sockaddr_in6, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 40)
  %21 = load i32, i32* @PF_UNSPEC, align 4
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @getaddrinfo(i8* %25, i8* %26, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @gai_strerror(i32 %32)
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %3, align 4
  br label %176

35:                                               ; preds = %2
  store i32 -1, i32* %9, align 4
  %36 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  store %struct.addrinfo* %36, %struct.addrinfo** %8, align 8
  br label %37

37:                                               ; preds = %150, %35
  %38 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %39 = icmp ne %struct.addrinfo* %38, null
  br i1 %39, label %40, label %154

40:                                               ; preds = %37
  %41 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %42 = add nsw i32 %41, 50
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %16, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %17, align 8
  %46 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.sockaddr*
  store %struct.sockaddr* %49, %struct.sockaddr** %11, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %40
  %56 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %57 = bitcast %struct.sockaddr* %56 to %struct.sockaddr_in*
  %58 = bitcast %struct.sockaddr_in* %12 to i8*
  %59 = bitcast %struct.sockaddr_in* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  store %struct.sockaddr* %60, %struct.sockaddr** %11, align 8
  store i64 4, i64* %14, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %62 = bitcast %struct.TYPE_2__* %61 to i8*
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @INADDR_ANY, align 4
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %55
  br label %95

70:                                               ; preds = %40
  %71 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %72 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AF_INET6, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %78 = bitcast %struct.sockaddr* %77 to %struct.sockaddr_in6*
  %79 = bitcast %struct.sockaddr_in6* %13 to i8*
  %80 = bitcast %struct.sockaddr_in6* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 4, i1 false)
  %81 = bitcast %struct.sockaddr_in6* %13 to %struct.sockaddr*
  store %struct.sockaddr* %81, %struct.sockaddr** %11, align 8
  store i64 4, i64* %14, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 0
  %83 = bitcast i32* %82 to i8*
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @in6addr_any, align 4
  %88 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %76
  br label %94

90:                                               ; preds = %70
  store i8* null, i8** %15, align 8
  %91 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %14, align 8
  br label %94

94:                                               ; preds = %90, %89
  br label %95

95:                                               ; preds = %94, %69
  %96 = load i8*, i8** %15, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = trunc i64 %43 to i32
  %104 = call i32 @inet_ntop(i32 %101, i8* %102, i8* %45, i32 %103)
  br label %111

105:                                              ; preds = %95
  %106 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %107 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %98
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %114 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %118 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %121 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @socket(i32 %116, i32 %119, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %111
  %127 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 4, i32* %19, align 4
  br label %147

128:                                              ; preds = %111
  store i32 1, i32* %18, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @SOL_SOCKET, align 4
  %131 = load i32, i32* @SO_REUSEADDR, align 4
  %132 = call i32 @setsockopt(i32 %129, i32 %130, i32 %131, i32* %18, i32 4)
  store i32 0, i32* %18, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @IPPROTO_IPV6, align 4
  %135 = load i32, i32* @IPV6_V6ONLY, align 4
  %136 = call i32 @setsockopt(i32 %133, i32 %134, i32 %135, i32* %18, i32 4)
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i64 @bind(i32 %137, %struct.sockaddr* %138, i64 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %128
  %143 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @close(i32 %144)
  store i32 4, i32* %19, align 4
  br label %147

146:                                              ; preds = %128
  store i32 2, i32* %19, align 4
  br label %147

147:                                              ; preds = %146, %142, %126
  %148 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %19, align 4
  switch i32 %149, label %178 [
    i32 4, label %150
    i32 2, label %154
  ]

150:                                              ; preds = %147
  %151 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %152 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %151, i32 0, i32 5
  %153 = load %struct.addrinfo*, %struct.addrinfo** %152, align 8
  store %struct.addrinfo* %153, %struct.addrinfo** %8, align 8
  br label %37

154:                                              ; preds = %147, %37
  %155 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %156 = icmp eq %struct.addrinfo* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %159 = call i32 @freeaddrinfo(%struct.addrinfo* %158)
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %176

162:                                              ; preds = %154
  %163 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %164 = call i32 @freeaddrinfo(%struct.addrinfo* %163)
  %165 = load i32, i32* %9, align 4
  %166 = call i64 @listen(i32 %165, i32 5)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @close(i32 %170)
  store i32 -1, i32* %3, align 4
  br label %176

172:                                              ; preds = %162
  %173 = load i32, i32* @stderr, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %168, %157, %30
  %177 = load i32, i32* %3, align 4
  ret i32 %177

178:                                              ; preds = %147
  unreachable
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i64) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
