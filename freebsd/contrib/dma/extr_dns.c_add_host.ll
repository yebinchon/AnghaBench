; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_dns.c_add_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_dns.c_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx_hostentry = type { i32, i32, %struct.addrinfo, i32, i32 }
%struct.addrinfo = type { i32, i32*, %struct.addrinfo*, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.mx_hostentry**, i64*)* @add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_host(i32 %0, i8* %1, i32 %2, %struct.mx_hostentry** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mx_hostentry**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca [10 x i8], align 1
  %16 = alloca %struct.mx_hostentry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mx_hostentry** %3, %struct.mx_hostentry*** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8
  store i32 10, i32* %17, align 4
  %19 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 40)
  %20 = load i32, i32* @PF_UNSPEC, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @SOCK_STREAM, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @IPPROTO_TCP, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @snprintf(i8* %26, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %31 = call i32 @getaddrinfo(i8* %29, i8* %30, %struct.addrinfo* %12, %struct.addrinfo** %14)
  switch i32 %31, label %34 [
    i32 0, label %32
    i32 129, label %33
    i32 128, label %33
  ]

32:                                               ; preds = %5
  br label %35

33:                                               ; preds = %5, %5
  br label %118

34:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %125

35:                                               ; preds = %32
  %36 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  store %struct.addrinfo* %36, %struct.addrinfo** %13, align 8
  br label %37

37:                                               ; preds = %111, %35
  %38 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %39 = icmp ne %struct.addrinfo* %38, null
  br i1 %39, label %40, label %115

40:                                               ; preds = %37
  %41 = load i64*, i64** %11, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @roundup(i64 %45, i32 10)
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = load i64*, i64** %11, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 2
  %52 = call i64 @roundup(i64 %51, i32 10)
  store i64 %52, i64* %18, align 8
  %53 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %10, align 8
  %54 = load %struct.mx_hostentry*, %struct.mx_hostentry** %53, align 8
  %55 = load i64, i64* %18, align 8
  %56 = mul i64 %55, 56
  %57 = call %struct.mx_hostentry* @reallocf(%struct.mx_hostentry* %54, i64 %56)
  %58 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %10, align 8
  store %struct.mx_hostentry* %57, %struct.mx_hostentry** %58, align 8
  %59 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %10, align 8
  %60 = load %struct.mx_hostentry*, %struct.mx_hostentry** %59, align 8
  %61 = icmp eq %struct.mx_hostentry* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %118

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.mx_hostentry**, %struct.mx_hostentry*** %10, align 8
  %66 = load %struct.mx_hostentry*, %struct.mx_hostentry** %65, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %66, i64 %68
  store %struct.mx_hostentry* %69, %struct.mx_hostentry** %16, align 8
  %70 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %71 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @strlcpy(i32 %72, i8* %73, i32 4)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %77 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %79 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %78, i32 0, i32 2
  %80 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %81 = bitcast %struct.addrinfo* %79 to i8*
  %82 = bitcast %struct.addrinfo* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 40, i1 false)
  %83 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %84 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %90 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %89, i32 0, i32 3
  %91 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %92 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @bcopy(i32* %88, i32* %90, i32 %94)
  %96 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %97 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %96, i32 0, i32 3
  %98 = bitcast i32* %97 to %struct.sockaddr*
  %99 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %100 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mx_hostentry*, %struct.mx_hostentry** %16, align 8
  %104 = getelementptr inbounds %struct.mx_hostentry, %struct.mx_hostentry* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NI_NUMERICHOST, align 4
  %107 = call i32 @getnameinfo(%struct.sockaddr* %98, i32 %102, i32 %105, i32 4, i32* null, i32 0, i32 %106)
  %108 = load i64*, i64** %11, align 8
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %64
  %112 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 2
  %114 = load %struct.addrinfo*, %struct.addrinfo** %113, align 8
  store %struct.addrinfo* %114, %struct.addrinfo** %13, align 8
  br label %37

115:                                              ; preds = %37
  %116 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %117 = call i32 @freeaddrinfo(%struct.addrinfo* %116)
  store i32 0, i32* %6, align 4
  br label %125

118:                                              ; preds = %62, %33
  %119 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %120 = icmp ne %struct.addrinfo* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %123 = call i32 @freeaddrinfo(%struct.addrinfo* %122)
  br label %124

124:                                              ; preds = %121, %118
  store i32 1, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %115, %34
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.mx_hostentry* @reallocf(%struct.mx_hostentry*, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
