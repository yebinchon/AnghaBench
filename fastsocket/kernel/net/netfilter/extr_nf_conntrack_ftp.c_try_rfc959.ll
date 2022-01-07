; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ftp.c_try_rfc959.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ftp.c_try_rfc959.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_man = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.nf_conntrack_man*, i8)* @try_rfc959 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_rfc959(i8* %0, i64 %1, %struct.nf_conntrack_man* %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nf_conntrack_man*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nf_conntrack_man* %2, %struct.nf_conntrack_man** %8, align 8
  store i8 %3, i8* %9, align 1
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %15 = load i8, i8* %9, align 1
  %16 = call i32 @try_number(i8* %12, i64 %13, i32* %14, i32 6, i8 signext 44, i8 signext %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %51

20:                                               ; preds = %4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = shl i32 %22, 24
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %23, %26
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %31, %33
  %35 = call i32 @htonl(i32 %34)
  %36 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %8, align 8
  %37 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  %40 = load i32, i32* %39, align 16
  %41 = shl i32 %40, 8
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %41, %43
  %45 = call i32 @htons(i32 %44)
  %46 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %8, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_man, %struct.nf_conntrack_man* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %20, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @try_number(i8*, i64, i32*, i32, i8 signext, i8 signext) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
