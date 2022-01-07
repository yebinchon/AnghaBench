; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_rtx_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_rtx_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"\0A/* Used to implement the RTX_NEXT macro.  */\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"const unsigned char rtx_next[NUM_RTX_CODE] = {\0A\00", align 1
@NUM_RTX_CODE = common dso_local global i32 0, align 4
@rtx_next_new = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"  0,\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"  RTX_HDR_SIZE + %d * sizeof (rtunion),\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_rtx_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rtx_next() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @get_output_file_with_visibility(i32* null)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 (i32, i8*, ...) @oprintf(i32 %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %1, align 4
  %7 = call i32 (i32, i8*, ...) @oprintf(i32 %6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %31, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @NUM_RTX_CODE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load i32*, i32** @rtx_next_new, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = call i32 (i32, i8*, ...) @oprintf(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %30

22:                                               ; preds = %12
  %23 = load i32, i32* %1, align 4
  %24 = load i32*, i32** @rtx_next_new, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @oprintf(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %22, %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load i32, i32* %1, align 4
  %36 = call i32 (i32, i8*, ...) @oprintf(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @get_output_file_with_visibility(i32*) #1

declare dso_local i32 @oprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
