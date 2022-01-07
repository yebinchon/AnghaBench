; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_md5.c_md5_init_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_md5.c_md5_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i64, i64*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5_init_ctx(%struct.md5_ctx* %0) #0 {
  %2 = alloca %struct.md5_ctx*, align 8
  store %struct.md5_ctx* %0, %struct.md5_ctx** %2, align 8
  %3 = load %struct.md5_ctx*, %struct.md5_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i32 0, i32 5
  store i8* inttoptr (i64 1732584193 to i8*), i8** %4, align 8
  %5 = load %struct.md5_ctx*, %struct.md5_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %5, i32 0, i32 4
  store i8* inttoptr (i64 4023233417 to i8*), i8** %6, align 8
  %7 = load %struct.md5_ctx*, %struct.md5_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %7, i32 0, i32 3
  store i8* inttoptr (i64 2562383102 to i8*), i8** %8, align 8
  %9 = load %struct.md5_ctx*, %struct.md5_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %9, i32 0, i32 2
  store i8* inttoptr (i64 271733878 to i8*), i8** %10, align 8
  %11 = load %struct.md5_ctx*, %struct.md5_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.md5_ctx*, %struct.md5_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.md5_ctx*, %struct.md5_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
