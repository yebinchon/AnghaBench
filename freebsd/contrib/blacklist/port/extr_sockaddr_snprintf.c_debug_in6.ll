; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_sockaddr_snprintf.c_debug_in6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_sockaddr_snprintf.c_debug_in6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [169 x i8] c"sin6_len=%u, sin6_family=%u, sin6_port=%u, sin6_flowinfo=%u, sin6_addr=%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x, sin6_scope_id=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.sockaddr_in6*)* @debug_in6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_in6(i8* %0, i64 %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %6, align 8
  %8 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %9 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %15 = call i32 @SLEN(%struct.sockaddr_in6* %14)
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 9
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 10
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 11
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 12
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 13
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 14
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 15
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @snprintf(i8* %12, i64 %13, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75)
  ret i32 %76
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLEN(%struct.sockaddr_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
