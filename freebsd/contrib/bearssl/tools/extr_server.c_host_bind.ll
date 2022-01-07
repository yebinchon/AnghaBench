; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_server.c_host_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_server.c_host_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32, i32, i64, %struct.addrinfo* }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_2__ }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ERROR: getaddrinfo(): %s\0A\00", align 1
@INVALID_SOCKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@in6addr_any = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"<unknown family: %d>\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"binding to: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ERROR: failed to bind\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"bound.\0A\00", align 1
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32)* @host_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @host_bind(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca %struct.sockaddr_in6, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 40)
  %22 = load i32, i32* @PF_UNSPEC, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @getaddrinfo(i8* %26, i8* %27, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @gai_strerror(i32 %33)
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %36, i64* %4, align 8
  br label %198

37:                                               ; preds = %3
  %38 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %38, i64* %11, align 8
  %39 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %39, %struct.addrinfo** %10, align 8
  br label %40

40:                                               ; preds = %162, %37
  %41 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %42 = icmp ne %struct.addrinfo* %41, null
  br i1 %42, label %43, label %166

43:                                               ; preds = %40
  %44 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.sockaddr*
  store %struct.sockaddr* %47, %struct.sockaddr** %13, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %49 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_INET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %43
  %54 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr_in6*
  %55 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %56 = call i32 @memcpy(%struct.sockaddr_in6* %54, %struct.sockaddr* %55, i32 8)
  %57 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %57, %struct.sockaddr** %13, align 8
  store i64 8, i64* %16, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %59 = bitcast %struct.TYPE_2__* %58 to i8*
  store i8* %59, i8** %17, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @INADDR_ANY, align 4
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %53
  br label %90

67:                                               ; preds = %43
  %68 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %69 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AF_INET6, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %75 = call i32 @memcpy(%struct.sockaddr_in6* %15, %struct.sockaddr* %74, i32 8)
  %76 = bitcast %struct.sockaddr_in6* %15 to %struct.sockaddr*
  store %struct.sockaddr* %76, %struct.sockaddr** %13, align 8
  store i64 8, i64* %16, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  %78 = bitcast i32* %77 to i8*
  store i8* %78, i8** %17, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @in6addr_any, align 4
  %83 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %73
  br label %89

85:                                               ; preds = %67
  store i8* null, i8** %17, align 8
  %86 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %16, align 8
  br label %89

89:                                               ; preds = %85, %84
  br label %90

90:                                               ; preds = %89, %66
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %95 = add nsw i32 %94, 50
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %19, align 8
  %98 = alloca i8, i64 %96, align 16
  store i64 %96, i64* %20, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  %102 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %103 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = trunc i64 %96 to i32
  %107 = call i32 @inet_ntop(i32 %104, i8* %105, i8* %98, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %101
  %110 = call i32 @strcpy(i8* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %101
  br label %118

112:                                              ; preds = %93
  %113 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %114 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %111
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %121 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %121)
  br label %122

122:                                              ; preds = %118, %90
  %123 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %127 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %130 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @socket(i32 %125, i32 %128, i32 %131)
  store i64 %132, i64* %11, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* @INVALID_SOCKET, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %136
  br label %162

142:                                              ; preds = %122
  store i32 1, i32* %18, align 4
  %143 = load i64, i64* %11, align 8
  %144 = load i32, i32* @SOL_SOCKET, align 4
  %145 = load i32, i32* @SO_REUSEADDR, align 4
  %146 = bitcast i32* %18 to i8*
  %147 = call i32 @setsockopt(i64 %143, i32 %144, i32 %145, i8* %146, i32 4)
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %150 = load i64, i64* %16, align 8
  %151 = call i64 @bind(i64 %148, %struct.sockaddr* %149, i64 %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %142
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %153
  %159 = load i64, i64* %11, align 8
  %160 = call i32 @close(i64 %159)
  br label %162

161:                                              ; preds = %142
  br label %166

162:                                              ; preds = %158, %141
  %163 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %164 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %163, i32 0, i32 5
  %165 = load %struct.addrinfo*, %struct.addrinfo** %164, align 8
  store %struct.addrinfo* %165, %struct.addrinfo** %10, align 8
  br label %40

166:                                              ; preds = %161, %40
  %167 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %168 = icmp eq %struct.addrinfo* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %171 = call i32 @freeaddrinfo(%struct.addrinfo* %170)
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %174, i64* %4, align 8
  br label %198

175:                                              ; preds = %166
  %176 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %177 = call i32 @freeaddrinfo(%struct.addrinfo* %176)
  %178 = load i64, i64* %11, align 8
  %179 = call i64 @listen(i64 %178, i32 5)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %181
  %187 = load i64, i64* %11, align 8
  %188 = call i32 @close(i64 %187)
  %189 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %189, i64* %4, align 8
  br label %198

190:                                              ; preds = %175
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* @stderr, align 4
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i64, i64* %11, align 8
  store i64 %197, i64* %4, align 8
  br label %198

198:                                              ; preds = %196, %186, %169, %31
  %199 = load i64, i64* %4, align 8
  ret i64 %199
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_in6*, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i64 @listen(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
