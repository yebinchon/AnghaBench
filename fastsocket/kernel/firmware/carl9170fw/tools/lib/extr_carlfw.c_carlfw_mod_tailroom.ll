; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_mod_tailroom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c_carlfw_mod_tailroom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @carlfw_mod_tailroom(%struct.carlfw* %0, i64 %1) #0 {
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
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %23 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i8* @realloc(i8* %25, i64 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i8* @ERR_PTR(i32 %32)
  store i8* %33, i8** %3, align 8
  br label %51

34:                                               ; preds = %21
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %37 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %41 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load %struct.carlfw*, %struct.carlfw** %4, align 8
  %44 = getelementptr inbounds %struct.carlfw, %struct.carlfw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %34, %30, %17
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i32 @carl9170fw_size_check(i64) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
