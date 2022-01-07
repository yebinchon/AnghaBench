; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_addr.c_rpc_uaddr2sockaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_addr.c_rpc_uaddr2sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@RPCBIND_MAXUADDRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpc_uaddr2sockaddr(i8* %0, i64 %1, %struct.sockaddr* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 4
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @memcpy(i8* %21, i8* %28, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %21, i64 %31
  store i8 0, i8* %32, align 1
  %33 = call i8* @strrchr(i8* %21, i8 signext 46)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

40:                                               ; preds = %27
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i64 @strict_strtoul(i8* %42, i32 10, i64* %13)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

49:                                               ; preds = %40
  %50 = load i64, i64* %13, align 8
  %51 = icmp ugt i64 %50, 255
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

56:                                               ; preds = %49
  %57 = load i8*, i8** %10, align 8
  store i8 0, i8* %57, align 1
  %58 = call i8* @strrchr(i8* %21, i8 signext 46)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp eq i8* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

65:                                               ; preds = %56
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = call i64 @strict_strtoul(i8* %67, i32 10, i64* %14)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

74:                                               ; preds = %65
  %75 = load i64, i64* %14, align 8
  %76 = icmp ugt i64 %75, 255
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

81:                                               ; preds = %74
  %82 = load i64, i64* %14, align 8
  %83 = shl i64 %82, 8
  %84 = load i64, i64* %13, align 8
  %85 = or i64 %83, %84
  %86 = trunc i64 %85 to i16
  store i16 %86, i16* %15, align 2
  %87 = load i8*, i8** %10, align 8
  store i8 0, i8* %87, align 1
  %88 = call i32 @strlen(i8* %21)
  %89 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @rpc_pton(i8* %21, i32 %88, %struct.sockaddr* %89, i64 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

94:                                               ; preds = %81
  %95 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %96 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %110 [
    i32 129, label %98
    i32 128, label %104
  ]

98:                                               ; preds = %94
  %99 = load i16, i16* %15, align 2
  %100 = call i8* @htons(i16 zeroext %99)
  %101 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %102 = bitcast %struct.sockaddr* %101 to %struct.sockaddr_in*
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  store i64 8, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

104:                                              ; preds = %94
  %105 = load i16, i16* %15, align 2
  %106 = call i8* @htons(i16 zeroext %105)
  %107 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %108 = bitcast %struct.sockaddr* %107 to %struct.sockaddr_in6*
  %109 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  store i64 8, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

110:                                              ; preds = %94
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %111

111:                                              ; preds = %110, %104, %98, %93, %80, %73, %64, %55, %48, %39, %26
  %112 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i64, i64* %5, align 8
  ret i64 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #2

declare dso_local i64 @rpc_pton(i8*, i32, %struct.sockaddr*, i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @htons(i16 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
