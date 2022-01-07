; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_addr.c_rpc_sockaddr2uaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_addr.c_rpc_sockaddr2uaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@RPCBIND_MAXUADDRPLEN = common dso_local global i32 0, align 4
@RPCBIND_MAXUADDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".%u.%u\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpc_sockaddr2uaddr(%struct.sockaddr* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %9 = load i32, i32* @RPCBIND_MAXUADDRPLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %43 [
    i32 129, label %19
    i32 128, label %31
  ]

19:                                               ; preds = %1
  %20 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %21 = trunc i64 %14 to i32
  %22 = call i32 @rpc_ntop4(%struct.sockaddr* %20, i8* %15, i32 %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %67

25:                                               ; preds = %19
  %26 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %27 = bitcast %struct.sockaddr* %26 to %struct.sockaddr_in*
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call zeroext i16 @ntohs(i32 %29)
  store i16 %30, i16* %7, align 2
  br label %44

31:                                               ; preds = %1
  %32 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %33 = trunc i64 %14 to i32
  %34 = call i32 @rpc_ntop6_noscopeid(%struct.sockaddr* %32, i8* %15, i32 %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i8* null, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %67

37:                                               ; preds = %31
  %38 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %39 = bitcast %struct.sockaddr* %38 to %struct.sockaddr_in6*
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call zeroext i16 @ntohs(i32 %41)
  store i16 %42, i16* %7, align 2
  br label %44

43:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %67

44:                                               ; preds = %37, %25
  %45 = trunc i64 %10 to i32
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = ashr i32 %47, 8
  %49 = trunc i32 %48 to i16
  %50 = load i16, i16* %7, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 255
  %53 = trunc i32 %52 to i16
  %54 = call i32 @snprintf(i8* %12, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i16 zeroext %49, i16 zeroext %53)
  %55 = trunc i64 %10 to i32
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i8* null, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %67

58:                                               ; preds = %44
  %59 = trunc i64 %14 to i32
  %60 = call i32 @strlcat(i8* %15, i8* %12, i32 %59)
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %61, %14
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i8* null, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kstrdup(i8* %15, i32 %65)
  store i8* %66, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %63, %57, %43, %36, %24
  %68 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rpc_ntop4(%struct.sockaddr*, i8*, i32) #2

declare dso_local zeroext i16 @ntohs(i32) #2

declare dso_local i32 @rpc_ntop6_noscopeid(%struct.sockaddr*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext, i16 zeroext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i8* @kstrdup(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
