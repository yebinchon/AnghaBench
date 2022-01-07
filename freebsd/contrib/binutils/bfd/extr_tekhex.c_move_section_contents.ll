; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_move_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_move_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.data_struct = type { i32*, i8* }

@CHUNK_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*, i64, i64, i64)* @move_section_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_section_contents(i32* %0, %struct.TYPE_3__* %1, i8* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.data_struct*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %14, align 8
  store i64 1, i64* %15, align 8
  store %struct.data_struct* null, %struct.data_struct** %16, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @BFD_ASSERT(i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  br label %27

27:                                               ; preds = %88, %6
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %93

30:                                               ; preds = %27
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @CHUNK_MASK, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @CHUNK_MASK, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %18, align 8
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %17, align 8
  %44 = call %struct.data_struct* @find_chunk(i32* %42, i64 %43)
  store %struct.data_struct* %44, %struct.data_struct** %16, align 8
  br label %45

45:                                               ; preds = %41, %30
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load %struct.data_struct*, %struct.data_struct** %16, align 8
  %50 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %18, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.data_struct*, %struct.data_struct** %16, align 8
  %58 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %18, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %14, align 8
  store i8 %62, i8* %63, align 1
  br label %66

64:                                               ; preds = %48
  %65 = load i8*, i8** %14, align 8
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %64, %56
  br label %85

67:                                               ; preds = %45
  %68 = load i8*, i8** %14, align 8
  %69 = load i8, i8* %68, align 1
  %70 = load %struct.data_struct*, %struct.data_struct** %16, align 8
  %71 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %18, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 %69, i8* %74, align 1
  %75 = load i8*, i8** %14, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load %struct.data_struct*, %struct.data_struct** %16, align 8
  %81 = getelementptr inbounds %struct.data_struct, %struct.data_struct* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %18, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %67, %66
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %14, align 8
  br label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %11, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %27

93:                                               ; preds = %27
  ret void
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.data_struct* @find_chunk(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
