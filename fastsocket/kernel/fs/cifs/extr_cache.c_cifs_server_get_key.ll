; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cache.c_cifs_server_get_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cache.c_cifs_server_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.cifs_server_key = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unknown network family '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @cifs_server_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_server_get_key(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.cifs_server_key*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TCP_Server_Info*
  store %struct.TCP_Server_Info* %14, %struct.TCP_Server_Info** %7, align 8
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %16 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %8, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %9, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %21, %struct.sockaddr_in6** %10, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.cifs_server_key*
  store %struct.cifs_server_key* %23, %struct.cifs_server_key** %11, align 8
  store i32 24, i32* %12, align 4
  %24 = load %struct.cifs_server_key*, %struct.cifs_server_key** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @memset(%struct.cifs_server_key* %24, i32 0, i32 %25)
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %76 [
    i32 129, label %30
    i32 128, label %53
  ]

30:                                               ; preds = %3
  %31 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cifs_server_key*, %struct.cifs_server_key** %11, align 8
  %35 = getelementptr inbounds %struct.cifs_server_key, %struct.cifs_server_key* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cifs_server_key*, %struct.cifs_server_key** %11, align 8
  %40 = getelementptr inbounds %struct.cifs_server_key, %struct.cifs_server_key* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cifs_server_key*, %struct.cifs_server_key** %11, align 8
  %45 = getelementptr inbounds %struct.cifs_server_key, %struct.cifs_server_key* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  br label %81

53:                                               ; preds = %3
  %54 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cifs_server_key*, %struct.cifs_server_key** %11, align 8
  %58 = getelementptr inbounds %struct.cifs_server_key, %struct.cifs_server_key* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cifs_server_key*, %struct.cifs_server_key** %11, align 8
  %63 = getelementptr inbounds %struct.cifs_server_key, %struct.cifs_server_key* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cifs_server_key*, %struct.cifs_server_key** %11, align 8
  %68 = getelementptr inbounds %struct.cifs_server_key, %struct.cifs_server_key* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  br label %81

76:                                               ; preds = %3
  %77 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %78 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %79)
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %76, %53, %30
  %82 = load i32, i32* %12, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.cifs_server_key*, i32, i32) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
