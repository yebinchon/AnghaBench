; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_present_and_same_family.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_present_and_same_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_address = type { i32 }
%struct.sockaddr = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sadb_address*, %struct.sadb_address*)* @present_and_same_family to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @present_and_same_family(%struct.sadb_address* %0, %struct.sadb_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sadb_address*, align 8
  %5 = alloca %struct.sadb_address*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.sadb_address* %0, %struct.sadb_address** %4, align 8
  store %struct.sadb_address* %1, %struct.sadb_address** %5, align 8
  %8 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %9 = icmp ne %struct.sadb_address* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sadb_address*, %struct.sadb_address** %5, align 8
  %12 = icmp ne %struct.sadb_address* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %37

14:                                               ; preds = %10
  %15 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %16 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %15, i64 1
  %17 = bitcast %struct.sadb_address* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %6, align 8
  %18 = load %struct.sadb_address*, %struct.sadb_address** %5, align 8
  %19 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %18, i64 1
  %20 = bitcast %struct.sadb_address* %19 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %7, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %37

29:                                               ; preds = %14
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %28, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
