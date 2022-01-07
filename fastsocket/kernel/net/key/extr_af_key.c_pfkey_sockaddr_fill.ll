; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_sockaddr_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_sockaddr_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, %struct.sockaddr*, i16)* @pfkey_sockaddr_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_sockaddr_fill(%struct.TYPE_5__* %0, i8* %1, %struct.sockaddr* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.sockaddr_in*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i16 %3, i16* %9, align 2
  %11 = load i16, i16* %9, align 2
  %12 = zext i16 %11 to i32
  switch i32 %12, label %31 [
    i32 129, label %13
  ]

13:                                               ; preds = %4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %10, align 8
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i32 129, i32* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  store i32 32, i32* %5, align 4
  br label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
