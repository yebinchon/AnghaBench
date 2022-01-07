; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_source_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_source_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"source command requires pathname of file to source.\00", align 1
@xfree = common dso_local global i32 0, align 4
@FOPEN_RT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @source_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @tilde_expand(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* @xfree, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct.cleanup* @make_cleanup(i32 %16, i8* %17)
  store %struct.cleanup* %18, %struct.cleanup** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @FOPEN_RT, align 4
  %21 = call i32* @fopen(i8* %19, i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @perror_with_name(i8* %28)
  br label %31

30:                                               ; preds = %24
  br label %38

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @script_from_file(i32* %33, i8* %34)
  %36 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %37 = call i32 @do_cleanups(%struct.cleanup* %36)
  br label %38

38:                                               ; preds = %32, %30
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @tilde_expand(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @script_from_file(i32*, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
