; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_cmp_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_cmp_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_name(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.sym_entry*
  %15 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.sym_entry*
  %22 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to %struct.sym_entry*
  %29 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.sym_entry*
  %33 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @strcmp(i32* %30, i32* %34)
  ret i32 %35
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
