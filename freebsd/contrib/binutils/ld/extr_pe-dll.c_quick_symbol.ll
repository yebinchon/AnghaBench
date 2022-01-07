; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_quick_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_quick_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32* }

@symtab = common dso_local global %struct.TYPE_4__** null, align 8
@symptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, i32*, i32, i32)* @quick_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quick_symbol(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 %18, %20
  %22 = load i8*, i8** %11, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = add nsw i64 %21, %23
  %25 = add nsw i64 %24, 1
  %26 = call i8* @xmalloc(i64 %25)
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = load i8*, i8** %16, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strcat(i8* %30, i8* %31)
  %33 = load i8*, i8** %16, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @strcat(i8* %33, i8* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call %struct.TYPE_4__* @bfd_make_empty_symbol(i32* %36)
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %15, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @symtab, align 8
  %52 = load i32, i32* @symptr, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @symptr, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %54
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %55, align 8
  ret void
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @bfd_make_empty_symbol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
