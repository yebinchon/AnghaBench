; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elfcore_write_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elfcore_write_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @elfcore_write_note(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %7
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %16, align 8
  br label %26

26:                                               ; preds = %21, %7
  %27 = load i64, i64* %16, align 8
  %28 = add i64 %27, 3
  %29 = and i64 %28, -4
  %30 = add i64 12, %29
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 3
  %33 = and i32 %32, -4
  %34 = sext i32 %33 to i64
  %35 = add i64 %30, %34
  store i64 %35, i64* %17, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %17, align 8
  %41 = add i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8* @realloc(i8* %36, i32 %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8* %48, i8** %18, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %49
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i8*, i8** %18, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %56, %struct.TYPE_2__** %15, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %16, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @H_PUT_32(i32* %57, i32 %59, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @H_PUT_32(i32* %64, i32 %65, i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @H_PUT_32(i32* %70, i32 %71, i32 %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %18, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %26
  %82 = load i8*, i8** %18, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load i64, i64* %16, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memcpy(i8* %82, i8* %83, i32 %85)
  %87 = load i64, i64* %16, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %18, align 8
  br label %90

90:                                               ; preds = %94, %81
  %91 = load i64, i64* %16, align 8
  %92 = and i64 %91, 3
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %18, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %18, align 8
  store i8 0, i8* %95, align 1
  %97 = load i64, i64* %16, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %16, align 8
  br label %90

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %26
  %101 = load i8*, i8** %18, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @memcpy(i8* %101, i8* %102, i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = load i8*, i8** %18, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %18, align 8
  br label %109

109:                                              ; preds = %113, %100
  %110 = load i32, i32* %14, align 4
  %111 = and i32 %110, 3
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i8*, i8** %18, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %18, align 8
  store i8 0, i8* %114, align 1
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %109

118:                                              ; preds = %109
  %119 = load i8*, i8** %9, align 8
  ret i8* %119
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
