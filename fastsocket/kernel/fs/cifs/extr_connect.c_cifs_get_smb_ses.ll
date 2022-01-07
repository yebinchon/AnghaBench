; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_get_smb_ses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_get_smb_ses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, %struct.TCP_Server_Info*, i64, i32 }
%struct.TCP_Server_Info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.smb_vol = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Existing smb sess found (status=%d)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Session needs reconnect\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Existing smb sess not found\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cifs_ses* (%struct.TCP_Server_Info*, %struct.smb_vol*)* @cifs_get_smb_ses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cifs_ses* @cifs_get_smb_ses(%struct.TCP_Server_Info* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca %struct.cifs_ses*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %14 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %13, i32 0, i32 1
  %15 = bitcast %struct.TYPE_2__* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %9, align 8
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %17 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %16, i32 0, i32 1
  %18 = bitcast %struct.TYPE_2__* %17 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %18, %struct.sockaddr_in6** %10, align 8
  %19 = call i32 (...) @GetXid()
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %21 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %22 = call %struct.cifs_ses* @cifs_find_smb_ses(%struct.TCP_Server_Info* %20, %struct.smb_vol* %21)
  store %struct.cifs_ses* %22, %struct.cifs_ses** %8, align 8
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %24 = icmp ne %struct.cifs_ses* %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %2
  %26 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %27 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %31 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %35 = call i32 @cifs_negotiate_protocol(i32 %33, %struct.cifs_ses* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %40 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %43 = call i32 @cifs_put_smb_ses(%struct.cifs_ses* %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @FreeXid(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.cifs_ses* @ERR_PTR(i32 %46)
  store %struct.cifs_ses* %47, %struct.cifs_ses** %3, align 8
  br label %226

48:                                               ; preds = %25
  %49 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %50 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %57 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %58 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cifs_setup_session(i32 %55, %struct.cifs_ses* %56, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %65 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %68 = call i32 @cifs_put_smb_ses(%struct.cifs_ses* %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @FreeXid(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call %struct.cifs_ses* @ERR_PTR(i32 %71)
  store %struct.cifs_ses* %72, %struct.cifs_ses** %3, align 8
  br label %226

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %76 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %79 = call i32 @cifs_put_tcp_session(%struct.TCP_Server_Info* %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @FreeXid(i32 %80)
  %82 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  store %struct.cifs_ses* %82, %struct.cifs_ses** %3, align 8
  br label %226

83:                                               ; preds = %2
  %84 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %85 = call %struct.cifs_ses* (...) @sesInfoAlloc()
  store %struct.cifs_ses* %85, %struct.cifs_ses** %8, align 8
  %86 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %87 = icmp eq %struct.cifs_ses* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %219

89:                                               ; preds = %83
  %90 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %91 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %92 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %91, i32 0, i32 9
  store %struct.TCP_Server_Info* %90, %struct.TCP_Server_Info** %92, align 8
  %93 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %94 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AF_INET6, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %101 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %104 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %103, i32 0, i32 0
  %105 = call i32 @sprintf(i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %104)
  br label %113

106:                                              ; preds = %89
  %107 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %108 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %111 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %110, i32 0, i32 0
  %112 = call i32 @sprintf(i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %111)
  br label %113

113:                                              ; preds = %106, %99
  %114 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %115 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %120 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @kstrdup(i64 %121, i32 %122)
  %124 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %125 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %127 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %126, i32 0, i32 7
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %118
  br label %219

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %134 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %132
  %138 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %139 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @kstrdup(i64 %140, i32 %141)
  %143 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %144 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %143, i32 0, i32 6
  store i8* %142, i8** %144, align 8
  %145 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %146 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %145, i32 0, i32 6
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %137
  br label %219

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %132
  %152 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %153 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %151
  %157 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %158 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i8* @kstrdup(i64 %159, i32 %160)
  %162 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %163 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %162, i32 0, i32 5
  store i8* %161, i8** %163, align 8
  %164 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %165 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %164, i32 0, i32 5
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %156
  br label %219

169:                                              ; preds = %156
  br label %170

170:                                              ; preds = %169, %151
  %171 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %172 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %175 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %177 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %180 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %182 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %185 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %187 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %186, i32 0, i32 1
  %188 = call i32 @mutex_lock(i32* %187)
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %191 = call i32 @cifs_negotiate_protocol(i32 %189, %struct.cifs_ses* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %170
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %197 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %198 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @cifs_setup_session(i32 %195, %struct.cifs_ses* %196, i32 %199)
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %194, %170
  %202 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %203 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %202, i32 0, i32 1
  %204 = call i32 @mutex_unlock(i32* %203)
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %219

208:                                              ; preds = %201
  %209 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %210 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %211 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %210, i32 0, i32 0
  %212 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %213 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %212, i32 0, i32 0
  %214 = call i32 @list_add(i32* %211, i32* %213)
  %215 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @FreeXid(i32 %216)
  %218 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  store %struct.cifs_ses* %218, %struct.cifs_ses** %3, align 8
  br label %226

219:                                              ; preds = %207, %168, %149, %130, %88
  %220 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %221 = call i32 @sesInfoFree(%struct.cifs_ses* %220)
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @FreeXid(i32 %222)
  %224 = load i32, i32* %6, align 4
  %225 = call %struct.cifs_ses* @ERR_PTR(i32 %224)
  store %struct.cifs_ses* %225, %struct.cifs_ses** %3, align 8
  br label %226

226:                                              ; preds = %219, %208, %74, %63, %38
  %227 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  ret %struct.cifs_ses* %227
}

declare dso_local i32 @GetXid(...) #1

declare dso_local %struct.cifs_ses* @cifs_find_smb_ses(%struct.TCP_Server_Info*, %struct.smb_vol*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cifs_negotiate_protocol(i32, %struct.cifs_ses*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cifs_put_smb_ses(%struct.cifs_ses*) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local %struct.cifs_ses* @ERR_PTR(i32) #1

declare dso_local i32 @cifs_setup_session(i32, %struct.cifs_ses*, i32) #1

declare dso_local i32 @cifs_put_tcp_session(%struct.TCP_Server_Info*) #1

declare dso_local %struct.cifs_ses* @sesInfoAlloc(...) #1

declare dso_local i32 @sprintf(i32, i8*, i32*) #1

declare dso_local i8* @kstrdup(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sesInfoFree(%struct.cifs_ses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
