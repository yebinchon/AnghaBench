; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_depend.c_print_dependencies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_depend.c_print_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dependency = type { i32, %struct.dependency* }

@dep_file = common dso_local global i32* null, align 8
@FOPEN_WT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't open `%s' for writing\00", align 1
@column = common dso_local global i64 0, align 8
@out_file_name = common dso_local global i32 0, align 4
@dep_chain = common dso_local global %struct.dependency* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"can't close `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_dependencies() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.dependency*, align 8
  %3 = load i32*, i32** @dep_file, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %44

6:                                                ; preds = %0
  %7 = load i32*, i32** @dep_file, align 8
  %8 = load i32, i32* @FOPEN_WT, align 4
  %9 = call i32* @fopen(i32* %7, i32 %8)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** @dep_file, align 8
  %15 = call i32 @as_warn(i32 %13, i32* %14)
  br label %44

16:                                               ; preds = %6
  store i64 0, i64* @column, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @out_file_name, align 4
  %19 = call i32 @wrap_output(i32* %17, i32 %18, i8 signext 58)
  %20 = load %struct.dependency*, %struct.dependency** @dep_chain, align 8
  store %struct.dependency* %20, %struct.dependency** %2, align 8
  br label %21

21:                                               ; preds = %30, %16
  %22 = load %struct.dependency*, %struct.dependency** %2, align 8
  %23 = icmp ne %struct.dependency* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32*, i32** %1, align 8
  %26 = load %struct.dependency*, %struct.dependency** %2, align 8
  %27 = getelementptr inbounds %struct.dependency, %struct.dependency* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @wrap_output(i32* %25, i32 %28, i8 signext 32)
  br label %30

30:                                               ; preds = %24
  %31 = load %struct.dependency*, %struct.dependency** %2, align 8
  %32 = getelementptr inbounds %struct.dependency, %struct.dependency* %31, i32 0, i32 1
  %33 = load %struct.dependency*, %struct.dependency** %32, align 8
  store %struct.dependency* %33, %struct.dependency** %2, align 8
  br label %21

34:                                               ; preds = %21
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @putc(i8 signext 10, i32* %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i64 @fclose(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** @dep_file, align 8
  %43 = call i32 @as_warn(i32 %41, i32* %42)
  br label %44

44:                                               ; preds = %5, %12, %40, %34
  ret void
}

declare dso_local i32* @fopen(i32*, i32) #1

declare dso_local i32 @as_warn(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @wrap_output(i32*, i32, i8 signext) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
