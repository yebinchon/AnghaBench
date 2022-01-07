; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_debug_readchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_debug_readchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"[%02x]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Read -->\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"<--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @debug_readchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_readchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8], align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @monitor_readchar()
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* @remote_debug, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  %15 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %28

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %27

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %26, align 1
  br label %27

27:                                               ; preds = %22, %19
  br label %28

28:                                               ; preds = %27, %11
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %30 = call i32 @puts_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @monitor_readchar(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @puts_debug(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
