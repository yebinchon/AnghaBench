; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_srcpos.c_srcfile_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_srcpos.c_srcfile_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcfile_state = type { i32, i32, %struct.srcfile_state*, i32, i32, i32 }

@srcfile_depth = common dso_local global i32 0, align 4
@MAX_SRCFILE_DEPTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Includes nested too deeply\00", align 1
@current_srcfile = common dso_local global %struct.srcfile_state* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srcfile_push(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.srcfile_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @srcfile_depth, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @srcfile_depth, align 4
  %6 = sext i32 %4 to i64
  %7 = load i64, i64* @MAX_SRCFILE_DEPTH, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = call %struct.srcfile_state* @xmalloc(i32 32)
  store %struct.srcfile_state* %12, %struct.srcfile_state** %3, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load %struct.srcfile_state*, %struct.srcfile_state** %3, align 8
  %15 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %14, i32 0, i32 3
  %16 = call i32 @srcfile_relative_open(i8* %13, i32* %15)
  %17 = load %struct.srcfile_state*, %struct.srcfile_state** %3, align 8
  %18 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.srcfile_state*, %struct.srcfile_state** %3, align 8
  %20 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @get_dirname(i32 %21)
  %23 = load %struct.srcfile_state*, %struct.srcfile_state** %3, align 8
  %24 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.srcfile_state*, %struct.srcfile_state** @current_srcfile, align 8
  %26 = load %struct.srcfile_state*, %struct.srcfile_state** %3, align 8
  %27 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %26, i32 0, i32 2
  store %struct.srcfile_state* %25, %struct.srcfile_state** %27, align 8
  %28 = load %struct.srcfile_state*, %struct.srcfile_state** %3, align 8
  %29 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.srcfile_state*, %struct.srcfile_state** %3, align 8
  %31 = getelementptr inbounds %struct.srcfile_state, %struct.srcfile_state* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.srcfile_state*, %struct.srcfile_state** %3, align 8
  store %struct.srcfile_state* %32, %struct.srcfile_state** @current_srcfile, align 8
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local %struct.srcfile_state* @xmalloc(i32) #1

declare dso_local i32 @srcfile_relative_open(i8*, i32*) #1

declare dso_local i32 @get_dirname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
