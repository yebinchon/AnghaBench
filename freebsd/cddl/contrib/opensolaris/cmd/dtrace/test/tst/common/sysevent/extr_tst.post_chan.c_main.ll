; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/sysevent/extr_tst.post_chan.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/sysevent/extr_tst.post_chan.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"channel_dtest\00", align 1
@EVCH_CREAT = common dso_local global i32 0, align 4
@EVCH_HOLD_PEND = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to bind to sysevent channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"class_dtest\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"subclass_dtest\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"vendor_dtest\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"publisher_dtest\00", align 1
@EVCH_SLEEP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to publisth sysevent\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @EVCH_CREAT, align 4
  %8 = load i32, i32* @EVCH_HOLD_PEND, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @sysevent_evc_bind(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32** %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @EVCH_SLEEP, align 4
  %19 = call i64 @sysevent_evc_publish(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @sysevent_evc_unbind(i32* %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %28

26:                                               ; preds = %16
  %27 = call i32 @sleep(i32 1)
  br label %16

28:                                               ; preds = %21, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @sysevent_evc_bind(i8*, i32**, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @sysevent_evc_publish(i32*, i8*, i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @sysevent_evc_unbind(i32*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
