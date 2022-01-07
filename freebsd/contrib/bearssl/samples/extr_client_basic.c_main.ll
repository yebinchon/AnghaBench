; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_client_basic.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/samples/extr_client_basic.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BR_SSL_BUFSIZE_BIDI = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@TAs = common dso_local global i32 0, align 4
@TAs_NUM = common dso_local global i32 0, align 4
@sock_read = common dso_local global i32 0, align 4
@sock_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" HTTP/1.0\0D\0AHost: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@BR_SSL_CLOSED = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"closed.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"SSL error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"socket closed without proper SSL termination\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [512 x i8], align 16
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @BR_SSL_BUFSIZE_BIDI, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %2
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %116

30:                                               ; preds = %25
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 3
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  br label %44

43:                                               ; preds = %30
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* @SIGPIPE, align 4
  %46 = load i32, i32* @SIG_IGN, align 4
  %47 = call i32 @signal(i32 %45, i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @host_connect(i8* %48, i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %116

55:                                               ; preds = %44
  %56 = load i32, i32* @TAs, align 4
  %57 = load i32, i32* @TAs_NUM, align 4
  %58 = call i32 @br_ssl_client_init_full(%struct.TYPE_4__* %10, i32* %11, i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %60 = trunc i64 %20 to i32
  %61 = call i32 @br_ssl_engine_set_buffer(i32* %59, i8* %22, i32 %60, i32 1)
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @br_ssl_client_reset(%struct.TYPE_4__* %10, i8* %62, i32 0)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %65 = load i32, i32* @sock_read, align 4
  %66 = load i32, i32* @sock_write, align 4
  %67 = call i32 @br_sslio_init(i32* %14, i32* %64, i32 %65, i32* %9, i32 %66, i32* %9)
  %68 = call i32 @br_sslio_write_all(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = call i32 @br_sslio_write_all(i32* %14, i8* %69, i32 %71)
  %73 = call i32 @br_sslio_write_all(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 17)
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = call i32 @br_sslio_write_all(i32* %14, i8* %74, i32 %76)
  %78 = call i32 @br_sslio_write_all(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %79 = call i32 @br_sslio_flush(i32* %14)
  br label %80

80:                                               ; preds = %86, %55
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %82 = call i32 @br_sslio_read(i32* %14, i8* %81, i32 512)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %91

86:                                               ; preds = %80
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @stdout, align 4
  %90 = call i32 @fwrite(i8* %87, i32 1, i32 %88, i32 %89)
  br label %80

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @close(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %95 = call i64 @br_ssl_engine_current_state(i32* %94)
  %96 = load i64, i64* @BR_SSL_CLOSED, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %100 = call i32 @br_ssl_engine_last_error(i32* %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %116

107:                                              ; preds = %98
  %108 = load i32, i32* @stderr, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %116

112:                                              ; preds = %91
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %115, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %116

116:                                              ; preds = %112, %107, %103, %53, %28
  %117 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @host_connect(i8*, i8*) #2

declare dso_local i32 @br_ssl_client_init_full(%struct.TYPE_4__*, i32*, i32, i32) #2

declare dso_local i32 @br_ssl_engine_set_buffer(i32*, i8*, i32, i32) #2

declare dso_local i32 @br_ssl_client_reset(%struct.TYPE_4__*, i8*, i32) #2

declare dso_local i32 @br_sslio_init(i32*, i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @br_sslio_write_all(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @br_sslio_flush(i32*) #2

declare dso_local i32 @br_sslio_read(i32*, i8*, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @br_ssl_engine_current_state(i32*) #2

declare dso_local i32 @br_ssl_engine_last_error(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
