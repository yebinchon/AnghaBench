; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_emutls.c_emutls_memalign_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_emutls.c_emutls_memalign_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTRA_ALIGN_PTR_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @emutls_memalign_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emutls_memalign_alloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = sub i64 %7, 1
  %9 = add i64 %8, 8
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @abort() #3
  unreachable

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub i64 %20, 1
  %22 = add i64 %21, 8
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64, i64* %3, align 8
  %26 = sub i64 %25, 1
  %27 = xor i64 %26, -1
  %28 = and i64 %24, %27
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to i8**
  %33 = getelementptr inbounds i8*, i8** %32, i64 -1
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %5, align 8
  ret i8* %34
}

declare dso_local i64 @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
