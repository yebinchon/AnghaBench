; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_misc.c_check_special_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_misc.c_check_special_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MISC_FMT_PRESERVE_ARGV0 = common dso_local global i32 0, align 4
@MISC_FMT_OPEN_BINARY = common dso_local global i32 0, align 4
@MISC_FMT_CREDENTIALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_3__*)* @check_special_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_special_flags(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %41 [
    i32 80, label %15
    i32 79, label %23
    i32 67, label %31
  ]

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  %18 = load i32, i32* @MISC_FMT_PRESERVE_ARGV0, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %42

23:                                               ; preds = %11
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* @MISC_FMT_OPEN_BINARY, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %42

31:                                               ; preds = %11
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  %34 = load i32, i32* @MISC_FMT_CREDENTIALS, align 4
  %35 = load i32, i32* @MISC_FMT_OPEN_BINARY, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %42

41:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %31, %23, %15
  br label %8

43:                                               ; preds = %8
  %44 = load i8*, i8** %5, align 8
  ret i8* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
