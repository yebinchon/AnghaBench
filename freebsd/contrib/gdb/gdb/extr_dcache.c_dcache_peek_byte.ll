; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_peek_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_peek_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcache_block = type { i64*, i8* }

@ENTRY_BAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @dcache_peek_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcache_peek_byte(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dcache_block*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.dcache_block* @dcache_hit(i32* %9, i32 %10)
  store %struct.dcache_block* %11, %struct.dcache_block** %8, align 8
  %12 = load %struct.dcache_block*, %struct.dcache_block** %8, align 8
  %13 = icmp ne %struct.dcache_block* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.dcache_block* @dcache_alloc(i32* %15, i32 %16)
  store %struct.dcache_block* %17, %struct.dcache_block** %8, align 8
  %18 = load %struct.dcache_block*, %struct.dcache_block** %8, align 8
  %19 = icmp ne %struct.dcache_block* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %48

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %3
  %23 = load %struct.dcache_block*, %struct.dcache_block** %8, align 8
  %24 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @XFORM(i32 %26)
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ENTRY_BAD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.dcache_block*, %struct.dcache_block** %8, align 8
  %35 = call i32 @dcache_read_line(i32* %33, %struct.dcache_block* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %48

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.dcache_block*, %struct.dcache_block** %8, align 8
  %41 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @XFORM(i32 %43)
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %7, align 8
  store i8 %46, i8* %47, align 1
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %37, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.dcache_block* @dcache_hit(i32*, i32) #1

declare dso_local %struct.dcache_block* @dcache_alloc(i32*, i32) #1

declare dso_local i64 @XFORM(i32) #1

declare dso_local i32 @dcache_read_line(i32*, %struct.dcache_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
