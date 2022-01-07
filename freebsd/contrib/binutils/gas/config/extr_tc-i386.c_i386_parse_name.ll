; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_parse_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@O_register = common dso_local global i32 0, align 4
@i386_regtab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386_parse_name(i8* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** @input_line_pointer, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %9, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @parse_register(i8* %14, i8** @input_line_pointer)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** @input_line_pointer, align 8
  %21 = icmp ule i8* %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i8*, i8** @input_line_pointer, align 8
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %7, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i8*, i8** @input_line_pointer, align 8
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* @O_register, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @i386_regtab, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  store i32 1, i32* %4, align 4
  br label %40

37:                                               ; preds = %18, %3
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** @input_line_pointer, align 8
  %39 = load i8*, i8** %9, align 8
  store i8 0, i8* %39, align 1
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %22
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32* @parse_register(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
