; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldemul.c_ldemul_list_emulation_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldemul.c_ldemul_list_emulation_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 (i32*)* }

@ld_emulations = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s: \0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"  no emulation specific options.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldemul_list_emulation_options(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @ld_emulations, align 8
  store %struct.TYPE_3__** %6, %struct.TYPE_3__*** %3, align 8
  br label %7

7:                                                ; preds = %30, %1
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %17 = icmp ne i32 (i32*)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32 (i32*)*, i32 (i32*)** %25, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 %26(i32* %27)
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %11
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i32 1
  store %struct.TYPE_3__** %32, %struct.TYPE_3__*** %3, align 8
  br label %7

33:                                               ; preds = %7
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* %38)
  br label %40

40:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
