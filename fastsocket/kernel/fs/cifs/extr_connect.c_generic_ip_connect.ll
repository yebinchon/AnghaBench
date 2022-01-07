; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_generic_ip_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_generic_ip_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i64, %struct.socket*, %struct.TYPE_4__ }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i16 }
%struct.sockaddr_in = type { i16 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error %d creating socket\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Socket created\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Error %d connecting to server\00", align 1
@HZ = common dso_local global i32 0, align 4
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"set TCP_NODELAY socket option error %d\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"sndbuf %d rcvbuf %d rcvtimeo 0x%lx\00", align 1
@RFC1001_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @generic_ip_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_ip_connect(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 2
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %8, align 8
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 3
  %16 = bitcast %struct.TYPE_4__* %15 to %struct.sockaddr*
  store %struct.sockaddr* %16, %struct.sockaddr** %9, align 8
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %18 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AF_INET6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in6*
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %5, align 2
  store i32 2, i32* %6, align 4
  %28 = load i32, i32* @AF_INET6, align 4
  store i32 %28, i32* %7, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %31 = bitcast %struct.sockaddr* %30 to %struct.sockaddr_in*
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 2
  store i16 %33, i16* %5, align 2
  store i32 2, i32* %6, align 4
  %34 = load i32, i32* @AF_INET, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.socket*, %struct.socket** %8, align 8
  %37 = icmp eq %struct.socket* %36, null
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = load i32, i32* @IPPROTO_TCP, align 4
  %42 = call i32 @sock_create_kern(i32 %39, i32 %40, i32 %41, %struct.socket** %8)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %49 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %48, i32 0, i32 2
  store %struct.socket* null, %struct.socket** %49, align 8
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %185

51:                                               ; preds = %38
  %52 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.socket*, %struct.socket** %8, align 8
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 2
  store %struct.socket* %53, %struct.socket** %55, align 8
  %56 = load i32, i32* @GFP_NOFS, align 4
  %57 = load %struct.socket*, %struct.socket** %8, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @AF_INET6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %struct.socket*, %struct.socket** %8, align 8
  %66 = call i32 @cifs_reclassify_socket6(%struct.socket* %65)
  br label %70

67:                                               ; preds = %51
  %68 = load %struct.socket*, %struct.socket** %8, align 8
  %69 = call i32 @cifs_reclassify_socket4(%struct.socket* %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %73 = call i32 @bind_socket(%struct.TCP_Server_Info* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %185

78:                                               ; preds = %71
  %79 = load %struct.socket*, %struct.socket** %8, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %82, align 8
  %84 = load %struct.socket*, %struct.socket** %8, align 8
  %85 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 %83(%struct.socket* %84, %struct.sockaddr* %85, i32 %86, i32 0)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load i32, i32* %4, align 4
  %92 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.socket*, %struct.socket** %8, align 8
  %94 = call i32 @sock_release(%struct.socket* %93)
  %95 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %96 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %95, i32 0, i32 2
  store %struct.socket* null, %struct.socket** %96, align 8
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %185

98:                                               ; preds = %78
  %99 = load i32, i32* @HZ, align 4
  %100 = mul nsw i32 7, %99
  %101 = load %struct.socket*, %struct.socket** %8, align 8
  %102 = getelementptr inbounds %struct.socket, %struct.socket* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* @HZ, align 4
  %106 = mul nsw i32 5, %105
  %107 = load %struct.socket*, %struct.socket** %8, align 8
  %108 = getelementptr inbounds %struct.socket, %struct.socket* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %112 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %98
  %116 = load %struct.socket*, %struct.socket** %8, align 8
  %117 = getelementptr inbounds %struct.socket, %struct.socket* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %120, 204800
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.socket*, %struct.socket** %8, align 8
  %124 = getelementptr inbounds %struct.socket, %struct.socket* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  store i32 204800, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %115
  %128 = load %struct.socket*, %struct.socket** %8, align 8
  %129 = getelementptr inbounds %struct.socket, %struct.socket* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 143360
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load %struct.socket*, %struct.socket** %8, align 8
  %136 = getelementptr inbounds %struct.socket, %struct.socket* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  store i32 143360, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %127
  br label %140

140:                                              ; preds = %139, %98
  %141 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %142 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  store i32 1, i32* %10, align 4
  %146 = load %struct.socket*, %struct.socket** %8, align 8
  %147 = load i32, i32* @SOL_TCP, align 4
  %148 = load i32, i32* @TCP_NODELAY, align 4
  %149 = bitcast i32* %10 to i8*
  %150 = call i32 @kernel_setsockopt(%struct.socket* %146, i32 %147, i32 %148, i8* %149, i32 4)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* %4, align 4
  %155 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %153, %145
  br label %157

157:                                              ; preds = %156, %140
  %158 = load %struct.socket*, %struct.socket** %8, align 8
  %159 = getelementptr inbounds %struct.socket, %struct.socket* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.socket*, %struct.socket** %8, align 8
  %164 = getelementptr inbounds %struct.socket, %struct.socket* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.socket*, %struct.socket** %8, align 8
  %169 = getelementptr inbounds %struct.socket, %struct.socket* %168, i32 0, i32 0
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %167, i32 %172)
  %174 = load i16, i16* %5, align 2
  %175 = zext i16 %174 to i32
  %176 = load i32, i32* @RFC1001_PORT, align 4
  %177 = call zeroext i16 @htons(i32 %176)
  %178 = zext i16 %177 to i32
  %179 = icmp eq i32 %175, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %157
  %181 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %182 = call i32 @ip_rfc1001_connect(%struct.TCP_Server_Info* %181)
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %180, %157
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %183, %90, %76, %45
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @cifs_reclassify_socket6(%struct.socket*) #1

declare dso_local i32 @cifs_reclassify_socket4(%struct.socket*) #1

declare dso_local i32 @bind_socket(%struct.TCP_Server_Info*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local zeroext i16 @htons(i32) #1

declare dso_local i32 @ip_rfc1001_connect(%struct.TCP_Server_Info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
