; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_get_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cinc = common dso_local global i64 0, align 8
@cptr = common dso_local global i32* null, align 8
@NUL = common dso_local global i32 0, align 4
@cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_name() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @cinc, align 8
  %2 = load i32*, i32** @cptr, align 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %1, align 4
  %6 = call i64 @IS_IDENT(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @cachec(i32 %9)
  br label %11

11:                                               ; preds = %8
  %12 = load i32*, i32** @cptr, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** @cptr, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %1, align 4
  br label %4

15:                                               ; preds = %4
  %16 = load i32, i32* @NUL, align 4
  %17 = call i32 @cachec(i32 %16)
  %18 = load i32, i32* @cache, align 4
  %19 = call i64 @is_reserved(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @cache, align 4
  %23 = call i32 @used_reserved(i32 %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* @cache, align 4
  %26 = call i32* @lookup(i32 %25)
  ret i32* %26
}

declare dso_local i64 @IS_IDENT(i32) #1

declare dso_local i32 @cachec(i32) #1

declare dso_local i64 @is_reserved(i32) #1

declare dso_local i32 @used_reserved(i32) #1

declare dso_local i32* @lookup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
