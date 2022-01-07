; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_mkname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_mkname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i64, i64* }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_un*, i32, i32*)* @unix_mkname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_mkname(%struct.sockaddr_un* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ule i64 %9, 2
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 %13, 16
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %11
  %19 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %20 = icmp ne %struct.sockaddr_un* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_UNIX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %21
  %31 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %32 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %39 = bitcast %struct.sockaddr_un* %38 to i8*
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %44 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = call i32 @strlen(i64* %45)
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 2
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %4, align 4
  br label %59

52:                                               ; preds = %30
  %53 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @csum_partial(%struct.sockaddr_un* %53, i32 %54, i32 0)
  %56 = call i32 @unix_hash_fold(i32 %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %52, %37, %27, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @unix_hash_fold(i32) #1

declare dso_local i32 @csum_partial(%struct.sockaddr_un*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
