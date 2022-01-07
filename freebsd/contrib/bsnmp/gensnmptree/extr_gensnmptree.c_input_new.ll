; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_input_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_input_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32, i8*, i8*, i32* }

@inputs = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@input = common dso_local global %struct.input* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @input_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_new(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call %struct.input* @xalloc(i32 32)
  store %struct.input* %8, %struct.input** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.input*, %struct.input** %7, align 8
  %11 = getelementptr inbounds %struct.input, %struct.input* %10, i32 0, i32 3
  store i32* %9, i32** %11, align 8
  %12 = load %struct.input*, %struct.input** %7, align 8
  %13 = getelementptr inbounds %struct.input, %struct.input* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @savestr(i8* %14)
  %16 = load %struct.input*, %struct.input** %7, align 8
  %17 = getelementptr inbounds %struct.input, %struct.input* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @savestr(i8* %18)
  %20 = load %struct.input*, %struct.input** %7, align 8
  %21 = getelementptr inbounds %struct.input, %struct.input* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.input*, %struct.input** %7, align 8
  %23 = load i32, i32* @link, align 4
  %24 = call i32 @LIST_INSERT_HEAD(i32* @inputs, %struct.input* %22, i32 %23)
  %25 = load %struct.input*, %struct.input** %7, align 8
  store %struct.input* %25, %struct.input** @input, align 8
  ret void
}

declare dso_local %struct.input* @xalloc(i32) #1

declare dso_local i8* @savestr(i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.input*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
