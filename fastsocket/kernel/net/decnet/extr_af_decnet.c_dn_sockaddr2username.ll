; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_sockaddr2username.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_sockaddr2username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dn = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_sockaddr2username(%struct.sockaddr_dn* %0, i8* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.sockaddr_dn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.sockaddr_dn* %0, %struct.sockaddr_dn** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  store i32 2, i32* %7, align 4
  %8 = load i8, i8* %6, align 1
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %5, align 8
  store i8 %8, i8* %9, align 1
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %72 [
    i32 0, label %13
    i32 1, label %20
    i32 2, label %45
  ]

13:                                               ; preds = %3
  %14 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %15 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  store i8 %17, i8* %18, align 1
  br label %72

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  store i8 0, i8* %21, align 1
  %23 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %24 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le16_to_cpu(i32 %25)
  %27 = ptrtoint i8* %26 to i8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 %27, i8* %28, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %32 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %35 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le16_to_cpu(i32 %36)
  %38 = call i32 @memcpy(i8* %30, i32 %33, i8* %37)
  %39 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %40 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le16_to_cpu(i32 %41)
  %43 = getelementptr i8, i8* %42, i64 3
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  br label %72

45:                                               ; preds = %3
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @memset(i8* %46, i32 0, i32 5)
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 5
  store i8* %49, i8** %5, align 8
  %50 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %51 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le16_to_cpu(i32 %52)
  %54 = ptrtoint i8* %53 to i8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 %54, i8* %55, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %59 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %62 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le16_to_cpu(i32 %63)
  %65 = call i32 @memcpy(i8* %57, i32 %60, i8* %64)
  %66 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %4, align 8
  %67 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le16_to_cpu(i32 %68)
  %70 = getelementptr i8, i8* %69, i64 7
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %3, %45, %20, %13
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
