; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_in_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/strings/extr_apr_snprintf.c_conv_in_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.in_addr*, i8*, i32*)* @conv_in_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @conv_in_addr(%struct.in_addr* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.in_addr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohl(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 255
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @conv_10(i32 %17, i32 %18, i32* %9, i8* %19, i32* %10)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %8, align 8
  store i8 46, i8* %22, align 1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 65280
  %25 = lshr i32 %24, 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @conv_10(i32 %25, i32 %26, i32* %9, i8* %27, i32* %10)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %8, align 8
  store i8 46, i8* %30, align 1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 16711680
  %33 = lshr i32 %32, 16
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @conv_10(i32 %33, i32 %34, i32* %9, i8* %35, i32* %10)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %8, align 8
  store i8 46, i8* %38, align 1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, -16777216
  %41 = lshr i32 %40, 24
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i8* @conv_10(i32 %41, i32 %42, i32* %9, i8* %43, i32* %10)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** %8, align 8
  ret i8* %52
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @conv_10(i32, i32, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
