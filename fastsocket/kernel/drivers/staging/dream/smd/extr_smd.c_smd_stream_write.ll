; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_stream_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_stream_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @smd_stream_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smd_stream_write(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %53, %19
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ch_write_buffer(i32* %21, i8** %8)
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ch_is_open(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %54

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @memcpy(i8* %36, i8* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ch_write_done(i32* %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %54

53:                                               ; preds = %35
  br label %20

54:                                               ; preds = %52, %28, %20
  %55 = call i32 (...) @notify_other_smd()
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ch_write_buffer(i32*, i8**) #1

declare dso_local i32 @ch_is_open(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ch_write_done(i32*, i32) #1

declare dso_local i32 @notify_other_smd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
