; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_make_sockaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_make_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i8, i8* }
%struct.sockaddr_in6 = type { i8* }

@dlm_local_addr = common dso_local global %struct.TYPE_2__** null, align 8
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_storage*, i32, i32*)* @make_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_sockaddr(%struct.sockaddr_storage* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @dlm_local_addr, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %15 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %23 = bitcast %struct.sockaddr_storage* %22 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @cpu_to_be16(i32 %24)
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %6, align 8
  store i32 16, i32* %28, align 4
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = call i32 @memset(i8* %30, i32 0, i32 1)
  br label %40

32:                                               ; preds = %3
  %33 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %34 = bitcast %struct.sockaddr_storage* %33 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %34, %struct.sockaddr_in6** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @cpu_to_be16(i32 %35)
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %6, align 8
  store i32 8, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %21
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %42 = bitcast %struct.sockaddr_storage* %41 to i8*
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i8* %46, i32 0, i32 %51)
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
