; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_mod_headroom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_mod_headroom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @carlfw_mod_headroom(%struct.carlfw* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.carlfw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.carlfw* %0, %struct.carlfw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %9 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @carl9170fw_size_check(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  store i8* %20, i8** %3, align 8
  br label %70

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %26 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %30 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @memmove(i8* %28, i8* %34, i64 %35)
  br label %37

37:                                               ; preds = %24, %21
  %38 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i8* @carlfw_mod_tailroom(%struct.carlfw* %38, i64 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @IS_ERR_OR_NULL(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %3, align 8
  br label %70

46:                                               ; preds = %37
  %47 = load i64, i64* %5, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %51 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %57 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = sub i64 %61, %62
  %64 = call i32 @memmove(i8* %55, i8* %60, i64 %63)
  br label %65

65:                                               ; preds = %49, %46
  %66 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %67 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %65, %44, %17
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i32 @carl9170fw_size_check(i64) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @carlfw_mod_tailroom(%struct.carlfw*, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
