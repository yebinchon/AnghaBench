; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_find_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_find_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i64, i32, %struct.symbol* }

@HASH_BUCKETS = common dso_local global i64 0, align 8
@symtab = common dso_local global %struct.symbol** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @find_symbol(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @crc32(i8* %7)
  %9 = load i64, i64* @HASH_BUCKETS, align 8
  %10 = urem i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load %struct.symbol**, %struct.symbol*** @symtab, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.symbol*, %struct.symbol** %11, i64 %12
  %14 = load %struct.symbol*, %struct.symbol** %13, align 8
  store %struct.symbol* %14, %struct.symbol** %6, align 8
  br label %15

15:                                               ; preds = %40, %2
  %16 = load %struct.symbol*, %struct.symbol** %6, align 8
  %17 = icmp ne %struct.symbol* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.symbol*, %struct.symbol** %6, align 8
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @map_to_ns(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @map_to_ns(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.symbol*, %struct.symbol** %6, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i8* %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.symbol*, %struct.symbol** %6, align 8
  %35 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %44

39:                                               ; preds = %33, %26, %18
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.symbol*, %struct.symbol** %6, align 8
  %42 = getelementptr inbounds %struct.symbol, %struct.symbol* %41, i32 0, i32 3
  %43 = load %struct.symbol*, %struct.symbol** %42, align 8
  store %struct.symbol* %43, %struct.symbol** %6, align 8
  br label %15

44:                                               ; preds = %38, %15
  %45 = load %struct.symbol*, %struct.symbol** %6, align 8
  ret %struct.symbol* %45
}

declare dso_local i64 @crc32(i8*) #1

declare dso_local i64 @map_to_ns(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
