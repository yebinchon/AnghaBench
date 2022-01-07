; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_frame_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_frame_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"EtherII\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"802.2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SNAP\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"802.3\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"802.2TR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ipx_frame_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @ntohs(i32 %4)
  switch i32 %5, label %11 [
    i32 130, label %6
    i32 132, label %7
    i32 129, label %8
    i32 131, label %9
    i32 128, label %10
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %11

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %11

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %11

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %11

11:                                               ; preds = %1, %10, %9, %8, %7, %6
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
