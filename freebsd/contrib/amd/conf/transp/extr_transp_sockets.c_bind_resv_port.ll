; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/conf/transp/extr_transp_sockets.c_bind_resv_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/conf/transp/extr_transp_sockets.c_bind_resv_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i8*, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@IPPORT_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bind_resv_port(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.sockaddr_in, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %8 = ptrtoint %struct.sockaddr_in* %5 to i32
  %9 = call i32 @memset(i32 %8, i32 0, i32 16)
  %10 = load i32, i32* @AF_INET, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i64*, i64** %4, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @htons(i64 %20)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %25 = call i32 @bind(i32 %23, %struct.sockaddr* %24, i32 16)
  store i32 %25, i32* %6, align 4
  br label %59

26:                                               ; preds = %14, %2
  %27 = load i32, i32* @IPPORT_RESERVED, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %47, %26
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i8* @htons(i64 %32)
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %37 = call i32 @bind(i32 %35, %struct.sockaddr* %36, i32 16)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @IPPORT_RESERVED, align 4
  %45 = sdiv i32 %44, 2
  %46 = icmp sgt i32 %43, %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %29, label %49

49:                                               ; preds = %47
  %50 = load i64*, i64** %4, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = load i64*, i64** %4, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %52, %49
  br label %59

59:                                               ; preds = %58, %18
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
