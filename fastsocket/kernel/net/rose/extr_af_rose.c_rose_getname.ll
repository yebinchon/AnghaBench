; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.sockaddr = type { i32 }
%struct.full_sockaddr_rose = type { i32, i32*, i32, i32, i8* }
%struct.rose_sock = type { i32, i32, i32*, i32, i32, i32*, i32, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@AF_ROSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @rose_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.full_sockaddr_rose*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.rose_sock*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.full_sockaddr_rose*
  store %struct.full_sockaddr_rose* %15, %struct.full_sockaddr_rose** %10, align 8
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %11, align 8
  %20 = call %struct.rose_sock* @rose_sk(%struct.sock* %19)
  store %struct.rose_sock* %20, %struct.rose_sock** %12, align 8
  %21 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %22 = call i32 @memset(%struct.full_sockaddr_rose* %21, i32 0, i32 32)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TCP_ESTABLISHED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOTCONN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %122

34:                                               ; preds = %25
  %35 = load i8*, i8** @AF_ROSE, align 8
  %36 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %37 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %39 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %42 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %44 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %47 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %49 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %52 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %73, %34
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %56 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %61 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %68 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %53

76:                                               ; preds = %53
  br label %120

77:                                               ; preds = %4
  %78 = load i8*, i8** @AF_ROSE, align 8
  %79 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %80 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %82 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %85 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %87 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %90 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %92 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %95 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %116, %77
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %99 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %96
  %103 = load %struct.rose_sock*, %struct.rose_sock** %12, align 8
  %104 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %10, align 8
  %111 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %102
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %96

119:                                              ; preds = %96
  br label %120

120:                                              ; preds = %119, %76
  %121 = load i32*, i32** %8, align 8
  store i32 32, i32* %121, align 4
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %31
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.full_sockaddr_rose*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
