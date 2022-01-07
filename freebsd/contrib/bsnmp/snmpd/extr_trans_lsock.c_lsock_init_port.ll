; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_init_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tport = type { i32 }
%struct.lsock_port = type { i64, i32, %struct.TYPE_2__, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.sockaddr_un = type { i8*, i8*, i32 }
%struct.lsock_peer = type { i64, i32, %struct.TYPE_2__, i32, i32, i32* }
%struct.sockaddr = type { i32 }

@LOCP_STREAM_PRIV = common dso_local global i64 0, align 8
@LOCP_STREAM_UNPRIV = common dso_local global i64 0, align 8
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"creating local socket: %m\00", align 1
@SNMP_ERR_RES_UNAVAIL = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i64 0, align 8
@SNMP_ERR_INCONS_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"bind: %s %m\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"chmod(%s,0666): %m\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"listen: %s %m\00", align 1
@lsock_listen_input = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LOCAL_CREDS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"setsockopt(LOCAL_CREDS): %m\00", align 1
@lsock_input = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tport*)* @lsock_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsock_init_port(%struct.tport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tport*, align 8
  %4 = alloca %struct.lsock_port*, align 8
  %5 = alloca %struct.sockaddr_un, align 8
  %6 = alloca %struct.lsock_peer*, align 8
  %7 = alloca i32, align 4
  store %struct.tport* %0, %struct.tport** %3, align 8
  %8 = load %struct.tport*, %struct.tport** %3, align 8
  %9 = bitcast %struct.tport* %8 to %struct.lsock_port*
  store %struct.lsock_port* %9, %struct.lsock_port** %4, align 8
  %10 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %11 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LOCP_STREAM_PRIV, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %17 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LOCP_STREAM_UNPRIV, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %141

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @PF_LOCAL, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = call i8* @socket(i32 %22, i32 %23, i32 0)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %27 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = call i32 (i32, i8*, ...) @syslog(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @SNMP_ERR_RES_UNAVAIL, align 4
  store i32 %32, i32* %2, align 4
  br label %276

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %37 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @strlcpy(i32 %35, i32 %38, i32 4)
  %40 = load i8*, i8** @AF_LOCAL, align 8
  %41 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = call i8* @SUN_LEN(%struct.sockaddr_un* %5)
  %43 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %45 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @remove(i32 %46)
  %48 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %49 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*
  %52 = call i64 @bind(i32 %50, %struct.sockaddr* %51, i32 24)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %33
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EADDRNOTAVAIL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %60 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @close(i32 %61)
  %63 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %64 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %63, i32 0, i32 1
  store i32 -1, i32* %64, align 8
  %65 = load i32, i32* @SNMP_ERR_INCONS_NAME, align 4
  store i32 %65, i32* %2, align 4
  br label %276

66:                                               ; preds = %54
  %67 = load i32, i32* @LOG_ERR, align 4
  %68 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %69 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @syslog(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %73 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @close(i32 %74)
  %76 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %77 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 8
  %78 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %78, i32* %2, align 4
  br label %276

79:                                               ; preds = %33
  %80 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %81 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @chmod(i32 %82, i32 438)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i32, i32* @LOG_WARNING, align 4
  %87 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %88 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @syslog(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %93 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @listen(i32 %94, i32 10)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %100 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @syslog(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %104 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @remove(i32 %105)
  %107 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %108 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @close(i32 %109)
  %111 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %112 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %111, i32 0, i32 1
  store i32 -1, i32* %112, align 8
  %113 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %113, i32* %2, align 4
  br label %276

114:                                              ; preds = %91
  %115 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %116 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @lsock_listen_input, align 4
  %119 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %120 = call i8* @fd_select(i32 %117, i32 %118, %struct.lsock_port* %119, i32* null)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %123 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %122, i32 0, i32 5
  store i32* %121, i32** %123, align 8
  %124 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %125 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %114
  %129 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %130 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @remove(i32 %131)
  %133 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %134 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @close(i32 %135)
  %137 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %138 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %137, i32 0, i32 1
  store i32 -1, i32* %138, align 8
  %139 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %139, i32* %2, align 4
  br label %276

140:                                              ; preds = %114
  br label %274

141:                                              ; preds = %15
  store i32 1, i32* %7, align 4
  %142 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %143 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %142, i32 0, i32 4
  %144 = call %struct.lsock_port* @LIST_FIRST(i32* %143)
  %145 = bitcast %struct.lsock_port* %144 to %struct.lsock_peer*
  store %struct.lsock_peer* %145, %struct.lsock_peer** %6, align 8
  %146 = load i32, i32* @PF_LOCAL, align 4
  %147 = load i32, i32* @SOCK_DGRAM, align 4
  %148 = call i8* @socket(i32 %146, i32 %147, i32 0)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %151 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = icmp slt i32 %149, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %141
  %155 = load i32, i32* @LOG_ERR, align 4
  %156 = call i32 (i32, i8*, ...) @syslog(i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %157 = load i32, i32* @SNMP_ERR_RES_UNAVAIL, align 4
  store i32 %157, i32* %2, align 4
  br label %276

158:                                              ; preds = %141
  %159 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %160 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @LOCAL_CREDS, align 4
  %164 = call i32 @setsockopt(i32 %162, i32 0, i32 %163, i32* %7, i32 4)
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %178

166:                                              ; preds = %158
  %167 = load i32, i32* @LOG_ERR, align 4
  %168 = call i32 (i32, i8*, ...) @syslog(i32 %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %170 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @close(i32 %172)
  %174 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %175 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  store i32 -1, i32* %176, align 8
  %177 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %177, i32* %2, align 4
  br label %276

178:                                              ; preds = %158
  %179 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %182 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @strlcpy(i32 %180, i32 %183, i32 4)
  %185 = load i8*, i8** @AF_LOCAL, align 8
  %186 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  store i8* %185, i8** %186, align 8
  %187 = call i8* @SUN_LEN(%struct.sockaddr_un* %5)
  %188 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  store i8* %187, i8** %188, align 8
  %189 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %190 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @remove(i32 %191)
  %193 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %194 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*
  %198 = call i64 @bind(i32 %196, %struct.sockaddr* %197, i32 24)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %229

200:                                              ; preds = %178
  %201 = load i64, i64* @errno, align 8
  %202 = load i64, i64* @EADDRNOTAVAIL, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %206 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @close(i32 %208)
  %210 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %211 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store i32 -1, i32* %212, align 8
  %213 = load i32, i32* @SNMP_ERR_INCONS_NAME, align 4
  store i32 %213, i32* %2, align 4
  br label %276

214:                                              ; preds = %200
  %215 = load i32, i32* @LOG_ERR, align 4
  %216 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %217 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (i32, i8*, ...) @syslog(i32 %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %218)
  %220 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %221 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @close(i32 %223)
  %225 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %226 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  store i32 -1, i32* %227, align 8
  %228 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %228, i32* %2, align 4
  br label %276

229:                                              ; preds = %178
  %230 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %231 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @chmod(i32 %232, i32 438)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load i32, i32* @LOG_WARNING, align 4
  %237 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %238 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (i32, i8*, ...) @syslog(i32 %236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %235, %229
  %242 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %243 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @lsock_input, align 4
  %247 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %248 = bitcast %struct.lsock_peer* %247 to %struct.lsock_port*
  %249 = call i8* @fd_select(i32 %245, i32 %246, %struct.lsock_port* %248, i32* null)
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %252 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  store i32* %250, i32** %253, align 8
  %254 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %255 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = icmp eq i32* %257, null
  br i1 %258, label %259, label %273

259:                                              ; preds = %241
  %260 = load %struct.lsock_port*, %struct.lsock_port** %4, align 8
  %261 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @remove(i32 %262)
  %264 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %265 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @close(i32 %267)
  %269 = load %struct.lsock_peer*, %struct.lsock_peer** %6, align 8
  %270 = getelementptr inbounds %struct.lsock_peer, %struct.lsock_peer* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  store i32 -1, i32* %271, align 8
  %272 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %272, i32* %2, align 4
  br label %276

273:                                              ; preds = %241
  br label %274

274:                                              ; preds = %273, %140
  %275 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %275, i32* %2, align 4
  br label %276

276:                                              ; preds = %274, %259, %214, %204, %166, %154, %128, %97, %66, %58, %29
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i8* @SUN_LEN(%struct.sockaddr_un*) #1

declare dso_local i32 @remove(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i8* @fd_select(i32, i32, %struct.lsock_port*, i32*) #1

declare dso_local %struct.lsock_port* @LIST_FIRST(i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
