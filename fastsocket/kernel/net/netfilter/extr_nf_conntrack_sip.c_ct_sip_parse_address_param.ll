; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_address_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_address_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_sip_parse_address_param(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32* %5, i32* %6, %union.nf_inet_addr* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %union.nf_inet_addr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %union.nf_inet_addr* %7, %union.nf_inet_addr** %17, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* %13, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %18, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8*, i8** %18, align 8
  %30 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = call i8* @ct_sip_header_search(i8* %28, i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %18, align 8
  br label %39

39:                                               ; preds = %34, %8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8*, i8** %18, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i8* @ct_sip_header_search(i8* %43, i8* %44, i8* %45, i32 %47)
  store i8* %48, i8** %19, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %80

52:                                               ; preds = %39
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = load i8*, i8** %19, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %19, align 8
  %58 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = load %union.nf_inet_addr*, %union.nf_inet_addr** %17, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = call i32 @parse_addr(%struct.nf_conn* %58, i8* %59, i8** %20, %union.nf_inet_addr* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %80

65:                                               ; preds = %52
  %66 = load i8*, i8** %19, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %15, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i8*, i8** %20, align 8
  %74 = load i8*, i8** %19, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %16, align 8
  store i32 %78, i32* %79, align 4
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %65, %64, %51
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i8* @ct_sip_header_search(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_addr(%struct.nf_conn*, i8*, i8**, %union.nf_inet_addr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
