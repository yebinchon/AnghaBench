; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i16 }
%struct.sockaddr_in6 = type { i16 }

@CIFS_PORT = common dso_local global i32 0, align 4
@RFC1001_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.sockaddr*)* @match_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_port(%struct.TCP_Server_Info* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %8 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %9 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 128, label %20
  ]

11:                                               ; preds = %2
  %12 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %13 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.sockaddr_in*
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16* %15, i16** %7, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %6, align 2
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %22 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.sockaddr_in6*
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %23, i32 0, i32 0
  store i16* %24, i16** %7, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in6*
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %6, align 2
  br label %31

29:                                               ; preds = %2
  %30 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %55

31:                                               ; preds = %20, %11
  %32 = load i16, i16* %6, align 2
  %33 = icmp ne i16 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @CIFS_PORT, align 4
  %36 = call zeroext i16 @htons(i32 %35)
  store i16 %36, i16* %6, align 2
  %37 = load i16, i16* %6, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16*, i16** %7, align 8
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %55

44:                                               ; preds = %34
  %45 = load i32, i32* @RFC1001_PORT, align 4
  %46 = call zeroext i16 @htons(i32 %45)
  store i16 %46, i16* %6, align 2
  br label %47

47:                                               ; preds = %44, %31
  %48 = load i16, i16* %6, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16*, i16** %7, align 8
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %49, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %47, %43, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local zeroext i16 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
