; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_tekhex_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_tekhex_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@SEEK_SET = common dso_local global i32 0, align 4
@first_phase = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*)* @tekhex_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tekhex_object_p(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [4 x i8], align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = call i32 (...) @tekhex_init()
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = load i32, i32* @SEEK_SET, align 4
  %8 = call i64 @bfd_seek(%struct.TYPE_7__* %6, i32 0, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i32 @bfd_bread(i8* %11, i32 4, %struct.TYPE_7__* %12)
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32* null, i32** %2, align 8
  br label %49

16:                                               ; preds = %10
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 37
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @ISHEX(i8 signext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @ISHEX(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @ISHEX(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %26, %21, %16
  store i32* null, i32** %2, align 8
  br label %49

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = call i32 @tekhex_mkobject(%struct.TYPE_7__* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = load i32, i32* @first_phase, align 4
  %42 = call i32 @pass_over(%struct.TYPE_7__* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32* null, i32** %2, align 8
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %2, align 8
  br label %49

49:                                               ; preds = %45, %44, %36, %15
  %50 = load i32*, i32** %2, align 8
  ret i32* %50
}

declare dso_local i32 @tekhex_init(...) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ISHEX(i8 signext) #1

declare dso_local i32 @tekhex_mkobject(%struct.TYPE_7__*) #1

declare dso_local i32 @pass_over(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
