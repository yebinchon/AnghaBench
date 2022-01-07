; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_conf_addr_in_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_conf_addr_in_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, %struct.TYPE_2__*, i32, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_storage = type { i64 }

@ifas = common dso_local global %struct.ifaddrs* null, align 8
@IFF_UP = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Bad family %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32)* @conf_addr_in_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_addr_in_interface(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ifaddrs*, align 8
  %10 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %12 = call i8* @SIF_NAME(%struct.sockaddr_storage* %11)
  store i8* %12, i8** %8, align 8
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** @ifas, align 8
  store %struct.ifaddrs* %13, %struct.ifaddrs** %9, align 8
  br label %14

14:                                               ; preds = %66, %3
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %16 = icmp ne %struct.ifaddrs* %15, null
  br i1 %16, label %17, label %70

17:                                               ; preds = %14
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %19 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_UP, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %66

25:                                               ; preds = %17
  %26 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %27 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strcmp(i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %66

33:                                               ; preds = %25
  %34 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %35 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %38 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %66

44:                                               ; preds = %33
  %45 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %46 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  switch i64 %47, label %55 [
    i64 129, label %48
    i64 128, label %48
  ]

48:                                               ; preds = %44, %44
  %49 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %50 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @conf_inet_eq(%struct.TYPE_2__* %51, %struct.sockaddr_storage* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load i32, i32* @LOG_ERR, align 4
  %57 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %58 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @lfun(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %66

61:                                               ; preds = %48
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %71

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %55, %43, %32, %24
  %67 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %68 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %67, i32 0, i32 3
  %69 = load %struct.ifaddrs*, %struct.ifaddrs** %68, align 8
  store %struct.ifaddrs* %69, %struct.ifaddrs** %9, align 8
  br label %14

70:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i8* @SIF_NAME(%struct.sockaddr_storage*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @conf_inet_eq(%struct.TYPE_2__*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @lfun(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
