; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_next_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_next_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sip_header = type { i8*, i32 (%struct.nf_conn.0*, i8*, i8*, i32*)*, i32 }
%struct.nf_conn.0 = type opaque
%struct.nf_conn = type { i32 }

@ct_sip_hdrs = common dso_local global %struct.sip_header* null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*)* @ct_sip_next_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_sip_next_header(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.sip_header*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.sip_header*, %struct.sip_header** @ct_sip_hdrs, align 8
  %21 = load i32, i32* %13, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %20, i64 %22
  store %struct.sip_header* %23, %struct.sip_header** %16, align 8
  %24 = load i8*, i8** %10, align 8
  store i8* %24, i8** %17, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = call i8* @ct_sip_header_search(i8* %33, i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %85

40:                                               ; preds = %7
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %18, align 8
  %43 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %44 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %47 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @ct_sip_header_search(i8* %41, i8* %42, i8* %45, i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %85

53:                                               ; preds = %40
  %54 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %55 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %14, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.sip_header*, %struct.sip_header** %16, align 8
  %68 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %67, i32 0, i32 1
  %69 = load i32 (%struct.nf_conn.0*, i8*, i8*, i32*)*, i32 (%struct.nf_conn.0*, i8*, i8*, i32*)** %68, align 8
  %70 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %71 = bitcast %struct.nf_conn* %70 to %struct.nf_conn.0*
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = call i32 %69(%struct.nf_conn.0* %71, i8* %72, i8* %73, i32* %19)
  %75 = load i32*, i32** %15, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %53
  store i32 -1, i32* %8, align 4
  br label %85

80:                                               ; preds = %53
  %81 = load i32, i32* %19, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, %81
  store i32 %84, i32* %82, align 4
  store i32 1, i32* %8, align 4
  br label %85

85:                                               ; preds = %80, %79, %52, %39
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i8* @ct_sip_header_search(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
