; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_support.c_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_support.c_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32*, i32*, i32, i32, i32 }
%struct.hostent = type { i64, i32 }
%struct.sockaddr_in = type { i64, i32, i32, i32 }
%struct.servent = type { i32 }

@h_errno = common dso_local global i32 0, align 4
@HOST_NOT_FOUND = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getaddrinfo(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo**, align 8
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.servent*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.hostent* @gethostbyname(i8* %13)
  store %struct.hostent* %14, %struct.hostent** %10, align 8
  %15 = icmp eq %struct.hostent* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @h_errno, align 4
  store i32 %17, i32* %5, align 4
  br label %118

18:                                               ; preds = %4
  %19 = load %struct.hostent*, %struct.hostent** %10, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @HOST_NOT_FOUND, align 4
  store i32 %27, i32* %5, align 4
  br label %118

28:                                               ; preds = %18
  %29 = load %struct.hostent*, %struct.hostent** %10, align 8
  %30 = getelementptr inbounds %struct.hostent, %struct.hostent* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @HOST_NOT_FOUND, align 4
  store i32 %35, i32* %5, align 4
  br label %118

36:                                               ; preds = %28
  %37 = call i8* @malloc(i32 48)
  %38 = bitcast i8* %37 to %struct.addrinfo*
  %39 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %38, %struct.addrinfo** %39, align 8
  %40 = icmp eq %struct.addrinfo* %38, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @HOST_NOT_FOUND, align 4
  store i32 %42, i32* %5, align 4
  br label %118

43:                                               ; preds = %36
  %44 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %48 = load %struct.addrinfo*, %struct.addrinfo** %47, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 6
  store i32 %46, i32* %49, align 8
  %50 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %53, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %59, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %65, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 8
  %68 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %69 = load %struct.addrinfo*, %struct.addrinfo** %68, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  %71 = call i8* @malloc(i32 24)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %74 = load %struct.addrinfo*, %struct.addrinfo** %73, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 2
  store i32* %72, i32** %75, align 8
  %76 = icmp eq i32* %72, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %43
  %78 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %79 = load %struct.addrinfo*, %struct.addrinfo** %78, align 8
  %80 = call i32 @freeaddrinfo(%struct.addrinfo* %79)
  %81 = load i32, i32* @HOST_NOT_FOUND, align 4
  store i32 %81, i32* %5, align 4
  br label %118

82:                                               ; preds = %43
  %83 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %84 = load %struct.addrinfo*, %struct.addrinfo** %83, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 1
  store i32 24, i32* %85, align 8
  %86 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %87 = load %struct.addrinfo*, %struct.addrinfo** %86, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = bitcast i32* %89 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %90, %struct.sockaddr_in** %11, align 8
  %91 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %96, i32 0, i32 1
  store i32 24, i32* %97, align 8
  %98 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %98, i32 0, i32 3
  %100 = load %struct.hostent*, %struct.hostent** %10, align 8
  %101 = getelementptr inbounds %struct.hostent, %struct.hostent* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memcpy(i32* %99, i32 %102, i32 4)
  %104 = load i8*, i8** %7, align 8
  %105 = call %struct.servent* @getservbyname(i8* %104, i32* null)
  store %struct.servent* %105, %struct.servent** %12, align 8
  %106 = icmp eq %struct.servent* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %82
  %108 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %109 = load %struct.addrinfo*, %struct.addrinfo** %108, align 8
  %110 = call i32 @freeaddrinfo(%struct.addrinfo* %109)
  %111 = load i32, i32* @HOST_NOT_FOUND, align 4
  store i32 %111, i32* %5, align 4
  br label %118

112:                                              ; preds = %82
  %113 = load %struct.servent*, %struct.servent** %12, align 8
  %114 = getelementptr inbounds %struct.servent, %struct.servent* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %117 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %112, %107, %77, %41, %34, %26, %16
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.servent* @getservbyname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
