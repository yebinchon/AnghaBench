; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_request2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_request2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.ncp_request_header = type { i32, i32, i32, i32* }
%struct.ncp_reply_header = type { i32, i32 }

@NCP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ncp_request_error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ncp_request: completion code=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_request2(%struct.ncp_server* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ncp_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ncp_request_header*, align 8
  %10 = alloca %struct.ncp_reply_header*, align 8
  %11 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.ncp_reply_header*
  store %struct.ncp_reply_header* %13, %struct.ncp_reply_header** %10, align 8
  %14 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %15 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ncp_request_header*
  store %struct.ncp_request_header* %17, %struct.ncp_request_header** %9, align 8
  %18 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %19 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %24 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 24
  %28 = sub i64 %27, 2
  %29 = trunc i64 %28 to i32
  %30 = call i32 @htons(i32 %29)
  %31 = load %struct.ncp_request_header*, %struct.ncp_request_header** %9, align 8
  %32 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %22, %4
  %36 = load i32, i32* @NCP_REQUEST, align 4
  %37 = load %struct.ncp_request_header*, %struct.ncp_request_header** %9, align 8
  %38 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ncp_request_header*, %struct.ncp_request_header** %9, align 8
  %40 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %39, i32 0, i32 0
  store i32 2, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ncp_request_header*, %struct.ncp_request_header** %9, align 8
  %43 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %45 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %46 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ncp_reply_header*, %struct.ncp_reply_header** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ncp_do_request(%struct.ncp_server* %44, i32 %47, %struct.ncp_reply_header* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %85

56:                                               ; preds = %35
  %57 = load %struct.ncp_reply_header*, %struct.ncp_reply_header** %10, align 8
  %58 = getelementptr inbounds %struct.ncp_reply_header, %struct.ncp_reply_header* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %61 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ncp_reply_header*, %struct.ncp_reply_header** %10, align 8
  %63 = getelementptr inbounds %struct.ncp_reply_header, %struct.ncp_reply_header* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %66 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %69 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.ncp_server*, %struct.ncp_server** %5, align 8
  %75 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ncp_reply_header*, %struct.ncp_reply_header** %10, align 8
  %77 = getelementptr inbounds %struct.ncp_reply_header, %struct.ncp_reply_header* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %56
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @PPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %56
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ncp_do_request(%struct.ncp_server*, i32, %struct.ncp_reply_header*, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @PPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
