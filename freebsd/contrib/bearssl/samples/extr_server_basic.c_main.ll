; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_server_basic.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_server_basic.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@BR_SSL_BUFSIZE_BIDI = common dso_local global i32 0, align 4
@CHAIN = common dso_local global i32 0, align 4
@CHAIN_LEN = common dso_local global i32 0, align 4
@BR_KEYTYPE_RSA = common dso_local global i32 0, align 4
@SKEY = common dso_local global i32 0, align 4
@sock_read = common dso_local global i32 0, align 4
@sock_write = common dso_local global i32 0, align 4
@HTTP_RES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SSL closed (correctly).\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SSL error: %d\0A\00", align 1
@BR_KEYTYPE_EC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %20, i32* %3, align 4
  br label %104

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* @SIGPIPE, align 4
  %26 = load i32, i32* @SIG_IGN, align 4
  %27 = call i32 @signal(i32 %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @host_bind(i32* null, i8* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %103, %34
  %36 = load i32, i32* @BR_SSL_BUFSIZE_BIDI, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %10, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @accept_client(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %100

46:                                               ; preds = %35
  %47 = load i32, i32* @CHAIN, align 4
  %48 = load i32, i32* @CHAIN_LEN, align 4
  %49 = load i32, i32* @BR_KEYTYPE_RSA, align 4
  %50 = call i32 @br_ssl_server_init_full_ec(%struct.TYPE_12__* %9, i32 %47, i32 %48, i32 %49, i32* @SKEY)
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %52 = trunc i64 %37 to i32
  %53 = call i32 @br_ssl_engine_set_buffer(i32* %51, i8* %39, i32 %52, i32 1)
  %54 = call i32 @br_ssl_server_reset(%struct.TYPE_12__* %9)
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %56 = load i32, i32* @sock_read, align 4
  %57 = load i32, i32* @sock_write, align 4
  %58 = call i32 @br_sslio_init(i32* %12, i32* %55, i32 %56, i32* %8, i32 %57, i32* %8)
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %78, %67, %46
  %60 = call i64 @br_sslio_read(i32* %12, i8* %16, i32 1)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %85

63:                                               ; preds = %59
  %64 = load i8, i8* %16, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 13
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %59

68:                                               ; preds = %63
  %69 = load i8, i8* %16, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %79

76:                                               ; preds = %72
  store i32 1, i32* %13, align 4
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %77, %76
  br label %59

79:                                               ; preds = %75
  %80 = load i32, i32* @HTTP_RES, align 4
  %81 = load i32, i32* @HTTP_RES, align 4
  %82 = call i32 @strlen(i32 %81)
  %83 = call i32 @br_sslio_write_all(i32* %12, i32 %80, i32 %82)
  %84 = call i32 @br_sslio_close(i32* %12)
  br label %85

85:                                               ; preds = %79, %62
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %87 = call i32 @br_ssl_engine_last_error(i32* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @close(i32 %98)
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %97, %44
  %101 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %15, align 4
  switch i32 %102, label %106 [
    i32 0, label %103
    i32 1, label %104
  ]

103:                                              ; preds = %100
  br label %35

104:                                              ; preds = %100, %32, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105

106:                                              ; preds = %100
  unreachable
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @host_bind(i32*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @accept_client(i32) #1

declare dso_local i32 @br_ssl_server_init_full_ec(%struct.TYPE_12__*, i32, i32, i32, i32*) #1

declare dso_local i32 @br_ssl_engine_set_buffer(i32*, i8*, i32, i32) #1

declare dso_local i32 @br_ssl_server_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @br_sslio_init(i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @br_sslio_read(i32*, i8*, i32) #1

declare dso_local i32 @br_sslio_write_all(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @br_sslio_close(i32*) #1

declare dso_local i32 @br_ssl_engine_last_error(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
