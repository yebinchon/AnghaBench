; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_ntp/extr_snmp_ntp.c_ntpd_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_ntp/extr_snmp_ntp.c_ntpd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NTPC_MAX = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@NTPC_VERSION = common dso_local global i32 0, align 4
@NTPC_MODE = common dso_local global i32 0, align 4
@seqno = common dso_local global i64 0, align 8
@NTPC_DMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"NTP request too long (%zu)\00", align 1
@ntp_debug = common dso_local global i32 0, align 4
@DBG_DUMP_PKTS = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"sending %zd bytes\00", align 1
@ntpd_sock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot send to ntpd: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ntpd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntpd_request(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @NTPC_MAX, align 4
  %13 = call i32* @malloc(i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = call i32 (i32, i8*, ...) @syslog(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %148

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @NTPC_MAX, align 4
  %21 = call i32 @memset(i32* %19, i32 0, i32 %20)
  %22 = load i32*, i32** %8, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32, i32* @NTPC_VERSION, align 4
  %24 = shl i32 %23, 3
  %25 = load i32, i32* @NTPC_MODE, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i64, i64* @seqno, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* @seqno, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i64, i64* @seqno, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @seqno, align 8
  br label %38

38:                                               ; preds = %35, %18
  %39 = load i64, i64* @seqno, align 8
  %40 = ashr i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %44 = load i64, i64* @seqno, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32* %49, i32** %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 8
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %58, i32** %9, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %90

61:                                               ; preds = %38
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @strlen(i8* %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @NTPC_DMAX, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* @LOG_ERR, align 4
  %69 = load i64, i64* %10, align 8
  %70 = call i32 (i32, i8*, ...) @syslog(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @free(i32* %71)
  store i32 -1, i32* %4, align 4
  br label %148

73:                                               ; preds = %61
  %74 = load i64, i64* %10, align 8
  %75 = lshr i64 %74, 8
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i64, i64* %10, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @memcpy(i32* %83, i8* %84, i64 %85)
  %87 = load i64, i64* %10, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 %87
  store i32* %89, i32** %9, align 8
  br label %93

90:                                               ; preds = %38
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32* %92, i32** %9, align 8
  br label %93

93:                                               ; preds = %90, %73
  br label %94

94:                                               ; preds = %103, %93
  %95 = load i32*, i32** %9, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = srem i64 %100, 4
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %9, align 8
  store i32 0, i32* %104, align 4
  br label %94

106:                                              ; preds = %94
  %107 = load i32, i32* @ntp_debug, align 4
  %108 = load i32, i32* @DBG_DUMP_PKTS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load i32, i32* @LOG_INFO, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = call i32 (i32, i8*, ...) @syslog(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = ptrtoint i32* %121 to i64
  %124 = ptrtoint i32* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @dump_packet(i32* %120, i32 %127)
  br label %129

129:                                              ; preds = %111, %106
  %130 = load i32, i32* @ntpd_sock, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = ptrtoint i32* %132 to i64
  %135 = ptrtoint i32* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = call i32 @send(i32 %130, i32* %131, i32 %138, i32 0)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %147

142:                                              ; preds = %129
  %143 = load i32, i32* @LOG_ERR, align 4
  %144 = call i32 (i32, i8*, ...) @syslog(i32 %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @free(i32* %145)
  store i32 -1, i32* %4, align 4
  br label %148

147:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %142, %67, %15
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @dump_packet(i32*, i32) #1

declare dso_local i32 @send(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
