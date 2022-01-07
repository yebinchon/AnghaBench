; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_header_uri.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_header_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@SIP_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_sip_parse_header_uri(%struct.nf_conn* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, %union.nf_inet_addr* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %union.nf_inet_addr*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store %union.nf_inet_addr* %8, %union.nf_inet_addr** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i32, i32* %15, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %23, align 8
  %30 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %10
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %10
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32*, i32** %17, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = load i32*, i32** %19, align 8
  %45 = call i32 @ct_sip_walk_headers(%struct.nf_conn* %30, i8* %31, i32 %39, i32 %40, i32 %41, i32* %42, i32* %43, i32* %44)
  store i32 %45, i32* %25, align 4
  %46 = load i32, i32* %25, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load i32, i32* %25, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %25, align 4
  store i32 %53, i32* %11, align 4
  br label %102

54:                                               ; preds = %38
  %55 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load %union.nf_inet_addr*, %union.nf_inet_addr** %20, align 8
  %62 = load i8*, i8** %23, align 8
  %63 = call i32 @parse_addr(%struct.nf_conn* %55, i8* %60, i8** %22, %union.nf_inet_addr* %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  store i32 -1, i32* %11, align 4
  br label %102

66:                                               ; preds = %54
  %67 = load i8*, i8** %22, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 58
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i8*, i8** %22, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %22, align 8
  %74 = load i8*, i8** %22, align 8
  %75 = call i32 @simple_strtoul(i8* %74, i8** %22, i32 10)
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %24, align 4
  %77 = icmp ult i32 %76, 1024
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %24, align 4
  %80 = icmp ugt i32 %79, 65535
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %71
  store i32 -1, i32* %11, align 4
  br label %102

82:                                               ; preds = %78
  %83 = load i32, i32* %24, align 4
  %84 = call i32 @htons(i32 %83)
  %85 = load i32*, i32** %21, align 8
  store i32 %84, i32* %85, align 4
  br label %90

86:                                               ; preds = %66
  %87 = load i32, i32* @SIP_PORT, align 4
  %88 = call i32 @htons(i32 %87)
  %89 = load i32*, i32** %21, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i8*, i8** %22, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = load i32*, i32** %14, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %90
  store i32 1, i32* %11, align 4
  br label %102

102:                                              ; preds = %101, %81, %65, %52
  %103 = load i32, i32* %11, align 4
  ret i32 %103
}

declare dso_local i32 @ct_sip_walk_headers(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @parse_addr(%struct.nf_conn*, i8*, i8**, %union.nf_inet_addr*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
