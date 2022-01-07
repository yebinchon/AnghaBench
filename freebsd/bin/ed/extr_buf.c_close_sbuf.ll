; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_close_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_close_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sfp = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@sfn = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot close temp file\00", align 1
@errmsg = common dso_local global i8* null, align 8
@ERR = common dso_local global i32 0, align 4
@seek_write = common dso_local global i64 0, align 8
@sfseek = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_sbuf() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @sfp, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  %5 = load i32*, i32** @sfp, align 8
  %6 = call i64 @fclose(i32* %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** @sfn, align 8
  %11 = load i32, i32* @errno, align 4
  %12 = call i8* @strerror(i32 %11)
  %13 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %12)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  %14 = load i32, i32* @ERR, align 4
  store i32 %14, i32* %1, align 4
  br label %19

15:                                               ; preds = %4
  store i32* null, i32** @sfp, align 8
  %16 = load i8*, i8** @sfn, align 8
  %17 = call i32 @unlink(i8* %16)
  br label %18

18:                                               ; preds = %15, %0
  store i64 0, i64* @seek_write, align 8
  store i64 0, i64* @sfseek, align 8
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %8
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
