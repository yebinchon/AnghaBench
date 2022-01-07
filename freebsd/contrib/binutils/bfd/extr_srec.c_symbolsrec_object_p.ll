; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_symbolsrec_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_symbolsrec_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@SEEK_SET = common dso_local global i32 0, align 4
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@HAS_SYMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*)* @symbolsrec_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @symbolsrec_object_p(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i8], align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = call i32 (...) @srec_init()
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = load i32, i32* @SEEK_SET, align 4
  %9 = call i64 @bfd_seek(%struct.TYPE_10__* %7, i32 0, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32 @bfd_bread(i8* %12, i32 2, %struct.TYPE_10__* %13)
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store i32* null, i32** %2, align 8
  br label %82

17:                                               ; preds = %11
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 36
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 36
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @bfd_error_wrong_format, align 4
  %29 = call i32 @bfd_set_error(i32 %28)
  store i32* null, i32** %2, align 8
  br label %82

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = call i32 @srec_mkobject(%struct.TYPE_10__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i32 @srec_scan(%struct.TYPE_10__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @bfd_release(%struct.TYPE_10__* %56, i8* %60)
  br label %62

62:                                               ; preds = %55, %49, %42
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  store i32* null, i32** %2, align 8
  br label %82

67:                                               ; preds = %38
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @HAS_SYMS, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %2, align 8
  br label %82

82:                                               ; preds = %78, %62, %27, %16
  %83 = load i32*, i32** %2, align 8
  ret i32* %83
}

declare dso_local i32 @srec_init(...) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @srec_mkobject(%struct.TYPE_10__*) #1

declare dso_local i32 @srec_scan(%struct.TYPE_10__*) #1

declare dso_local i32 @bfd_release(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
