; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_ispell_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_ispell_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"/tmp/ee.XXXXXXXX\00", align 1
@com_win = common dso_local global i32 0, align 4
@create_file_fail_msg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ispell %s\00", align 1
@tmp_file = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@recv_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ispell_op() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = call i64 (...) @restrict_mode()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %42

8:                                                ; preds = %0
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %12 = call i32 @mkstemp(i8* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load i32, i32* @com_win, align 4
  %17 = call i32 @wmove(i32 %16, i32 0, i32 0)
  %18 = load i32, i32* @com_win, align 4
  %19 = load i32, i32* @create_file_fail_msg, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @wprintw(i32 %18, i32 %19, i8* %20)
  %22 = load i32, i32* @com_win, align 4
  %23 = call i32 @wrefresh(i32 %22)
  br label %42

24:                                               ; preds = %8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @write_file(i8* %27, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %35 = call i32 @sh_command(i8* %34)
  %36 = call i32 (...) @delete_text()
  %37 = load i8*, i8** %2, align 8
  store i8* %37, i8** @tmp_file, align 8
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* @recv_file, align 4
  %39 = call i32 (...) @check_fp()
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @unlink(i8* %40)
  br label %42

42:                                               ; preds = %7, %15, %30, %24
  ret void
}

declare dso_local i64 @restrict_mode(...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wprintw(i32, i32, i8*) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @write_file(i8*, i32) #1

declare dso_local i32 @sh_command(i8*) #1

declare dso_local i32 @delete_text(...) #1

declare dso_local i32 @check_fp(...) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
