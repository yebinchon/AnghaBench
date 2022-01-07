; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pex_get_status(%struct.pex_obj* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pex_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pex_obj* %0, %struct.pex_obj** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %11 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %16 = call i32 @pex_get_status_and_time(%struct.pex_obj* %15, i32 0, i8** %8, i32* %9)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %55

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %23 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %29 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %35 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(i32* %32, i32 0, i32 %40)
  %42 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %43 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %26, %20
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %48 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i32* %46, i32* %49, i32 %53)
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %45, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @pex_get_status_and_time(%struct.pex_obj*, i32, i8**, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
