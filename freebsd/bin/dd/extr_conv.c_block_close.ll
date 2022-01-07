; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_conv.c_block_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_conv.c_block_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }

@in = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@st = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@out = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ctab = common dso_local global i8* null, align 8
@cbsz = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @block_close() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %35

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 0), align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 0), align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 1), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %11 = call i32 @memmove(i64 %6, i64 %9, i64 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 1), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %14 = add nsw i64 %12, %13
  %15 = load i8*, i8** @ctab, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** @ctab, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 32
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 32, %22 ]
  %25 = trunc i32 %24 to i8
  %26 = load i64, i64* @cbsz, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %28 = sub nsw i64 %26, %27
  %29 = call i32 @memset(i64 %14, i8 signext %25, i64 %28)
  %30 = load i64, i64* @cbsz, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 0), align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 0), align 8
  br label %35

35:                                               ; preds = %23, %0
  ret void
}

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @memset(i64, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
