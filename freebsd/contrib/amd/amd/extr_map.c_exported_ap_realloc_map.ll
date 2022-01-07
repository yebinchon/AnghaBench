; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_exported_ap_realloc_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_exported_ap_realloc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exported_ap_size = common dso_local global i32 0, align 4
@exported_ap = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exported_ap_realloc_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exported_ap_realloc_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @exported_ap_size, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %38

11:                                               ; preds = %6
  %12 = load i32**, i32*** @exported_ap, align 8
  %13 = ptrtoint i32** %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @xrealloc(i32 %13, i32 %17)
  %19 = inttoptr i64 %18 to i32**
  store i32** %19, i32*** @exported_ap, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @exported_ap_size, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %11
  %24 = load i32**, i32*** @exported_ap, align 8
  %25 = load i32, i32* @exported_ap_size, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = bitcast i32** %27 to i8*
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @exported_ap_size, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i8* %28, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %23, %11
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* @exported_ap_size, align 4
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @xrealloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
