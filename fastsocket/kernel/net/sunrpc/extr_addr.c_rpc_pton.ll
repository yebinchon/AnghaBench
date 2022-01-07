; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_addr.c_rpc_pton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_addr.c_rpc_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpc_pton(i8* %0, i64 %1, %struct.sockaddr* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %31, %4
  %12 = load i32, i32* %10, align 4
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 58
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @rpc_pton6(i8* %25, i64 %26, %struct.sockaddr* %27, i64 %28)
  store i64 %29, i64* %5, align 8
  br label %40

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @rpc_pton4(i8* %35, i64 %36, %struct.sockaddr* %37, i64 %38)
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %34, %24
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local i64 @rpc_pton6(i8*, i64, %struct.sockaddr*, i64) #1

declare dso_local i64 @rpc_pton4(i8*, i64, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
