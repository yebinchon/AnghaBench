; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_ustar_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_ustar_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@BLKMULT = common dso_local global i32 0, align 4
@TMAGIC = common dso_local global i32 0, align 4
@TMAGLEN = common dso_local global i64 0, align 8
@OCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ustar_id(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BLKMULT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %44

22:                                               ; preds = %11
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TMAGIC, align 4
  %27 = load i64, i64* @TMAGLEN, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i64 @strncmp(i32 %25, i32 %26, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OCT, align 4
  %37 = call i64 @asc_ul(i32 %35, i32 4, i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @BLKMULT, align 4
  %40 = call i64 @tar_chksm(i8* %38, i32 %39)
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %31, %21, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i64 @asc_ul(i32, i32, i32) #1

declare dso_local i64 @tar_chksm(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
