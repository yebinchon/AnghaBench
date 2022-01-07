; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_md_apply_fix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_md_apply_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@stdoutput = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_apply_fix(%struct.TYPE_5__* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %47 [
    i32 128, label %26
    i32 131, label %32
    i32 130, label %37
    i32 129, label %42
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* @stdoutput, align 4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @bfd_put_8(i32 %27, i8 zeroext %29, i8* %30)
  br label %49

32:                                               ; preds = %3
  %33 = load i32, i32* @stdoutput, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @bfd_put_16(i32 %33, i64 %34, i8* %35)
  br label %49

37:                                               ; preds = %3
  %38 = load i32, i32* @stdoutput, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @bfd_put_32(i32 %38, i64 %39, i8* %40)
  br label %49

42:                                               ; preds = %3
  %43 = load i32, i32* @stdoutput, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @bfd_put_32(i32 %43, i64 %44, i8* %45)
  br label %49

47:                                               ; preds = %3
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %42, %37, %32, %26
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %56, %49
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @S_GET_SEGMENT(i32* %77)
  %79 = load i64, i64* %6, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %74, %69, %64
  ret void
}

declare dso_local i32 @bfd_put_8(i32, i8 zeroext, i8*) #1

declare dso_local i32 @bfd_put_16(i32, i64, i8*) #1

declare dso_local i32 @bfd_put_32(i32, i64, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
