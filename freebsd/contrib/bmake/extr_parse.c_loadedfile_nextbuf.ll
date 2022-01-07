; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_loadedfile_nextbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_loadedfile_nextbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loadedfile = type { i64, i8*, i64 }

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @loadedfile_nextbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @loadedfile_nextbuf(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.loadedfile*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.loadedfile*
  store %struct.loadedfile* %8, %struct.loadedfile** %6, align 8
  %9 = load %struct.loadedfile*, %struct.loadedfile** %6, align 8
  %10 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %25

14:                                               ; preds = %2
  %15 = load i64, i64* @TRUE, align 8
  %16 = load %struct.loadedfile*, %struct.loadedfile** %6, align 8
  %17 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load %struct.loadedfile*, %struct.loadedfile** %6, align 8
  %19 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %5, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.loadedfile*, %struct.loadedfile** %6, align 8
  %23 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
