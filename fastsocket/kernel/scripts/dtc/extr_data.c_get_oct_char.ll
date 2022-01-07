; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_data.c_get_oct_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_data.c_get_oct_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i32*)* @get_oct_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @get_oct_char(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 3
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %10 = load i8*, i8** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = call i32 @strncpy(i8* %9, i8* %14, i32 3)
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %17 = call i64 @strtol(i8* %16, i8** %6, i32 8)
  store i64 %17, i64* %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %20 = icmp ugt i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %27
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i8
  ret i8 %34
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
