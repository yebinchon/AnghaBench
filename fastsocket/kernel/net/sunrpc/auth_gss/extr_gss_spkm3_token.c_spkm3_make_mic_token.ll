; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_token.c_spkm3_make_mic_token.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_token.c_spkm3_make_mic_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spkm3_make_mic_token(i8** %0, i32 %1, %struct.xdr_netobj* %2, %struct.xdr_netobj* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xdr_netobj*, align 8
  %10 = alloca %struct.xdr_netobj*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %9, align 8
  store %struct.xdr_netobj* %3, %struct.xdr_netobj** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %13, align 8
  %18 = bitcast i8* %16 to i32*
  store i32 164, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %13, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %13, align 8
  %22 = bitcast i8* %20 to i32*
  store i32 %19, i32* %22, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %25 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %28 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i8* %23, i32 %26, i32 %29)
  %31 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %32 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %13, align 8
  %39 = bitcast i8* %37 to i32*
  store i32 3, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %13, align 8
  %44 = bitcast i8* %42 to i32*
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %13, align 8
  %48 = bitcast i8* %46 to i32*
  store i32 %45, i32* %48, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %51 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @memcpy(i8* %49, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
