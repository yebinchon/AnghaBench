; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_cmp_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_cmp_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_entry = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_size(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sym_entry*, align 8
  %7 = alloca %struct.sym_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sym_entry*
  store %struct.sym_entry* %9, %struct.sym_entry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sym_entry*
  store %struct.sym_entry* %11, %struct.sym_entry** %7, align 8
  %12 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %13 = icmp ne %struct.sym_entry* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %17 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %23 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %29 = icmp ne %struct.sym_entry* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %33 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %39 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %45 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %50 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %2
  %56 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %57 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %60 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @strcmp(i32* %58, i32* %61)
  store i32 %62, i32* %3, align 4
  br label %76

63:                                               ; preds = %2
  %64 = load %struct.sym_entry*, %struct.sym_entry** %6, align 8
  %65 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sym_entry*, %struct.sym_entry** %7, align 8
  %70 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %68, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %63, %55
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
