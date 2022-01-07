; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_parse_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_parse_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, i8**, %union.nf_inet_addr*, i8*)* @parse_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_addr(%struct.nf_conn* %0, i8* %1, i8** %2, %union.nf_inet_addr* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %union.nf_inet_addr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %15 = icmp ne %struct.nf_conn* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %61

17:                                               ; preds = %5
  %18 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %19 = call i32 @memset(%union.nf_inet_addr* %18, i32 0, i32 4)
  %20 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %21 = call i32 @nf_ct_l3num(%struct.nf_conn* %20)
  switch i32 %21, label %44 [
    i32 129, label %22
    i32 128, label %33
  ]

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %31 = bitcast %union.nf_inet_addr* %30 to i32*
  %32 = call i32 @in4_pton(i8* %23, i32 %29, i32* %31, i32 -1, i8** %12)
  store i32 %32, i32* %13, align 4
  br label %46

33:                                               ; preds = %17
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = load %union.nf_inet_addr*, %union.nf_inet_addr** %10, align 8
  %42 = bitcast %union.nf_inet_addr* %41 to i32*
  %43 = call i32 @in6_pton(i8* %34, i32 %40, i32* %42, i32 -1, i8** %12)
  store i32 %43, i32* %13, align 4
  br label %46

44:                                               ; preds = %17
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %33, %22
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %46
  store i32 0, i32* %6, align 4
  br label %61

54:                                               ; preds = %49
  %55 = load i8**, i8*** %9, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %12, align 8
  %59 = load i8**, i8*** %9, align 8
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %53, %16
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%union.nf_inet_addr*, i32, i32) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @in4_pton(i8*, i32, i32*, i32, i8**) #1

declare dso_local i32 @in6_pton(i8*, i32, i32*, i32, i8**) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
