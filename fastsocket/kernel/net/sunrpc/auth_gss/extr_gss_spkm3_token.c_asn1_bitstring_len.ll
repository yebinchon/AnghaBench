; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_token.c_asn1_bitstring_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_token.c_asn1_bitstring_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asn1_bitstring_len(%struct.xdr_netobj* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.xdr_netobj*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  store %struct.xdr_netobj* %0, %struct.xdr_netobj** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %13 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %16 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %19 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  store i8* %23, i8** %10, align 8
  %24 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %25 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %42, %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  br label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %27

45:                                               ; preds = %40, %27
  %46 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %47 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8* %52, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %71, %45
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  store i16 1, i16* %11, align 2
  %57 = load i16, i16* %11, align 2
  %58 = sext i16 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %58, %59
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %70

69:                                               ; preds = %56
  br label %74

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %53

74:                                               ; preds = %69, %53
  %75 = load i32, i32* %9, align 4
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
