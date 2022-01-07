; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dfp.c_dfp_byte_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dfp.c_dfp_byte_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dfp_byte_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfp_byte_swap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %union.anon, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = bitcast i32* %3 to i8*
  store i8* %6, i8** %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = bitcast %union.anon* %5 to i32*
  store i32 %7, i32* %8, align 4
  %9 = bitcast %union.anon* %5 to [4 x i8]*
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %11, i8* %13, align 1
  %14 = bitcast %union.anon* %5 to [4 x i8]*
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 2
  %16 = load i8, i8* %15, align 2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 %16, i8* %18, align 1
  %19 = bitcast %union.anon* %5 to [4 x i8]*
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %21, i8* %23, align 1
  %24 = bitcast %union.anon* %5 to [4 x i8]*
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %26 = load i8, i8* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
