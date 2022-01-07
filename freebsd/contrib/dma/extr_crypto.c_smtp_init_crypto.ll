; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_crypto.c_smtp_init_crypto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_crypto.c_smtp_init_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32* }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"remote delivery deferred: SSL init failed: %s\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"remote delivery deferred\00", align 1
@SECURETRANS = common dso_local global i32 0, align 4
@STARTTLS = common dso_local global i32 0, align 4
@NOSSL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"EHLO %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"STARTTLS\00", align 1
@TLS_OPP = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"remote delivery deferred: STARTTLS not available: %s\00", align 1
@neterr = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"in opportunistic TLS mode, STARTTLS not available: %s\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"remote delivery deferred: SSL struct creation failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"remote delivery deferred: SSL set fd failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"remote delivery deferred: SSL handshake failed fatally: %s\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"remote delivery deferred: Peer did not provide certificate: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smtp_init_crypto(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = call i32 (...) @SSL_library_init()
  %11 = call i32 (...) @SSL_load_error_strings()
  %12 = call i32* (...) @SSLv23_client_method()
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @SSL_CTX_new(i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @LOG_WARNING, align 4
  %19 = call i32 (...) @ssl_errstr()
  %20 = call i32 (i32, i8*, ...) @syslog(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 1, i32* %3, align 4
  br label %121

21:                                               ; preds = %2
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %27 = call i32 @init_cert_file(i32* %25, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @LOG_WARNING, align 4
  %32 = call i32 (i32, i8*, ...) @syslog(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %121

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SECURETRANS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @STARTTLS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = load i32, i32* @NOSSL, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %47 = or i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (...) @hostname()
  %50 = call i32 (i32, i8*, ...) @send_remote_command(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @read_remote(i32 %51, i32 0, i32* null)
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %74

54:                                               ; preds = %44
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i8*, ...) @send_remote_command(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @read_remote(i32 %57, i32 0, i32* null)
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @TLS_OPP, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = load i32, i32* @neterr, align 4
  %68 = call i32 (i32, i8*, ...) @syslog(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  store i32 1, i32* %3, align 4
  br label %121

69:                                               ; preds = %60
  %70 = load i32, i32* @LOG_INFO, align 4
  %71 = load i32, i32* @neterr, align 4
  %72 = call i32 (i32, i8*, ...) @syslog(i32 %70, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  store i32 0, i32* %3, align 4
  br label %121

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i32, i32* @NOSSL, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %78 = and i32 %77, %76
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  br label %79

79:                                               ; preds = %74, %39, %34
  %80 = load i32*, i32** %6, align 8
  %81 = call i32* @SSL_new(i32* %80)
  store i32* %81, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @LOG_NOTICE, align 4
  %86 = call i32 (...) @ssl_errstr()
  %87 = call i32 (i32, i8*, ...) @syslog(i32 %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  store i32 1, i32* %3, align 4
  br label %121

88:                                               ; preds = %79
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %90 = call i32 @SSL_set_connect_state(i32* %89)
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @SSL_set_fd(i32* %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* @LOG_NOTICE, align 4
  %98 = call i32 (...) @ssl_errstr()
  %99 = call i32 (i32, i8*, ...) @syslog(i32 %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  store i32 1, i32* %3, align 4
  br label %121

100:                                              ; preds = %88
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %102 = call i32 @SSL_connect(i32* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @LOG_ERR, align 4
  %107 = call i32 (...) @ssl_errstr()
  %108 = call i32 (i32, i8*, ...) @syslog(i32 %106, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  store i32 1, i32* %3, align 4
  br label %121

109:                                              ; preds = %100
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %111 = call i32* @SSL_get_peer_certificate(i32* %110)
  store i32* %111, i32** %8, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @LOG_WARNING, align 4
  %116 = call i32 (...) @ssl_errstr()
  %117 = call i32 (i32, i8*, ...) @syslog(i32 %115, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @X509_free(i32* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %105, %96, %84, %69, %65, %30, %17
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32* @SSLv23_client_method(...) #1

declare dso_local i32* @SSL_CTX_new(i32*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @ssl_errstr(...) #1

declare dso_local i32 @init_cert_file(i32*, i32*) #1

declare dso_local i32 @send_remote_command(i32, i8*, ...) #1

declare dso_local i32 @hostname(...) #1

declare dso_local i32 @read_remote(i32, i32, i32*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @SSL_set_fd(i32*, i32) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
