; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_md5.c_md5_read_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_md5.c_md5_read_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @md5_read_ctx(%struct.md5_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.md5_ctx*, align 8
  %4 = alloca i8*, align 8
  store %struct.md5_ctx* %0, %struct.md5_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @SWAP(i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SWAP(i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SWAP(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SWAP(i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %29, i32* %32, align 4
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

declare dso_local i32 @SWAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
